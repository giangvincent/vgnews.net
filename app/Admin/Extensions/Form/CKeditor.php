<?php 
namespace App\Admin\Extensions\Form;

use Encore\Admin\Form\Field;

class CKEditor extends Field
{
    public static $js = [
        '/vendor/laravel-admin/ckeditor/ckeditor.js',
        '/vendor/laravel-admin/ckeditor/adapters/jquery.js'

    ];

    protected $view = 'Admin.Form.ckeditor';

    public function render()
    {
        $this->script = "$('textarea.{$this->getElementClassString()}').ckeditor({height : 300,allowedContent:true});";

        return parent::render();
    }
}