<?php
namespace App\Admin\Extensions\Nav;

class Language
{
    public function __toString()
    {
      $actual_link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
      $language = trans('admin.language');
      $cur_lang = \App::getLocale();
        return <<<HTML

<li class="dropdown notifications-menu">
  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
  {$language} - <span id="cur_lang">{$cur_lang}</span>
  </a>
  <ul class="dropdown-menu">
    
    <li>
      <ul class="menu">
        <li>
          <a class="lang-link" lang="en">
            English
          </a>
        </li>
        <li>
          <a class="lang-link" lang="vi">
            Tiếng việt
          </a>
        </li>
      </ul>
    </li>

  </ul>
</li>
<script></script>
HTML;
    }
}