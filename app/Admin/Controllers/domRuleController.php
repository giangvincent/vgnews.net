<?php

namespace App\Admin\Controllers;

use App\Model\Craw\HtmlDomRule;
use App\Model\Craw\HistoryParse;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class domRuleController extends Controller
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

            $content->header('External Dom rule for Parse Goutte');
            $content->description('The rule is about dom structure of the page to get. Futher action will be change overtime.');

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

            $content->header('Detail of the dom rule.');
            $content->description('The rul will be display to html and css type for better view.');

            $content->body(Admin::show(HtmlDomRule::findOrFail($id), function (Show $show) {

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

            $content->header('Change the dom rules.');
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

            $content->header('Create new dom rule for new page.');
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
        return Admin::grid(HtmlDomRule::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->column('rule_name', 'Rule Name');
            $grid->column('dom_parse_rule', 'Rules JSON')->display(function ($parse_rule) {
                return '<pre>' . json_encode(json_decode($parse_rule, true), JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE) . '</pre>';
            });
            $grid->column('replace_rule', 'Replace Rule')->display(function ($replace_rule) {
                return '<pre>' . json_encode(json_decode($replace_rule, true), JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE) . '</pre>';
            });

            $grid->type_rule('Type rule');

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
        return Admin::form(HtmlDomRule::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->select('type', 'Type of rule')->options(['detail' => 'Rule for Detail', 'list' => 'Rule for List']);
            $form->text('rule_name', 'Rule Name');
            $form->parse_rule('Parse Rule');

            $form->saving(function (Form $form) {
                if ($form->rule_name != '') {
                    if ($form->dom_parse_rule != '') {
                        $form->model()->dom_parse_rule = $form->dom_parse_rule;
                    }

                    if ($form->replace_rule != '') {
                        $form->model()->replace_rule = $form->replace_rule;
                    }
                }
            });

            $form->saved(function (Form $form) {
                # get list url crawl
                $urlCrawls = HtmlDomRule::find($form->model()->id)->urlCrawl()->get();
                foreach ($urlCrawls as $urlCrawl) {
                    // save file json for x-ray crawler run for each urlcrawl that used current dom parse rule
                    $myfile = fopen(public_path("upload\\rules\\" . $urlCrawl->id . '.json'), "w") or die("Unable to open file!");
                    # preparing json data for saveing into file
                    $jsonFile = json_decode($form->model()->dom_parse_rule, true);
                    # attach url 
                    $jsonFile['url_crawl'] = $urlCrawl->url;
                    $jsonFile = json_encode($jsonFile);
                    fwrite($myfile, $jsonFile);
                    fclose($myfile);
                }


                //file_put_contents(public_path("rules\\".$form->model()->id.'.json'), json_encode($form->model()->dom_parse_rule));
            });
        });
    }

    public function getRulesApi()
    {
        $q = $_GET['q'];
        return HtmlDomRule::where('rule_name', 'like', "%$q%")->paginate(null, ['id', 'rule_name as text']);
    }
}
