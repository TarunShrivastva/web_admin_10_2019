<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Admin\Models\Comparision;
use App;
use App\Admin\Models\Article;
use App\Admin\Models\Contenttype as Content;
use App\Admin\Models\Category;
use App\Admin\Models\Language;
use App\Admin\Models\Comment;
use Illuminate\Support\Str;

class AmpController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('transend.top-products-amp.toptenAmpCompare');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($alias, $id)
    {
        $compares = Comparision::where('status','1')->where('id','=',$id)->with(['compareproduct.productOne.add_specification.specification'=> function($query){
                // $query->where('status', '1'); For last relation
            },'compareproduct.productTwo.add_specification.specification' => function($query2){
                // $query2->where('status', '1'); For last relation
            }])->get();
        
        $actual_data = $compArray = array();
        foreach ($compares as $compare){
            foreach ($compare->compareproduct->toArray() as $key => $value) {
                $productImageOne = $productImageTwo = $productTitleTwo = $productTitleOne = $productFlipkartOne = $productPaytmOne = $productAmazonOne = $productTataCliqOne = $productFlipkartTwo = $productPaytmTwo = $productAmazonTwo = $productTataCliqTwo = 'N/A';
                $actual_data_new = $compArrayNew = $specsProductOne = $specsProductTwo = $keyArrayOne = $keyArrayTwo = array();
                if(isset($value['product_one']['title'])){
                    $productTitleOne = $value['product_one']['title'];
                    $productImageOne = $value['product_one']['image'];
                    $productFlipkartOne = $value['product_one']['flipkart_price'];
                    $productPaytmOne = $value['product_one']['paytm_price'];
                    $productAmazonOne = $value['product_one']['amazon_price'];
                    $productTataCliqOne = $value['product_one']['tata_cliq_price'];
                }
                if(isset($value['product_two']['title'])){
                    $productTitleTwo = $value['product_two']['title'];    
                    $productImageTwo = $value['product_two']['image'];
                    $productFlipkartTwo = $value['product_two']['flipkart_price'];
                    $productPaytmTwo = $value['product_two']['paytm_price'];
                    $productAmazonTwo = $value['product_two']['amazon_price'];
                    $productTataCliqTwo = $value['product_two']['tata_cliq_price'];
                }
                
                foreach($value['product_one']['add_specification'] as $key1 => $value1){
                    array_push($specsProductOne, [$value1['specification']['title'] => $value1['value']]);
                }
                
                foreach($value['product_two']['add_specification'] as $key2 => $value2){
                    array_push($specsProductTwo, [ $value2['specification']['title'] => $value2['value']]);
                }

                foreach ($specsProductOne as $product){
                    $key = array_keys($product);
                    array_push($keyArrayOne, $key[0]);
                }

                foreach ($specsProductTwo as $product){
                    $key = array_keys($product);
                    array_push($keyArrayTwo, $key[0]);
                }

                $keyArrayOne = array_unique($keyArrayOne);
                $keyArrayTwo = array_unique($keyArrayTwo);

                if(count($specsProductOne) >= count($specsProductTwo)){
                    foreach ($keyArrayOne as $key => $value){
                        $data = array_search($value,$keyArrayTwo);
                        if($data !== false){
                            $specsProductOne[$data] = array($value, $specsProductOne[$data][$value],$specsProductTwo[$data][$value]); 
                        }else{
                            $specsProductOne[$key] = array($value, $specsProductOne[$key][$value], 'N/A'); 
                        }
                    }
                }else{
                    foreach ($keyArrayTwo as $key => $value){
                        $data = array_search($value,$keyArrayOne);
                        if($data !== false){
                            $specsProductOne[$data] = array($value, $specsProductOne[$data][$value], $specsProductTwo[$data][$value]);
                        }else{
                            $specsProductOne[$key] = array($value, 'N/A', $specsProductTwo[$key][$value]); 
                        }
                    }    
                }
                $actual_data = [
                        'object' => $compare,
                        'title' => [$productTitleOne, $productTitleTwo],
                        'image' => [$productImageOne, $productImageTwo],
                        'specifications' => $specsProductOne,
                        'flipkart' => [$productFlipkartOne, $productFlipkartTwo],
                        'paytm' => [$productPaytmOne, $productPaytmTwo],
                        'amazon' => [$productAmazonOne, $productAmazonTwo],
                        'tata_cliq' => [$productTataCliqOne, $productTataCliqTwo],
                    ];
                array_push($compArray, $actual_data);   
            }
        }
        return view('transend.top-products-amp.toptenAmpCompare',compact('compArray'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function articleShow(Request $request)
    {
        $parameters = $request->route()->parameters();
        foreach ($parameters as $key => $value) {
            $$key = $value;
        }
        $locale = str_replace('/', '', $request->route()->getPrefix());
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

        $recentArticles = $this->recentArticles($articles->id);
        $trendingArticles = $this->trendingArticles($articles->id);

        if(Str::lower($articles->alias) == Str::lower($alias)){
            return view('transend.top-products-amp.articleAmp',compact('articles','recentArticles','trendingArticles'));
        }else{
            return redirect()->route('single-article',[$category, $subcategory, $articles->alias, $id]);
        }
    }

    public function recentArticles($id=null){
        $locale = App::getLocale();
        $language = Language::where('alias',$locale)->get();
        $recentArticles = Article::where('status','1')->where('language_id','=',$language[0]->id)->where('recent','1')->where('id','!=',$id)->take(5)->get();
        return view('transend.content.category.amp.recentArticle',compact('recentArticles'));
    }

    public function trendingArticles($id=null){
        $locale = App::getLocale();
        $language = Language::where('alias',$locale)->get();
        $trendingArticles = Article::where('status','1')->where('language_id','=',$language[0]->id)->where('feature','1')->where('id','!=',$id)->take(5)->get();
        return view('transend.content.category.amp.trendingArticle',compact('trendingArticles'));
    }
}
