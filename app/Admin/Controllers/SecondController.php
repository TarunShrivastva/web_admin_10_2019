<?php

namespace App\Admin\Controllers;

use App\Admin\Models\SecondModule;
use App\Admin\Models\Article;
use App\Admin\Models\Language;

use App\Http\Controllers\Controller;
use Encore\Admin\Form;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Tree;
use Encore\Admin\Widgets\Box;
use Encore\Admin\Layout\Row;
use Encore\Admin\Auth\Database\Role;
use Encore\Admin\Layout\Column;
use Encore\Admin\Auth\Database\Menu;
use Illuminate\Support\Facades\URL;

class SecondController extends Controller
{
    use ModelForm;

    public function index()
    {
        return Admin::content(function (Content $content) {
            $content->header('Second Module');
            $content->description('Description');
            $content->row(function (Row $row) {
                $row->column(6, $this->treeView()->render());
                $row->column(6, function (Column $column) {
                    $form = new \Encore\Admin\Widgets\Form();
                    $form->action(admin_url('secondmodule'));
                    $form->select('language_id','Language')->options(Language::all()->pluck('name', 'id'))->rules('required')->load('article_id','/admin/get_data');
                    $form->select('article_id')->options(Article::where('language_id','=','1')->where('status','1')->pluck('alias','id'));
                    $form->switch('status','status');
                    $form->display('created_at', trans('admin::lang.created_at'));
                    $form->display('updated_at', trans('admin::lang.updated_at'));
                    $column->append((new Box('Add Second Module', $form))->style('success'));
            });


            });

        });
    }
    
    public function treeView()
    {
        return SecondModule::tree(function (Tree $tree) { 
            $tree->disableCreate();

            $tree->branch(function ($branch) {
                $article = Article::findorfail($branch['article_id']);
                $payload = "<img src='".URL::to('/')."/upload/$article[image]' width=100> $article[title]";

                return $payload;
            });

        });
    
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('Second Module');
            $content->description('Edit');
            $content->body($this->form()->edit($id));
        });
    }
    

    /**
     * Make a form builder.
     *
     * @return Form
     */
    public function form()
    {
        return SecondModule::form(function (Form $form) {
            $form->display('id', 'ID');
            $form->select('language_id','Language')->options(Language::all()->pluck('name', 'id'))->rules('required')->load('article_id','/admin/new/panel/get_data');
            $form->select('article_id')->options(Article::where('status','1')->pluck('alias','id'))->rules('required');
            $form->switch('status','status')->rules('required');
            $form->display('created_at', trans('admin::lang.created_at'));
            $form->display('updated_at', trans('admin::lang.updated_at'));
        });
    }
    
}
