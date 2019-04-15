<?php

namespace App\Admin\Controllers;

use App\Model\Meta\Option;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class metaOptionController extends Controller
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

            $content->header('Config list');
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

            $content->body(Admin::show(Option::findOrFail($id), function (Show $show) {

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

            $content->header('Edit option');
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

            $content->header('Create new option');
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
        return Admin::grid(Option::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->name('Name');
            $grid->description('Description');
            $grid->value('Value');
            $grid->group('Group');
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Option::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('name' , 'Name Option')->help('Text should be strip from unicode character , lowercase and do not contain any space or special string.');
            $form->textarea('value' , 'Value');
            $form->textarea('description', 'Description');
            $form->text('group' , 'Group');
        });
    }
}
