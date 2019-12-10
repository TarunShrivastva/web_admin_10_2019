<?php
namespace App\Http\FrontMenu;

use Illuminate\View\View;
use App\Admin\Models\Language;

class LanguageMenu
{
  public function compose(View $view){
    $languages = Language::all()->toArray();
    $view->with('languages', $languages);
  }

}