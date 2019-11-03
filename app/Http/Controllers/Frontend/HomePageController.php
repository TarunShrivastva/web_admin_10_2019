<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\FirstModule;
use App\SecondModule;
use App\ThirdModule;
use App\Article;
use App\Contenttype as Content;
use App\NewsLetter;
use App;

class HomePageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $locale = str_replace('/', '', $request->route()->getPrefix());
        App::setLocale($locale);
        $homeRecentSection = $this->homeRecentSection();
        $homeLatestSection = $this->homeLatestSection();
        $homePopularSection = $this->homePopularSection();
        return view('frontend.content.home.home',compact('firstModule','homeRecentSection','homeLatestSection','homePopularSection'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function homeRecentSection()
    {
        $firstModules = FirstModule::where('language_id','=','1')->where('status','1')->orderBy('order')->limit(4)->get()->toArray();
        foreach ($firstModules as $key => $value){
            $article = Article::where('status','1')->find($value['article_id']);
            $firstModules[$key]['alias'] = $article->alias;
            $firstModules[$key]['image'] = $article->image;
            $firstModules[$key]['title'] = $article->title;
            $firstModules[$key]['description'] = $article->description;
            $firstModules[$key]['content'] = $article->content['url'];
            $firstModules[$key]['category'] = $article->category['url'];
        }
        $trendingArticles = $this->trendingArticles();
        return view('frontend.content.home.homeRecentSection',compact('firstModules','trendingArticles'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function homeLatestSection()
    {
        $secondModules = SecondModule::where('language_id','=','1')->where('status','1')->orderBy('order')->get()->toArray();
        foreach ($secondModules as $key => $value){
            $article = Article::where('status','1')->findOrFail($value['article_id']);
                $secondModules[$key]['alias'] = $article->alias;
                $secondModules[$key]['image'] = $article->image;
                $secondModules[$key]['title'] = $article->title;
                $secondModules[$key]['description'] = $article->description;
                $secondModules[$key]['content'] = $article->content['url'];
                $secondModules[$key]['category'] = $article->category['url'];
            
        }
        $howToArticles = $this->howToArticles();
        return view('frontend.content.home.homeLatestSection',compact('secondModules','howToArticles'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function homePopularSection()
    {
        $thirdModules = ThirdModule::where('language_id','=','1')->where('status','1')->orderBy('order')->get()->toArray();
        foreach ($thirdModules as $key => $value){
            $article = Article::where('status','1')->findOrFail($value['article_id']);
            $thirdModules[$key]['article_id'] = $article->id;
            $thirdModules[$key]['alias'] = $article->alias;
            $thirdModules[$key]['image'] = $article->image;
            $thirdModules[$key]['title'] = $article->title;
            $thirdModules[$key]['description'] = $article->description;
            $thirdModules[$key]['category'] = $article->category['url'];
            $thirdModules[$key]['content'] = $article->content['url'];
            $thirdModules[$key]['date'] = date('d F Y', strtotime($article->created_at));
        }
        return view('frontend.content.home.homePopularSection',compact('thirdModules'));
    }
    
    public function trendingArticles(){
        $trendingArticles =Article::where('status','1')->where('language_id','=','1')->where('trending','1')->take(5)->get();
        return view('frontend.content.category.HometrendingArticle',compact('trendingArticles'));
    }

    public function howToArticles(){
        $howToArticles = Article::where('status','1')->where('language_id','=','1')->where('published','1')->take(5)->get();
        return view('frontend.content.category.HomehowToArticle',compact('howToArticles'));
    }

    public function newsLetters(Request $request){
        $newsLetter = new NewsLetter;
        $input = $request->all();
        $input['status'] = '1';
        try {
            $newsLetter->fill($input)->save();
        }catch(\Illuminate\Database\QueryException $e){
            $errorCode = $e->errorInfo[1];
            if($errorCode == '1062'){
                return redirect()->back()->withErrors(['email' => 'Email is already regitered']);
            }
        }
        return redirect()->back();
    }
}