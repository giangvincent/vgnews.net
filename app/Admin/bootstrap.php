<?php

/**
 * Laravel-admin - admin builder based on Laravel.
 * @author z-song <https://github.com/z-song>
 *
 * Bootstraper for Admin.
 *
 * Here you can remove builtin form field:
 * Encore\Admin\Form::forget(['map', 'editor']);
 *
 * Or extend custom form field:
 * Encore\Admin\Form::extend('php', PHPEditor::class);
 *
 * Or require js and css assets:
 * Admin::css('/packages/prettydocs/css/styles.css');
 * Admin::js('/packages/prettydocs/js/main.js');
 *
 */

Encore\Admin\Form::forget(['map', 'editor']);

use Encore\Admin\Form;
use Encore\Admin\Grid\Column;
use App\Admin\Extensions\Form\CKEditor;
use Encore\Admin\Facades\Admin;

use App\Admin\Extensions\Form\DomParseRules;

Form::extend('parse_rule', DomParseRules::class);
Form::extend('ckeditor', CKEditor::class);

// Tùy biến thanh điều hướng
Admin::navbar(function (\Encore\Admin\Widgets\Navbar $navbar) {
    $navbar->right(new \App\Admin\Extensions\Nav\Language());
});

Admin::css('/css/admin.css');
Admin::js('/js/admin.js');
