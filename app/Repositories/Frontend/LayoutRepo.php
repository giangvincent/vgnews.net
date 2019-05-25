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
	
	function __construct()
	{
		# code...
	}
	/**
	 * [loadNavigator load published navigator has been saved in database]
	 * @return view object : share the object data to the whole website
	 */
	public function loadNavigator()
    {
		
		$navs = json_decode(file_get_contents('contents/'.\App::getLocale().'/navigation.json'), true);
		//dump($navs);
        view()->share('navs' , $navs);
	}
	
	public function loadNavsRecursive()
	{
		
	}

	public function loadFooterLayout()
	{
		# code...
	}

	public function loadSingleSocial()
	{
		# code...
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