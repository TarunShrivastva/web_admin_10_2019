<?php

namespace App\Admin\Controllers;

use App\FirstModule;
use App\Article;
use App\Language;
use URL;

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

class FirstController extends Controller
{
    use ModelForm;

    public function index()
    {
        return Admin::content(function (Content $content) {
            $content->header('First Module');
            $content->description('Description');
            $content->row(function (Row $row) {
                $row->column(6, $this->treeView()->render());
                $row->column(6, function (Column $column) {
                    $articles = Article::where('language_id','=','2')->get()->pluck('alias','id');
                    $form = new \Encore\Admin\Widgets\Form();
                    $form->action(admin_url('firstmodule'));
                    $form->select('language_id','Language')->options(Language::all()->pluck('name', 'id'))->rules('required');
                    $articles = Article::where('language_id', '=','2')->get()->pluck('alias','id');
                    $form->select('article_id')->options($articles);
                    $form->switch('status','status');
                    $form->display('created_at', trans('admin::lang.created_at'));
                    $form->display('updated_at', trans('admin::lang.updated_at'));
                    $column->append((new Box('Add First Module', $form))->style('success'));
                });
            });
        });
    }
    
    public function treeView()
    {
        return FirstModule::tree(function (Tree $tree) { 
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

            $content->header('First Module');
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
        return FirstModule::form(function (Form $form) {
            $form->display('id', 'ID');
            $form->select('language_id','Language')->options(Language::all()->pluck('name', 'id'))->rules('required');
            $articles = Article::where('language_id', '=', '2')->get()->pluck('alias','id');
            $form->select('article_id')->options($articles)->rules('required');
            $form->switch('status','status')->rules('required');
            $form->display('created_at', trans('admin::lang.created_at'));
            $form->display('updated_at', trans('admin::lang.updated_at'));
        });
    }
    
}
