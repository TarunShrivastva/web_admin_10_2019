<?php
namespace App\Http\ViewMenu;

use Illuminate\View\View;
use Auth;
use App\Admin\Models\User;
// use App\Admin\Model\Module;
use Illuminate\Http\Request;

class BreadCrumb 
{
  public function compose(View $view){
    $url = url()->current();
    $url = explode('/', $url);
    unset($url[0]);
    unset($url[1]);
    unset($url[2]);
    if(isset($url[4])){
      if($url[4] == 'amp'){
        unset($url[4]);
      }
    }
    $data = array();
    $getVal = 0;
    $urlNew = array_values($url);
    foreach ($urlNew as $key => $value) {
      if($value == 'hi'){
        $data[$key] = 'HOME';
      }elseif($key == count($urlNew)-1){
        $val = explode('-', $value);
        $count = count($val);
        unset($val[$count-1]);
        $val = implode('-', $val);
        $data[$key] = $val;  
      }
      else{
        $data[$key] = $value;
      }
    }
    $view->with('data', $data);    
  }

}