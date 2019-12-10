<?php

namespace App\Admin\Controllers;

use App\Admin\Models\Article;
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

class ArticleController extends Controller
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

            $content->header('Article');
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

            $content->header('Article');
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

            $content->header('Article');
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
        return Admin::grid(Article::class, function (Grid $grid) {
            $grid->model()->orderBy('id', 'DESC');
            $grid->id('ID')->sortable();
            $grid->title('Title')->limit(20);
            $states = [
                '1'  => ['value' => 1, 'text' => 'YES', 'color' => 'primary'],
                '0' => ['value' => 0, 'text' => 'NO', 'color' => 'default'],
            ];    
            $grid->author()->author('Author');
            $grid->status('status')->switch($states);
            $grid->recent('recent')->switch($states);
            $grid->trending('trending')->switch($states);
            $grid->popular('popular')->switch($states);
            $grid->how('how')->switch($states); 
            $grid->published('published')->switch($states); // editable(); 
            $grid->image()->image('http://localhost:8000/upload/', 100, 100);
            $grid->created_at()->sortable();
            $grid->updated_at()->sortable();
            $grid->filter(function ($filter) {
                $filter->like('title');
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
        return Admin::form(Article::class, function (Form $form) {
            $form->display('id', 'ID');
            $authors = Author::where('status','1')->get();
            $authors = $authors->toArray();
            $authorArray = array('0','Please Select An Author');//
            foreach ($authors as $key => $value) {
                array_push($authorArray,$value['author']);    
            }
            $form->text('title','Title')->attribute(['id' => 'title', 'name' => 'title', 'class' => 'form-control title test'])->rules('required|min:3');
            $form->text('alias','Alias');
            $form->ckeditor('description','Description')->rules('required');
            $form->select('author_id','Author')->options(Author::all()->pluck('author', 'id'))->rules('required');
            $form->select('content_id','Content')->options(Contenttype::all()->pluck('content_type_name', 'id'))->rules('required');
            $form->select('category_id','Category')->options(Category::all()->pluck('name', 'id'))->rules('required');
            $form->select('language_id','Language')->options(Language::all()->pluck('name', 'id'))->rules('required');
            $form->image('image','Image')->uniqueName()->rules('required|mimes:jpg,jpeg,png');
            $form->switch('status','status')->rules('required');
            $form->switch('recent','Recent')->rules('required');
            $form->switch('trending','Trending')->rules('required');
            $form->switch('popular','Popular')->rules('required');
            $form->switch('how','How')->rules('required');
            $form->switch('published','Published')->rules('required');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
            $form->tools(function (Form\Tools $tools) {
                // // Disable back btn.
                // $tools->disableBackButton();
                // // Disable list btn
                // $tools->disableListButton();

                // Add a button, the argument can be a string, or an instance of the object that implements the Renderable or Htmlable interface
                // $tools->add('<a class="btn btn-sm btn-danger"><i class="fa fa-trash"></i>&nbsp;&nbsp;delete</a>');
            });

        });
    }
}
