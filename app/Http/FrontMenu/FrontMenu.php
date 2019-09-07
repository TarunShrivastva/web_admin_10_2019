<?php
namespace App\Http\FrontMenu;

use Illuminate\View\View;
use App\Menu;

class FrontMenu 
{
  public function compose(View $view){
    //$menus = Menu::where('status','1')->where('parent_id',0)->get()->toArray();
    $menus = Menu::where('parent_id',0)->orderBy('order')->get()->toArray();
      if($menus){
        foreach($menus as $key => $value){
          $menus[$key]['child_module'] =  $this->get_child_module($value['id']);
            if(!empty($menus[$key]['child_module'])){
              foreach($menus[$key]['child_module'] as $key1 => $value1){
                $child_child_module = $this->get_child_module($value1['id']);
                $menus[$key]['child_module'][$key1]['child__child_module'] = $child_child_module;
              }
            }
        }
      }
    $view->with('menus', $menus);    
  }

  /**
   * Function to the child module of parent module
   *
   *@param int $module_id
   *
   *@access public
   *
   *@return array $child_module
   *
   *
   **/
    public function get_child_module($menu_id){
      //$child_module = Menu::where('parent_id',$menu_id)->where('status','1')->get()->toArray();
      $child_module = Menu::where('parent_id',$menu_id)->orderBy('order')->get()->toArray();
      return $child_module;
    }
}