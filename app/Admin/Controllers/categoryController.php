<?php

namespace App\Admin\Controllers;

use App\Model\Content\Category;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class categoryController extends Controller
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

            $content->header('Category list');
            $content->description('');

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

            $content->header('Detail of category');
            $content->description('');

            $content->body(Admin::show(Category::findOrFail($id), function (Show $show) {

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

            $content->header('Edit Category');
            $content->description('');

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

            $content->header('Create new category');
            $content->description('');

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
        return Admin::grid(Category::class, function (Grid $grid) {
            $grid->model()->orderBy('pos' , 'asc');
            $grid->id('ID')->sortable();
            $grid->column('title' , 'Title');
            $grid->column('description' , 'Description');
            $states = [
                'on' => ['value' => 'publish', 'text' => 'Publish', 'color' => 'primary'],
                'off' => ['value' => 'pending', 'text' => 'Pending', 'color' => 'default'],
            ];
            $grid->status(__('Status'))->switch($states);
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
        return Admin::form(Category::class, function (Form $form) {

            $form->display('id', 'ID');
            $states = [
                'on'  => ['value' => 'publish', 'text' => 'Publish', 'color' => 'success'],
                'off' => ['value' => 'pending', 'text' => 'Pending', 'color' => 'warning'],
            ];
            $form->switch('status' , 'Post Status')->states($states);
            $form->text('title' , 'Title');
            $form->text('slug', 'Slug');
            $form->text('parent' , 'Parent');
            $form->textarea('description' , 'Description');
            $form->multipleSelect('load_pos' , 'Loading position')->options(['sidebar' => 'Sidebar', 'home_cat' => 'Homepage Category']);
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
