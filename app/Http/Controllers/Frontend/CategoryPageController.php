<?php
// $data = App::call('App\Http\Controllers\Admin\ArticleController@test');
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App;
use App\Article;
use App\Contenttype as Content;
use App\Category;
use App\Language;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Lang;
use Jenssegers\Agent\Agent;
use MetaTag;

class CategoryPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $agent = new Agent();
        $device = $agent->isMobile();
        $parameters = $request->route()->parameters();
        foreach ($parameters as $key => $value) {
            $$key = $value;
        }
        $locale = str_replace('/', '', $request->route()->getPrefix());
        if(isset($content)){
            if($content != ''){
                $content = Content::where('status','1')->where('url', '=', $content)->get();
            }    
        }
        if(isset($locale) && !empty($locale)){ 
            $language = Language::where('alias',$locale)->get();
        }else{
            $locale = 'en';
            $language = Language::where('alias',$locale)->get();
        }
        
        if(count($content)==0){
            return abort(404);
        }
        if(isset($category)){
            if($category != ''){
                $category = Category::where('status','1')->where('url', '=', $category)->get();
                if(count($category) ==0){
                    return abort(404);
                }
            }
        }
        $articles = array();
        $recentArticles = $this->recentArticles();
        $trendingArticles = $this->trendingArticles();
        if(count($content) >0 ){
             if(!empty($category) && count($category)>0){
                $articles = Article::where('status','1')->where('category_id','=',$category[0]->id)->where('content_id','=',$content[0]->id)->where('language_id','=',$language[0]->id)->with('author','content','category','language')->paginate(8);
                return view('frontend.content.category.subCatContent',compact('articles','recentArticles','trendingArticles','device'));    
            }else{
                $articles = Article::where('status','1')->where('content_id','=',$content[0]->id)->where('language_id',$language[0]->id)->with('author','content')->paginate(8);
                return view('frontend.content.category.mainContent',compact('articles','recentArticles','trendingArticles','device'));
            }
        }else{
           return abort(404); 
        }
        return view('frontend.content.category.mainContent',compact('articles','recentArticles','trendingArticles','device'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $parameters = $request->route()->parameters();
        foreach ($parameters as $key => $value) {
            $$key = $value;
        }
        $locale = str_replace('/', '', $request->route()->getPrefix());
        $alias = str_replace(" ","-",$alias);
        if(isset($locale) && !empty($locale)){
            $language = Language::where('alias',$locale)->get();
        }else{
            $locale = 'en';
            $language = Language::where('alias',$locale)->get();
        }
        $content = Content::where('status','1')->where('url', '=', $content)->get();
        if(count($content)==0){
            return abort(404);
        }
        if(!empty($category)){
            $category = Category::where('status','1')->where('url', '=', $category)->get();
            if(count($category)==0){
                return abort(404);   
            }    
        }
        if(count($content)>0){
            if($category !='' && count($category)>0){
                $articles = Article::where('status','1')->where('category_id','=',$category[0]->id)->where('content_id','=',$content[0]->id)->where('language_id',$language[0]->id)->with('author','content','category','language')->findOrFail($id);
            }
        }
        $recentArticles = $this->recentArticles($articles->id);
        $trendingArticles = $this->trendingArticles($articles->id);
        if(Str::lower($articles->alias) == Str::lower($alias)){
            return view('frontend.content.category.singleArticle',compact('articles','recentArticles','trendingArticles'));
        }else{
            return redirect()->route('single-article',[$category, $subcategory, $articles->alias, $id]);
        }
    }

    public function recentArticles($id=null){
        $locale = App::getLocale();
        $language = Language::where('alias',$locale)->get();
        $recentArticles = Article::where('status','1')->where('language_id','=',$language[0]->id)->where('recent','1')->where('id','!=',$id)->take(5)->get();
        return view('frontend.content.category.recentArticle',compact('recentArticles'));
    }

    public function trendingArticles($id=null){
        $locale = App::getLocale();
        $language = Language::where('alias',$locale)->get();
        $trendingArticles = Article::where('status','1')->where('language_id','=',$language[0]->id)->where('trending','1')->where('id','!=',$id)->take(5)->get();
        return view('frontend.content.category.trendingArticle',compact('trendingArticles'));
    }

    public function about(){
        $locale = App::getLocale();
        return view('frontend.about');
    }

    public function contact(){
        $locale = App::getLocale();
        return view('frontend.contact');
    }

}
