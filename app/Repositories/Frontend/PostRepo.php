<?php 

namespace App\Repositories\Frontend;

use App\Model\Content\Post;
use App\Model\Content\Category;
use App\Model\Content\Tag;
use App\Http\Controllers\Controller as Controller;

/**
 * For Post loading news
 */
class PostRepo extends Controller
{
	/**
	 * [$loaded_ids contain all output id of post has been displayed or called]
	 * @var array
	 */
	protected $loaded_ids = [];

	function __construct()
	{
		$this->loaded_ids = [];
	}

	function __destruct()
	{
		
	}

	/**
	 * [loadTrending load trending news base on views number latest and in short of time]
	 * @return [type] [return with share variable]
	 */
	public function loadTrending()
	{
		$trendingPosts = Post::whereNotIn('id' , $this->loaded_ids)->whereHas('translations', function($q){
		    $q->where('locale' , \App::getLocale())->orderBy('count_vote' , 'desc')->orderBy('created_at' , 'desc');
		})->take(5);
		//$trendingPosts = Post::whereNotIn('id' , $this->loaded_ids)->translations()->where('locale' , \App::getLocale())->orderBy('count_vote' , 'desc')->orderBy('created_at' , 'desc');
		//array_push($this->loaded_ids, $trendingPosts->pluck('id'));
		view()->share('trending' , $trendingPosts->get());
		//view()->share('loaded_ids' , $this->loaded_ids);
	}

	/**
	 * [loadFeaturePosts load feature news base on views - comment - vote]
	 * @return [type] [description]
	 */
	public function loadFeaturePosts()
	{
		$feature = Post::whereNotIn('id' , $this->loaded_ids)->whereHas('translations', function($q){
		    $q->where('locale' , \App::getLocale())->orderBy('count_view' , 'desc')->orderBy('count_comment' , 'desc')->orderBy('count_vote' , 'desc');
		})->take(4);
		array_push($this->loaded_ids, $feature->pluck('id'));
		view()->share('feature' , $feature->get());
		view()->share('loaded_ids' , $this->loaded_ids);
	}

	/**
	 * [loadLatest load latest news]
	 * @return [type] [description]
	 */
	public function loadLatest()
	{
		

		// get 20 latest post 
		$latestPosts = Post::whereNotIn('id' , $this->loaded_ids)->orderBy('id' , 'desc')->take(20);
		// post load only one time
		array_push($this->loaded_ids, $latestPosts->pluck('id'));
		$catsNews = array();
		foreach ($latestPosts->get() as $post) {
			$catsOfPost = $post->categories()->get();
			$firstCat = $post->categories()->first();
			$catsNews[$firstCat->slug]['cat'] = $firstCat;
			foreach ($catsOfPost as $cat) {
				$catsNews[$firstCat->slug]['post'][] = $post;
			}
		}
		//dump($latestPostByCat);
		view()->share('catsNews' , $catsNews);
		view()->share('latestPosts' , $latestPosts->get());
		view()->share('loaded_ids' , $this->loaded_ids);
	}

	/**
	 * [loadPopular load popular news base on views number]
	 * @return [type] [description]
	 */
	public function loadPopular()
	{
		$popular = Post::whereNotIn('id' , $this->loaded_ids)->whereHas('translations', function($q){
		    $q->orderBy('count_view' , 'desc');
		})->orderBy('id' , 'desc')->take(4);
		array_push($this->loaded_ids, $popular->pluck('id'));
		view()->share('popular' , $popular->get());
		view()->share('loaded_ids' , $this->loaded_ids);
	}

	/**
	 * [homePostByCat function load posts by category through category has been determine to show off in homepage]
	 * @param  
	 * @return [type]        [description]
	 */
	public function homePostByCat()
	{
		$categories = Category::whereTranslation('load_pos' , 'home_cat')->take(4);
		$postsByCat = array();
		foreach ($categories->get() as $category) {
			$posts = $this->loadPostByCat($category);
			$postsByCat[$category->title] = $posts;
		}
		//dump($postsByCat);
		view()->share('postsByCat' , $postsByCat);
	}
	/**
	 * [loadPostByCat load news by category with order by latest time]
	 * @param  [int] $category [category id]
	 * @return share $postsByCat
	 */
	public function loadPostByCat($category)
	{
		//$cat = Category::find($category);
		$postsByCat = $category->posts()->whereNotIn('id' , $this->loaded_ids)->orderBy('id' , 'desc')->take(5);
		array_push($this->loaded_ids, $postsByCat->pluck('id'));
		//view()->share('postsByCat' , $postsByCat);
		view()->share('loaded_ids' , $this->loaded_ids);
		return $postsByCat->get();
	}
	/**
	 * [loadPostByTag load news by Tag]
	 * @param  [int] $tag [Tag id]
	 * @return 
	 */
	public function loadPostByTag($tag)
	{
		$tagDb = Tag::find($tag);
		$postsByTag = $tagDb->posts()->whereNotIn('id' , $this->loaded_ids)->orderBy('id' , 'desc')->take(5);
		array_push($this->loaded_ids, $postsByTag->pluck('id'));
		view()->share('postsByTag' , $postsByTag);
		view()->share('loaded_ids' , $this->loaded_ids);
	}
	/**
	 * [ajaxPostWithPagination loading ajax for news with pagination]
	 * @param  [array] $loaded_ids [loaded news id]
	 * @return [view] view blade for paginate news
	 */
	public function ajaxPostWithPagination($loaded_ids)
	{
		$postsWithPagination = Post::whereNotIn('id' , $loaded_ids)->whereHas('translations', function($q){
		    $q->where('locale' , \App::getLocale())->orderBy('id','desc')->orderBy('updated_at' , 'desc');
		});
		view()->share('loaded_ids' , $postsWithPagination->pluck('id'));
		$postsWithPagination->paginate(7);
		return view('Frontend.Partials.Content.V1.Home.PaginatePosts' , compact('postsWithPagination'));
	}
}