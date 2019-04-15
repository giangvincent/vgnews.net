<?php
namespace App\Repositories\Frontend;

use App\Http\Controllers\Controller as Controller;
use App\Model\Content\Layout;
use App\Model\Content\Navigation;
use App\Model\Content\Post;
use App\Model\Content\Category;
use App\Model\Content\Tag;

/**
 * Data exact and initialize logic handle
 */
class DataRepo extends Controller
{
	
	function __construct()
	{
		# code...
	}
	/**
	 * [loadShareData initialize view->share to global share data of post throghout the website]
	 * @param  [object] $ob [the data wanted to share on air]
	 * @param [string] $nameVar [Name of the variable should to be on air]
	 * @return [type]     [no return]
	 */
	public function loadShareData($nameVar , $ob)
	{
		view()->share($nameVar, $ob);
	}
	
	/**
	 * [loadTypedNews load type of news has been classified in the database]
	 * @param  integer $num   [Maximum number of the news]
	 * @param  string  $typed [The type of the news: flashnews, feature, recommended, editor_pick]
	 * @return object $typedNews object contain news post
	 */
	public function loadTypedNews($num = 7, $typed = '')
	{
		return Post::whereHas('translations', function($q) use ($typed){
		    $q->where('locale' , \App::getLocale())->where($typed , 1)->orderBy('id', 'desc');
		})->publish()->take($num)->get();

	}
	/**
	 * [loadOrderedNews load ordered news by a specific condition]
	 * @param  integer $num [Number of the news]
	 * @param string $type This is the condition for ordering the news, for example: latest, most commented, most viewed, most shared, most voted,...
	 * @return object $orderedNews Contain ordered news post
	 */
	public function loadOrderedNews($num = 5, $type = 'latest')
	{
		
	}
}
?>