<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\Frontend\LayoutRepo;
use App\Repositories\Frontend\DataRepo;
use App\Repositories\Frontend\PostRepo;
use App\Model\Content\Layout;
use App\Model\Content\Navigation;
use App\Model\Content\Post;
use App\Model\Content\Category;
use App\Model\Content\Tag;

class frontController extends Controller
{
    protected $postRepo;
    protected $layoutRepo;
    protected $dataRepo;
    public function __construct()
    {
        $this->postRepo = new PostRepo();
        $this->dataRepo = new DataRepo();
        $this->layoutRepo = new LayoutRepo();
        $this->layoutRepo->loadPrimaryLayouts();
        $this->dataRepo->loadCates();
        $this->dataRepo->loadLayouts();
    }
    /**
     * [homePage load homepage]
     * @return [view file of Home] [Frontend/Home.blade.php]
     */
    public function homePage()
    {
        $this->postRepo->loadTrending();
        //$this->postRepo->loadFeaturePosts();
        $this->postRepo->loadLatest();
        $this->postRepo->loadPopular();
        $this->postRepo->homePostByCat();

        $feature = $this->dataRepo->loadTypedNews(4, 'feature');
        $newsflash = $this->dataRepo->loadTypedNews(7, 'newsflash');
        $editor_pick = $this->dataRepo->loadTypedNews(7, 'editor_pick');
        $recommended = $this->dataRepo->loadTypedNews(2, 'recommended');
        view()->share('newsflash', $newsflash);
        return view('Frontend.Home' , compact('feature', 'editor_pick' , 'recommended'));
    }
    /**
     * [ajaxPaginate load nes by paginate for ajax request]
     * @param [integer] $[page] [number of page need to load]
     * @param [string] $[load_type] [Type of the news need to load (homepage , list , detail)]
     * @return [object] []
     */
    public function ajaxPaginate()
    {
        $page = $_GET['page'];
        // dump($page);
        return $this->postRepo->ajaxPostWithPagination($page);
    }

    /**
     * [catePage load category page]
     * @param  [string] $category [string contain category that existed in database]
     * @return [view]           [Frontend of list]
     */
    public function catePage($category)
    {
        $this->postRepo->loadPopular();
        $cateDb = Category::whereTranslation('slug', $category)->firstOrFail();
        $posts = $cateDb->posts()->orderBy('id', 'desc')->paginate(8);
        //dump($postsByCat);
        return view('Frontend.List', compact('posts', 'cateDb'));
    }

    /**
     * [tagPage load tag list page]
     * @param  [string] $tag [string contain tags ]
     * @return [view]      [Frontend of list]
     */
    public function tagPage($tag)
    {
        $this->postRepo->loadPopular();
        $tagDb = Tag::whereTranslation('slug', $tag)->first();
        $posts = $tagDb->posts()->orderBy('id', 'desc')->paginate(8);
        //dump($postsByTag);
        return view('Frontend.List', compact('posts',  'tagDb'));
    }
    /**
     * [singlePost Load single news post]
     * @param  [string] $slug [title without any mark]
     * @param  [integer] $id   [identify the position of the post]
     * @return [view]       [Frontend of single news page]
     */
    public function singlePost($slug, $id)
    {
        $this->postRepo->loadPopular();
        $postDb = Post::where('id', $id)->whereTranslation('slug', $slug)->first();
        $cateDb = $postDb->categories();
        $relatedPosts = [];
        foreach($cateDb->get() as $cat) {
            array_push($relatedPosts, $cat->posts()->limit(6)->get()->toArray());
        }
        shuffle($relatedPosts[0]);
        // dd($relatedPosts);
        $relatedPosts = array_slice($relatedPosts[0], 0, 6);
        $previousPost = Post::where('id', '<', $id)->orderBy('id', 'desc')->first();
        // get next user id
        $nextPost = Post::where('id', '>', $id)->orderBy('id', 'asc')->first();
        
        // dump($cateDb->first()->posts()->get());
        #$commentList , $relatedPosts , $postsNavigation
        return view('Frontend.Single', compact('postDb', 'cateDb', 'relatedPosts', 'previousPost', 'nextPost'));
    }
    /**
     * [singlePage load a specific page]
     * @param  [string] $page [name of the page]
     * @return [view object]       [detail page for this kind of page]
     */
    public function singlePage($page)
    {
        if ($page == 'contact') {
            return view('Frontend.Pages.Contact');
        }

        if ($page == 'about') {
            return view('Frontend.Pages.About');
        }

        if ($page == 'ads') {
            return view('Frontend.Pages.Adsvertise');
        }
    }

    /**
     * [pageSearch search news by article]
     * @param  [string] $query [news article]
     * @return [view]        [list page]
     */

    public function pageSearch($query)
    {
        $query = urldecode($query);
        $this->postRepo->loadPopular();
        $posts = Post::whereTranslationLike('title', '%' . $query . '%')->orWhereTranslationLike('slug', '%' . $query . '%')->paginate(8);
        return view('Frontend.Partials.Content.V1.searchPage', compact('posts', 'query'));
    }

}
