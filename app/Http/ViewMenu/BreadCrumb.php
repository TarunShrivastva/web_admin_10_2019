<?php
namespace App\Http\ViewMenu;

use Illuminate\View\View;
use Auth;
use App\User;
use App\AdminModel\Module;
use Illuminate\Http\Request;

class BreadCrumb 
{
  public function compose(View $view){
    $url = url()->current();
    $url = explode('/', $url);
    unset($url[0]);
    unset($url[1]);
    unset($url[2]);
    $data = array();
    foreach ($url as $key => $value) {
      if($value == 'hi'){
        $data[$key] = 'HOME';
      }elseif($key == 6){
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