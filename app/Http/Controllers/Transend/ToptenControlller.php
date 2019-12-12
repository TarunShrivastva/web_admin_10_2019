<?php

namespace App\Http\Controllers\Transend;

use Illuminate\Http\Request;
use App\Admin\Models\TopTen;
use App\Admin\Models\Comparision;
use App\Admin\Models\Article;
use App\Http\Controllers\Controller;

class ToptenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $toptenModules = TopTen::where('status','1')->paginate(8);
        // foreach ($toptenModules as $key => $value){
        //     $article = Article::where('status','1')->find($value['article_id']);
        //     $firstModules[$key]['alias'] = $article->alias;
        //     $firstModules[$key]['image'] = $article->image;
        //     $firstModules[$key]['title'] = $article->title;
        //     $firstModules[$key]['description'] = $article->description;
        //     $firstModules[$key]['content'] = $article->content['url'];
        //     $firstModules[$key]['category'] = $article->category['url'];
        // }
        return view('transend.top-products.toptenList',compact('toptenModules'));
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
    public function show($id)
    {
        $compares = Comparision::where('status','1')->get();
        $data = array();
        $compArray = array();
        $specification1 = array();
        $specification2 = array();
        foreach ($compares as $key => $compare) {
            $data = ['products' => [
                            [
                            'title' => [$compare->product[0]->title, $compare->product[1]->title],
                            'specifications' => [
                                    [
                                        $compare->product[0]->add_specification->toArray(),
                                        $compare->product[1]->add_specification->toArray()
                                        ]
                                ],
                            ]
                        ]
                ];
            array_push($compArray, $data);
        }
        dd($compArray);
        //     foreach ($compare->product[0]->add_specification as $key => $specs) {
        //         array_push($specification1,[ $specs->specification->title => $specs->value]);
        //     }
        //     foreach ($compare->product[1]->add_specification as $key => $specs) {
        //         array_push($specification2,[ $specs->specification->title => $specs->value]);
        //     }
        //     $data = [
        //                 'title' =>  $compare->title,
        //                 'products'  =>  [
        //                                     [ 'title1' => $compare->product[0]->title,
        //                                       'specification1' => $specification1
        //                                     ],
        //                                     [ 'title2' => $compare->product[1]->title,
        //                                       'specification2' => $specification2
        //                                     ]
        //                                 ]
        //             ];
        //         array_push($compArray, $data);    
        // }
        dd($compArray);
        return view('transend.top-products.toptenCompare',compact('compArray'));
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
}
