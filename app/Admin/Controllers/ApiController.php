<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Facades\Admin;
use App\Model\Content\Tag;
use App\Model\Content\Category;


class ApiController extends Controller
{
	/**
	 * [getTag ajax call, retrieve tag data include name and id from tag database ]
	 * @input query by "q" variable
	 * @return json [json data contain ]
	 */
    public function getTag(Request $request)
    {
    	$q = $request->get('q');

    	return Tag::whereTranslationLike('title', "%$q%")->paginate(null);
    }
    /**
     * [getCategory ajax call, retrieve category data include name and id from tag database]
     * @input query by "q" variable
     * @return [json] [json data contain]
     */
    public function getCategory(Request $request)
    {
    	$q = $request->get('q');

    	return Category::where('name', 'like', "%$q%")->paginate(null, ['id', 'name as text']);
    }
}
