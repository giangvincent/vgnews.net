<?php
namespace App\Repositories\Frontend;

use App\Repositories\Frontend\DataRepo;
use App\Http\Controllers\Controller as Controller;
use App\Model\Content\Layout;
use App\Model\Content\Navigation;

/**
* Layout logic handler
*/
class LayoutRepo extends Controller
{
    public function __construct()
    {
        # code...
    }

    public function loadPrimaryLayouts()
    {
        $this->loadNavigator();
        $this->loadFooterLayout();
        $this->loadSingleSocial();
    }
    /**
     * [loadNavigator load published navigator has been saved in database]
     * @return view object : share the object data to the whole website
     */
    public function loadNavigator()
    {
        $navs = json_decode(file_get_contents('contents/'.\App::getLocale().'/navigation.json'), true);
        //dump($navs);
        view()->share('navs', $navs);
        $topbar = json_decode(file_get_contents('contents/'.\App::getLocale().'/topbar.json'), true);
        // dump($topbar);
        view()->share('topbar', $topbar);
    }
    
    public function loadNavsRecursive()
    {
    }

    public function loadFooterLayout()
    {
        $footer = Layout::where('pos', 'footer')->first();
        // dump($footer);
        view()->share('footer', $footer);
    }

    public function loadSingleSocial()
    {
        $socials = Layout::where('pos', 'social_fanpage')->get();
        // dump($footer);
        view()->share('socials', $socials);
    }

    /**
     * [sideBar ]
     * @return [type] [description]
     */
    public function sideBar()
    {
        return view('Frontend.Layouts.Sidebar');
    }
    public function meta()
    {
        return view('Frontend.Layouts.Meta');
    }
    public function filter()
    {
        return view('Frontend.Partials.FilterNews');
    }
}
