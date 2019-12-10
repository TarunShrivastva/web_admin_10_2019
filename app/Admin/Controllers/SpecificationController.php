<?php

namespace App\Admin\Controllers;

use App\Admin\Models\Specification;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Tree;
use Encore\Admin\Widgets\Box;
use Encore\Admin\Layout\Row;
use Encore\Admin\Auth\Database\Role;
use Encore\Admin\Layout\Column;
use Encore\Admin\Auth\Database\Menu;
use Illuminate\Support\Facades\URL;

class SpecificationController extends Controller
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
            $content->header('Specification');
            $content->description('List');
            $content->row(function (Row $row) {
                $row->column(6, $this->treeView()->render());
                
                $row->column(6, function (Column $column) {
                    $form = new \Encore\Admin\Widgets\Form();
                    $form->action(admin_url('specifications'));
                    $form->select('parent_id')->options(Specification::selectOptions());
                    $form->text('title','Specification Name')->rules('required');
                    $column->append((new Box('Add Specififcations', $form))->style('success'));
                });


            });
        });
    }

    public function treeView()
    {
        return Specification::tree(function (Tree $tree) {
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

            $content->header('Specifications');
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

            $content->header('Specifications');
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
        return Admin::grid(Specification::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->title('Title');
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
        return Admin::form(Specification::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->select('parent_id')->options(Specification::selectOptions());
            $form->text('title')->rules('required');
            $form->display('created_at', trans('admin::lang.created_at'));
            $form->display('updated_at', trans('admin::lang.updated_at'));
        });
    }

    public function getChildSpecifications()
    {
        $parent_id = request()->q;
        $specification = Specification::where('parent_id', '=', $parent_id)->get()->toArray();
        $specificationArr = array();
        foreach ($specification as $key => $value) {
            array_push($specificationArr, ['id'=>$value['id'], 'text'=>$value['title']]);
        }
        return $specificationArr;
    }
}
