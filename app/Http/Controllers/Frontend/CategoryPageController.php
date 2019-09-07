<?php
// $data = App::call('App\Http\Controllers\Admin\ArticleController@test');
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\AdminModel\Article;
use App\AdminModel\Content;
use App\AdminModel\Category;
use Illuminate\Support\Str;
use Jenssegers\Agent\Agent;
use App\AdminModel\Language;
use App;
use MetaTag;
use Debugbar;

class CategoryPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($content='', $category='')
    {
        
        $agent = new Agent();
        $device = $agent->isMobile();
        MetaTag::set('title', 'Sub Category');     
        MetaTag::set('description', 'All about this detail page');
        MetaTag::set('image', asset('images/detail-logo.png'));
        
        $locale = App::getLocale();
        $language = Language::where('alias',$locale)->get();
        $content = Content::where('status','1')->where('url', '=', $content)->get();
        if(count($content)==0){
            return abort(404);
        }
        if($category != ''){
            $category = Category::where('status','1')->where('url', '=', $category)->get();
            if(count($category)==0){
                return abort(404);   
            }    
        }

        $articles = array();
        $recentArticles = $this->recentArticles();
        $trendingArticles = $this->trendingArticles();
        if(count($content)>0){
             if($category !='' && count($category)>0){
$articles = Article::where('status','1')->where('category_id','=',$category[0]->id)->where('content_id','=',$content[0]->id)->where('language_id',$language[0]->id)->with('author','content','category','language')->paginate(8);
                return view('frontend.content.category.subCatContent',compact('articles','recentArticles','trendingArticles','device'));    
            }else{
                $articles = Article::where('status','1')->where('content_id','=',$content[0]->id)->where('language_id',$language[0]->id)->with('author','content','category','language')->paginate(8);
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
    public function show($content, $category, $alias, $id )
    {
        $locale = App::getLocale();
        $alias = str_replace(" ","-",$alias);
        $language = Language::where('alias',$locale)->get();
        $content = Content::where('status','1')->where('url', '=', $content)->get();
        if(count($content)==0){
            return abort(404);
        }
        if($category != ''){
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
        $recentArticles = $this->recentArticles();
        $trendingArticles = $this->trendingArticles();
        if(Str::lower($articles->alias) == Str::lower($alias)){
            return view('frontend.content.category.singleArticle',compact('articles','recentArticles','trendingArticles'));
        }else{
            return redirect()->route('single-article',[$category, $subcategory, $articles->alias, $id]);
        }
    }

    public function recentArticles(){
        $recentArticles = Article::where('status','1')->where('recent','1')->take(5)->get();
        return view('frontend.content.category.recentArticle',compact('recentArticles'));
    }

    public function trendingArticles(){
        $trendingArticles =Article::where('status','1')->where('trending','1')->take(5)->get();
        return view('frontend.content.category.trendingArticle',compact('trendingArticles'));
    }

    
}
