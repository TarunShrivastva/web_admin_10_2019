<?php

namespace App\Admin\Controllers;

use App\Admin\Models\Comparision;
use App\Admin\Models\TopTen;
use App\Admin\Models\Product;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class CompareController extends Controller
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

            $content->header('Compare');
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

            $content->header('Compare');
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

            $content->header('Compare');
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
        return Admin::grid(Comparision::class, function (Grid $grid) {

            $states = [
                '1'  => ['value' => 1, 'text' => 'YES', 'color' => 'primary'],
                '0' => ['value' => 0, 'text' => 'NO', 'color' => 'default'],
            ];
            $grid->id('ID')->sortable();
            $grid->title('Compare Title');
            $grid->image()->image('http://localhost:8000/upload/', 50, 50);
            $grid->status('status')->switch($states);
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
        return Admin::form(Comparision::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('title','Compare Title')->rules('required|min:3');
            $form->text('alias','Alias')->rules('required|min:3');
            $form->image('image','Image')->uniqueName()->rules('required|mimes:jpg,jpeg,png');
            $form->select('top_ten_id','topten')->options(TopTen::all()->pluck('title', 'id'))->rules('required');
            $form->switch('status','Status')->rules('required');
            $form->hasMany('compareproduct', function (Form\NestedForm $form){
                $form->multipleSelect('products')->options(Product::all()->pluck('title', 'id'))->rules('required');
            });
                
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
