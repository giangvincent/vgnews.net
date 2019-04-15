<?php

namespace App\Admin\Controllers;

use App\Model\Craw\UrlCraw;
use App\Model\Craw\HtmlDomRule;
use App\Model\Content\Tag;
use App\Model\Content\Category;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class UrlCrawController extends Controller
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

            $content->body(Admin::show(UrlCraw::findOrFail($id), function (Show $show) {

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
        return Admin::grid(UrlCraw::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->url("URL");
            $grid->domain("Domain");
            $grid->rule('Rule')->display(function ($rule){
                return HtmlDomRule::find($rule)->rule_name;
            });
            $states = [
	            'on' => ['value' => 'active', 'text' => 'Publish', 'color' => 'primary'],
	            'off' => ['value' => 'deactive', 'text' => 'Pending', 'color' => 'default'],
	        ];
	        $grid->column('status', __('Status'))->switch($states);
            $grid->categories('Categories')->display(function ($categories) {

                $categories = array_map(function ($category) {
                    return "<span class='label label-success'>{$category['title']}</span>";
                }, $categories);

                return join('&nbsp;', $categories);
            });
            $grid->cron_rule('Cron rule');
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
        return Admin::form(UrlCraw::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('url' , 'URL');
            $form->text('domain' , 'Domain');
            $form->multipleSelect('categories')->options(Category::all()->pluck('title', 'id'));
            $form->select('rule' , 'Rule ID')->options(function ($id) {
                $rule = HtmlDomRule::find($id);
                if ($rule) {
                    return [$rule->id => $rule->rule_name];
                }
            })->ajax('/admin/api/rules');
            $form->text('cron_rule' , 'Cron rule');
            $states = [
                'on'  => ['value' => 'active', 'text' => 'Active', 'color' => 'success'],
                'off' => ['value' => 'deactive', 'text' => 'Deactive', 'color' => 'danger'],
            ];

            $form->switch('status' , 'Status')->states($states);
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }

    public function crawlUrl()
    {
        if (isset($_GET['url']) && $_GET['url'] != '') {
            $url = urldecode($_GET['url']);
        }

        return view('admin.helper.crawl_url');
    }
}
