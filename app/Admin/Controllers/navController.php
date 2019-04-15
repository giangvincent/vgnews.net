<?php

namespace App\Admin\Controllers;

use App\Model\Content\Navigation;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class navController extends Controller
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

            $content->header('Management for navigation menu');
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

            $content->header('Detail');
            $content->description('description');

            $content->body(Admin::show(Navigation::findOrFail($id), function (Show $show) {

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

            $content->header('Navigation Edit Form');
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

            $content->header('Navigatior Create Form');
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
        return Admin::grid(Navigation::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->column('name_display' , 'Name display');
            $grid->column('url' , 'URL');
            $grid->column('page_title' , 'Page Title');
            $grid->column('page_description' , 'Page description');
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
        return Admin::form(Navigation::class, function (Form $form) {

            $form->display('id', 'ID');
            $states = [
                'on'  => ['value' => 'publish', 'text' => 'Publish', 'color' => 'success'],
                'off' => ['value' => 'pending', 'text' => 'Pending', 'color' => 'warning'],
            ];
            $form->switch('status' , 'Post Status')->states($states);
            $form->text('name_display' , 'Name Nav');
            $form->text('url' , 'URL');
            $form->textarea('description' , 'Description');

            $form->select('type' , 'Navigation type')->options(['normal' => 'normal', 'mega' => 'mega']);
            $form->number('pos' , 'Position Navigation');
            $form->text('page_title' , 'Page title');
            $form->text('page_keyword' , 'Page keyword');
            $form->textarea('page_description' , 'Page description');
            
        });
    }
}
