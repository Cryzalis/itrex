<?php

namespace App\Http\Controllers;


use App\Http\Requests;

use Illuminate\Http\Request;

use App\Models\Post;

use Carbon\Carbon;

use File;

use Session;

class AdminController extends MainController
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

        $this->middleware('admin');
        $this->imgOriginalPath  = 'uploads/images/original/';
        $this->imgSmallPath     = 'uploads/images/small/';
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
        $post = Post::find($request->input('id'));
        Post::destroy($request->input('id'));
        if(File::delete($this->imgOriginalPath.$post->image) AND File::delete($this->imgSmallPath.$post->image)){
            Session::flash('message', "Image delete: ".$post->image);
        }

        return redirect()->back();
    }
}
