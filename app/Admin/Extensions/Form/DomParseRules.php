<?php

namespace App\Admin\Extensions\Form;

use Encore\Admin\Form\Field;

class DomParseRules extends Field
{
    protected $view = 'admin.parse_rule_xray';

    protected static $css = [
        
    ];

    protected static $js = [
    ];

    public function render()
    {
        $parseRule = (isset($this->form->model()->dom_parse_rule) && $this->form->model()->dom_parse_rule != '') ? $this->form->model()->dom_parse_rule : \App\Model\Meta\Option::where('name' , 'default_cron_rule')->first()->value;
        $replaceRule = (isset($this->form->model()->replace_rule) && $this->form->model()->replace_rule != '') ? $this->form->model()->replace_rule : \App\Model\Meta\Option::where('name' , 'default_replace_rule')->first()->value;
        $this->script = <<<EOT
    
EOT;
        return parent::render()->with(['model' => $this->form->model() , 'parseRule' => $parseRule , 'replaceRule' => $replaceRule]);
    }
}
