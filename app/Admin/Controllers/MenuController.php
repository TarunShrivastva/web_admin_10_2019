<?php

namespace App\Admin\Controllers;

use App\FrontMenu;
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

class MenuController extends Controller
{
    use ModelForm;

    public function index()
    {
        return Admin::content(function (Content $content) {
            $content->header(trans('admin::lang.menu'));
            $content->description(trans('admin::lang.list'));
            $content->row(function (Row $row) {
                $row->column(6, $this->treeView()->render());
                
                $row->column(6, function (Column $column) {
                    $form = new \Encore\Admin\Widgets\Form();
                    $form->action(admin_url('front-menu'));
                    $form->select('parent_id')->options(FrontMenu::selectOptions());
                    $form->text('title','url')->rules('required');
                    $column->append((new Box('Add FrontMenu', $form))->style('success'));
                });


            });

        });
    }
    
    public function treeView()
    {
        return FrontMenu::tree(function (Tree $tree) { 
            $tree->disableCreate();
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

            $content->header('FrontMenu');
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
        return FrontMenu::form(function (Form $form) {
            $form->display('id', 'ID');
            $form->select('parent_id')->options(FrontMenu::selectOptions());
            $form->text('title')->rules('required');
            $form->display('created_at', trans('admin::lang.created_at'));
            $form->display('updated_at', trans('admin::lang.updated_at'));
        });
    }
}
