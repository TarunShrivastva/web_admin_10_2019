<?php

namespace App\Http\Controllers\Transend;

use Illuminate\Http\Request;
use App\Admin\Models\TopTen;
use App\Admin\Models\Comparision;
use App\Admin\Models\CompareProduct;
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
        $toptens = TopTen::where('status','1')->paginate(8);
        return view('transend.top-products.toptenList',compact('toptens'));
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
        $compares = Comparision::where('status','1')->where('id','=',$id)->whereHas('compareproduct', function($q){
                $q->where('status','1')->whereHas('product', function($q){
                    $q->where('status','1');
                })->with('product');
            })->with('compareproduct')->get();
        dd($compares);
        $data = $compArray = $specification1 = $specification2 = array();
        foreach ($compares as $key => $compare){
                $specsProductOne = $specsProductTwo = $keyArrayOne = $keyArrayTwo = array();
                foreach($compare->product[0]->add_specification as $key1 => $value1){
                    array_push($specsProductOne, [$value1->specification->title => $value1->value]);
                }

                foreach($compare->product[1]->add_specification as $key2 => $value2){
                    array_push($specsProductTwo, [ $value2->specification->title => $value2->value]);
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

            $data = [   'object' => $compares,
                        'title' => [$compare->product[0]->title, $compare->product[1]->title],
                        'image'=> [$compare->product[0]->image, $compare->product[1]->image],
                        'specifications' => $specsProductOne
                    ];
            array_push($compArray, $data);
        }
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
