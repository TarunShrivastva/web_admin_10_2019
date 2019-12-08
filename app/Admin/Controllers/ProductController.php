<?php

namespace App\Admin\Controllers;

use App\Product;
use App\Specification;
use App\AddSpecification;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class ProductController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Product');
            $content->description('List');

            $content->body($this->grid());
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

            $content->header('Product');
            $content->description('Edit');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('Product');
            $content->description('Create');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Product::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->title('Product Title')->limit(20);
            $grid->add_specification('Specification Count')->display(function ($specs) {
                $count = count($specs);
                return "<span class='label label-warning'>{$count}</span>";
            });
            $grid->created_at();
            $grid->updated_at();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Product::class, function (Form $form) {

            $form->tab('Product',function(Form $form){
                $form->display('id', 'ID');
                $form->text('title','Title')->rules('required|min:3');
                $form->ckeditor('description','Description')->rules('required');
                $form->image('image','Image')->uniqueName()->rules('mimes:jpg,jpeg,png');
                $form->switch('status','Status')->rules('required');
                $form->display('created_at', 'Created At');
                $form->display('updated_at', 'Updated At');
            });
            
            $form->tab('Add Specification',function(Form $form){
                $form->hasMany('add_specification', function (Form\NestedForm $form){
                    $firstSpecsId = Specification::where('parent_id','=','0')->first()->toArray();
                    $addSpecs = Specification::where('parent_id','=', $firstSpecsId)->get()->pluck('title', 'id');
                    $form->display('id', 'ID');
                    $form->select('specification_id','Parent Specification')->options(Specification::where('parent_id','=','0')->get()->pluck('title', 'id'))->rules('required')->load('specs_name','/admin/new/panel/get_child_specification');
                    $form->select('specs_name','Specification')->options($addSpecs)->rules('required');
                    $form->text('value','Value')->rules('required');
                });
            });
        });
    }
}
