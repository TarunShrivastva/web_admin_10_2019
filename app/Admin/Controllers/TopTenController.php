<?php

namespace App\Admin\Controllers;

use App\Admin\Models\TopTen;
use App\Admin\Models\Product;
use App\Admin\Models\Author;
use App\Admin\Models\Contenttype;
use App\Admin\Models\Category;
use App\Admin\Models\Language;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class TopTenController extends Controller
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
            $content->header('Top Ten');
            $content->description('description');

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

            $content->header('Top Ten');
            $content->description('description');

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

            $content->header('Top Ten');
            $content->description('description');

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
        return Admin::grid(TopTen::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->title('TopTen Title')->limit(20);
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
        // $form->topteneditor('topten','Top Ten');
        return Admin::form(TopTen::class, function (Form $form) {
                $form->display('id', 'ID');
                $form->text('title','Title')->rules('required|min:3');
                $form->text('alias','Alias')->rules('required|min:3');
                $form->ckeditor('description','Description')->rules('required');
                $form->multipleSelect('product', 'TopTen Products')->options(Product::all()->pluck('title', 'id'));
                $form->select('author_id','Author')->options(Author::all()->pluck('author', 'id'))->rules('required');
                $form->select('content_id','Content')->options(Contenttype::all()->pluck('content_type_name', 'id'))->rules('required');
                $form->select('category_id','Category')->options(Category::all()->pluck('name', 'id'))->rules('required');
                $form->select('language_id','Language')->options(Language::all()->pluck('name', 'id'))->rules('required');
                $form->image('image','Image')->uniqueName()->rules('required|mimes:jpg,jpeg,png');
                $form->switch('status','status')->rules('required');
                $form->display('created_at', 'Created At');
                $form->display('updated_at', 'Updated At');    
        });
    }
}
