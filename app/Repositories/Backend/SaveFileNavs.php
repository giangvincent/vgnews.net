<?php

namespace App\Repositories\Backend;

use App\Http\Controllers\Controller as Controller;
use App\Model\Content\Navigation;

class SaveFileNavs extends Controller
{
    private $navArr = [];
    function __construct()
    {
        # code...
    }

    public function loadRoot()
    {
        $navs = Navigation::translated(\App::getLocale())->where('status', 'publish')->where('is_root', 1)->orderBy('pos', 'asc')->get()->toArray();
        $this->navArr = $navs;
        for ($i = 0; $i < count($this->navArr); $i++) {
            $this->navArr[$i]['menu'] = $this->recursiveNavs($this->navArr[$i]);
        }

        $folderNavigation = "contents\\".\App::getLocale();
        if (!file_exists($folderNavigation)) {
            mkdir($folderNavigation, 0777, true);
        }
        $navFile = fopen(public_path($folderNavigation."\\navigation.json"), "w") or die("Unable to open file!");
        $jsonFile = json_encode($this->navArr);
        fwrite($navFile, $jsonFile);
        fclose($navFile);
    }

    public function recursiveNavs($parent)
    {
        //dump($parent);
        $navrecurNavArrs = Navigation::translated(\App::getLocale())->where('status', 'publish')->where('is_root', '<>', 1)->where('parent', $parent['id'])->orderBy('pos', 'asc')->get()->toArray();

        for ($i = 0; $i < count($navrecurNavArrs); $i++) {
            $navrecurNavArrs[$i]['menu'] = $this->recursiveNavs($navrecurNavArrs[$i]);
        }
        dump($navrecurNavArrs);
        return $navrecurNavArrs;
    }

    public function saveTopNav()
    {
        $navs = Navigation::translated(\App::getLocale())->where('status', 'publish')->where('type', 'topbar')->orderBy('pos', 'asc')->get()->toArray();
        $this->navArr = $navs;
        

        $folderNavigation = "contents\\".\App::getLocale();
        if (!file_exists($folderNavigation)) {
            mkdir($folderNavigation, 0777, true);
        }
        $navFile = fopen(public_path($folderNavigation."\\topbar.json"), "w") or die("Unable to open file!");
        $jsonFile = json_encode($this->navArr);
        fwrite($navFile, $jsonFile);
        fclose($navFile);
    }
}
