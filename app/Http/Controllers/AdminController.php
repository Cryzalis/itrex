<?php

namespace App\Http\Controllers;


use App\Http\Requests;

use Illuminate\Http\Request;

use App\Models\Post;

use Carbon\Carbon;

class AdminController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

        $this->middleware('admin');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Post $postModel)
    {  
        $posts = $postModel->getAllPost();
        return view('admin',['posts' => $posts]);
    }

    public function update(Post $postModel, Request $request)
    {
        $data = $request->all();
        if(isset($data['published']))
        {
            $data['published'] = 1;
        }else
        {
            $data['published'] = 0;
        }
            


        $post = Post::find($data['id']);

        $post->published = $data['published'];

        $post->title = $data['title'];

        $post->description = $data['description'];

        $post->published_at = Carbon::now();

        $post->save();

        return redirect()->back();
    }

    public function destroy(Post $postModel, Request $request)
    {
        Post::destroy($request->input('id'));
        return redirect()->back();
    }
}
