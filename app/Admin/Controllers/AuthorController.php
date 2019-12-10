<?php

namespace App\Admin\Controllers;

use App\Admin\Models\Author;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class AuthorController extends Controller
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

            $content->header('Author');
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

            $content->header('Author');
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

            $content->header('Author');
            $content->description('create');

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
        return Admin::grid(Author::class, function (Grid $grid) {
            $states = [
                '1'  => ['value' => 1, 'text' => 'YES', 'color' => 'primary'],
                '0' => ['value' => 0, 'text' => 'NO', 'color' => 'default'],
            ];
            $grid->id('ID')->sortable();
            $grid->author('author','Author');
            $grid->author_email('author_email','Email');
            $grid->address('address','Address');
            $grid->image()->image('http://localhost:8000/upload/', 100, 100);
            $grid->status('status')->switch($states);
            $grid->created_at();
            $grid->updated_at();
            $grid->filter(function ($filter) {
                $filter->like('author');
                $filter->between('created_at')->datetime();
                $filter->useModal();
            });
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Author::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('author','Author');
            $form->email('author_email','Email');
            $form->textarea('address','Address');
            $form->image('image','Image')->uniqueName()->rules('required|mimes:jpg,jpeg,png');
            $form->switch('status','status')->rules('required');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
