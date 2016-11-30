<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Models\Post;

use Carbon\Carbon;

use Intervention\Image\ImageManagerStatic as Image;

class PostImageController extends Controller
{
    //

    public function index(Post $postModel)
    {
        // $posts = Post::all();
       // dd($posts);
        $posts = $postModel->getPublishedPosts();

        return view('post.index',['posts' => $posts]);
    }

    public function create()
    {
        return view('post.create');
    }
    //show page with one image
    public function postImage($id){

        $post = Post::find($id);
       return view('post.postimage',['post' => $post]);
    }
    




}

