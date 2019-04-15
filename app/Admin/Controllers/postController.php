<?php

namespace App\Admin\Controllers;

use App\Model\Content\Post;
use App\Model\Content\Tag;
use App\Model\Content\Category;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class postController extends Controller
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

            $content->header('Tin tức tổng hợp');
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

            $content->body(Admin::show(Post::findOrFail($id), function (Show $show) {

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
        return Admin::grid(Post::class, function (Grid $grid) {
            $grid->model()->orderBy('id' , 'desc');
            $grid->id('ID')->sortable();
            $grid->column('title' , 'Title');
            //$grid->column('description' , 'Description');
            $grid->column('media' , 'Media')->image();
            $states = [
                'on' => ['value' => 'publish', 'text' => 'Publish', 'color' => 'primary'],
                'off' => ['value' => 'pending', 'text' => 'Pending', 'color' => 'default'],
            ];
            $grid->status(__('Status'))->switch($states);

            $feature = [
                'on' => ['value' => 1, 'text' => 'Hot', 'color' => 'danger'],
                'off' => ['value' => 0, 'text' => 'False', 'color' => 'default'],
            ];
            $grid->feature(__('Feature'))->switch($feature);

            $newsflash = [
                'on' => ['value' => 1, 'text' => 'True', 'color' => 'primary'],
                'off' => ['value' => 0, 'text' => 'False', 'color' => 'default'],
            ];
            $grid->newsflash(__('Newsflash'))->switch($newsflash);

            $recommended = [
                'on' => ['value' => 1, 'text' => 'True', 'color' => 'primary'],
                'off' => ['value' => 0, 'text' => 'False', 'color' => 'default'],
            ];
            $grid->recommended(__('Recommended'))->switch($recommended);

            $pick = [
                'on' => ['value' => 1, 'text' => 'True', 'color' => 'primary'],
                'off' => ['value' => 0, 'text' => 'False', 'color' => 'default'],
            ];
            $grid->editor_pick(__('Ad Pick'))->switch($pick);

            $grid->categories('Categories')->display(function ($categories) {

                $categories = array_map(function ($category) {
                    return "<span class='label label-success'>{$category['title']}</span>";
                }, $categories);

                return join('&nbsp;', $categories);
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
        return Admin::form(Post::class, function (Form $form) {

            $form->display('id', 'ID');
            $states = [
                'on'  => ['value' => 'publish', 'text' => 'Publish', 'color' => 'success'],
                'off' => ['value' => 'pending', 'text' => 'Pending', 'color' => 'warning'],
            ];
            $form->switch('status' , 'Post Status')->states($states);
            $feature = [
                'on'  => ['value' => 1, 'text' => 'Hot', 'color' => 'success'],
                'off' => ['value' => 0, 'text' => 'Default', 'color' => 'warning'],
            ];
            $form->switch('feature' , 'Hot ?')->states($feature);
            $form->text('title' , 'Title');
            $form->text('slug', 'Slug');
            $form->image('media' , 'Media');
            $form->textarea('description' , 'Description');
            $form->ckeditor('content' , 'Content');

            $form->multipleSelect('tags')->options(Tag::all()->pluck('title', 'id'));
            $form->multipleSelect('categories')->options(Category::all()->pluck('title', 'id'));
            $states = [
                'on'  => ['value' => 1, 'text' => 'enable', 'color' => 'success'],
                'off' => ['value' => 0, 'text' => 'disable', 'color' => 'danger'],
            ];
            $form->switch('cmt_allow' , 'Allow Comment')->states($states);
            $recommended = [
                'on'  => ['value' => 1, 'text' => 'True', 'color' => 'success'],
                'off' => ['value' => 0, 'text' => 'False', 'color' => 'warning'],
            ];
            $form->switch('recommended' , 'Recommended')->states($recommended);
            $picked = [
                'on'  => ['value' => 1, 'text' => 'True', 'color' => 'success'],
                'off' => ['value' => 0, 'text' => 'False', 'color' => 'warning'],
            ];
            $form->switch('editor_pick' , 'Ad pick')->states($picked);
            $newsflash = [
                'on'  => ['value' => 1, 'text' => 'True', 'color' => 'success'],
                'off' => ['value' => 0, 'text' => 'False', 'color' => 'warning'],
            ];
            $form->switch('newsflash' , 'Newsflash')->states($newsflash);
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');

            $form->saving(function (Form $form) {
                if ($form->model()->author == '' || $form->model()->author == NULL) {
                    $form->model()->author = Admin::user()->id;
                }
            });
        });
    }
}
