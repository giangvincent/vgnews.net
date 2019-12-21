<?php

namespace App\Http\Controllers;

use Validator;
use Illuminate\Http\Request;

use App\Repositories\Frontend\LayoutRepo;
use App\Repositories\Frontend\DataRepo;
use App\Repositories\Frontend\PostRepo;
use App\Model\Content\Layout;
use App\Model\Content\Navigation;
use App\Model\Content\Post;
use App\Model\Content\Category;
use App\Model\Content\Tag;
use App\Contact;

class ajaxController extends Controller
{

    /**
     * handle contact post request
     */
    public function contactPost(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'name' => 'required|max:192',
            'email' => 'required|email|max:192',
            'message' => 'required'
        ], [
            'required'    => ':attribute chưa điền đầy đủ.',
            'max'    => ':attribute phải nhỏ hơn :max ký tự.',
            'email' => 'Email nhập vào không đúng'
        ]);

        if ($validator->fails()) {
            return response()->json($validator);
        }

        $contact = new Contact();
        $contact->name = $req->name;
        $contact->email = $req->email;
        $contact->subject = $req->subject;
        $contact->message = $req->message;
        $contact->save();
        return response()->json(["success" => true]);
    }
}
