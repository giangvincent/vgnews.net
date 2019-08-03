<?php

namespace App\Admin\Controllers;

use App\Model\Content\Layout;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class layoutController extends Controller
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
            $content->header('Index');
            $content->description('description');
            $content->body($this->grid());
        });
    }

    /**
     * Show interface.
     *
     * @param $id
     * @return Content
     */
    public function show($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header('Detail');
            $content->description('description');
            $content->body(Admin::show(Layout::findOrFail($id), function (Show $show) {
                $show->id();
                $show->created_at();
                $show->updated_at();
            }));
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
            $content->header('Edit');
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

            $content->header('Create');
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
        return Admin::grid(Layout::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->column('title', 'Title');
            $grid->column('content' , 'Content')->display(function ($content) {
                if ($content != null) {
                    return 'Filled';
                }
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
        return Admin::form(Layout::class, function (Form $form) {

            $form->display('id', 'ID');
            $states = [
                'on'  => ['value' => 'publish', 'text' => 'Publish', 'color' => 'success'],
                'off' => ['value' => 'pending', 'text' => 'Pending', 'color' => 'warning'],
            ];
            $form->switch('status' , 'Post Status')->states($states);
            $form->text('title' , __('Title'));
            $form->text('slug' , __('Slug'));
            $form->textarea('description' , __('Description'));
            $form->ckeditor('content' , __('Content'));
            $form->select('type' , 'Layput type')->options([1 => 'Type 1', 2 => 'Type 2']);
            $form->select('pos' , 'Position')->options(['home' => 'Home page' , 'list' => 'List page' , 'detail' => "Detail page" , 'footer' => 'Footer']);
            $form->select('page' , 'Page')->options(['home' => 'Home page' , 'list' => 'List page' , 'detail' => "Detail page"]);
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
