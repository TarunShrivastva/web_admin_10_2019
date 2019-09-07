<?php
namespace App\Http\ViewMenu;

use Illuminate\View\View;
use Auth;
use App\User;
use App\AdminModel\Module;

class HeaderMenu 
{
  public function compose(View $view){
    $Users = User::find(Auth::user()->id);
    $modules = $Users->module->where('status','1');
      if($modules){
        foreach($modules as $key => $value){
          $value->child_module=  $this->get_child_module($value->id);
        }
      }
    $view->with('modules', $modules);    
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
    public function get_child_module($module_id){
      $child_module = Module::where('parent_id',$module_id)->where('status','1')->get()->toArray();
      return $child_module;
    }

    // /**
    // * Function to get all module with login user permission
    // *
    // * @return array $module
    // *
    // *
    // **/ 

    // function get_all_modules($id){
    //   $modules = Module::where('parent_id',0)->get();
    
    //   foreach($modules as $key => $value){
    //    $value->is_permission = $this->check_for_permission($value->id,$id);
    //     $child_modules = $this->get_child_module($value->id);
    //     if(count($child_modules)){
          
    //       foreach($child_modules as $k => $v){
    //         $child_modules[$k]['is_permission'] = $this->check_for_permission($v['id'] ,$id);
    //        $child_modules[$k]['can_add']= $this->check_for_permission($v['id'] ,$id,'1');
    //          $child_modules[$k]['can_edit'] = $this->check_for_permission($v['id'] ,$id,'2'); 
    //         $child_modules[$k]['can_delete'] = $this->check_for_permission($v['id'] ,$id,'3'); 
             
    //       }

    //     }
       
    //     $value->child_module = $child_modules;
    //   }

    //   return $modules; die;
    // }

    // function check_for_permission($module_id ,$user_id ,$type='0'){
    //   if($type == 0){
    //     $where = array('admin_id'=>$user_id ,'module_id'=>$module_id);
    //   }else if($type == 1){
    //     $where = array('admin_id'=>$user_id ,'module_id'=>$module_id,'can_add'=>'1');
    //   }else if($type == 2){
    //     $where = array('admin_id'=>$user_id ,'module_id'=>$module_id,'can_edit'=>'1');
    //   }else if($type == 3){
    //    $where = array('admin_id'=>$user_id ,'module_id'=>$module_id,'can_delete'=>'1');
    //   }
      
    //    $module_permission =   DB::table('users_modules')->where($where)->get();
    //      if(count($module_permission)){
    //       return TRUE;
    //      }else{
    //       return FALSE;
    //      }
    //   }
    

}