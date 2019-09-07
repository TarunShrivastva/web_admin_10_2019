<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\AdminModel\FirstModule;
use App\AdminModel\SecondModule;
use App\AdminModel\ThirdModule;
use App\AdminModel\Article;

class HomePageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
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
        $firstModules = FirstModule::where('language_id','=','1')->where('status','1')->orderByDesc('updated_at')->orderBy('priority')->limit(4)->get()->toArray();
        $ids = array();
        foreach ($firstModules as $key => $value){
            $id = explode("-", $value['alias']);
            $article = Article::where('status','1')->findOrFail(end($id));
            $firstModules[$key]['image'] = $article->image;
            $firstModules[$key]['title'] = $article->title;
            $firstModules[$key]['description'] = $article->description;
            $firstModules[$key]['category'] = $article->category['name'];
            $firstModules[$key]['content'] = $article->content['content_type_name'];
            $firstModules[$key]['category'] = $article->category['name'];
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
        $secondModules = SecondModule::where('language_id','=','1')->where('status','1')->orderByDesc('updated_at')->orderBy('priority')->get()->toArray();
        $ids = array();
        foreach ($secondModules as $key => $value){
            $id = explode("-", $value['alias']);
            $article = Article::where('status','1')->findOrFail(end($id));
            $secondModules[$key]['image'] = $article->image;
            $secondModules[$key]['title'] = $article->title;
            $secondModules[$key]['description'] = $article->description;
            $secondModules[$key]['category'] = $article->category['name'];
            $secondModules[$key]['content'] = $article->content['content_type_name'];
            $secondModules[$key]['category'] = $article->category['name'];
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
        $thirdModules = ThirdModule::where('language_id','=','1')->where('status','1')->orderByDesc('updated_at')->orderBy('priority')->get()->toArray();
        $ids = array();
        foreach ($thirdModules as $key => $value){
            $id = explode("-", $value['alias']);
            $article = Article::where('status','1')->findOrFail(end($id));
            $thirdModules[$key]['image'] = $article->image;
            $thirdModules[$key]['title'] = $article->title;
            $thirdModules[$key]['description'] = $article->description;
            $thirdModules[$key]['category'] = $article->category['name'];
            $thirdModules[$key]['date'] = date('d F Y', strtotime($article->created_at));
        }
        return view('frontend.content.home.homePopularSection',compact('thirdModules'));
    }

    // public function recentArticles(){
    //     $recentArticles = Article::where('status','1')->where('recent','1')->take(5)->get();
    //     return view('frontend.content.category.HomerecentArticle',compact('recentArticles'));
    // }

    public function trendingArticles(){
        $trendingArticles =Article::where('status','1')->where('language_id','=','1')->where('trending','1')->take(5)->get();
        return view('frontend.content.category.HometrendingArticle',compact('trendingArticles'));
    }

    public function howToArticles(){
        $howToArticles = Article::where('status','1')->where('language_id','=','1')->where('published','1')->take(5)->get();
        return view('frontend.content.category.HomehowToArticle',compact('howToArticles'));
    }


    public function test(){
        return "asdas";
    }
}
