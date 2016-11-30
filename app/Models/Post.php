<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

use Carbon\Carbon;

use Session;
use Redirect;

class Post extends Model
{
    protected $fillable = [ 'title', 'published', 'published_at'];


    public function getAllPost()
    {
        $posts = Post::latest('id')->paginate(12);
        return $posts;
    }
    public function getPublishedPosts()
    {
        $posts = Post::latest('published_at')->published()->paginate(12);
        return $posts;
    }

    public function scopePublished($query)
    {
    $query->where('published_at', "<=", Carbon::now())
        ->where('published', '=', 1);
    }

    public function scopeUnPublished($query)
    {
        $query->where('published_at', ">=", Carbon::now())

            ->orWhere('published', '=', 0);

    }
    public function addImage($data)
    {
        $post = new Post;

        $post->title = $data['title'];
        $post->description = $data['description'];
        $post->image = $data['image'];
        $post->published = $data['published'];

        $post->save();

        
        
       // }else{
         //    $response = ['status'=>false, 'message' => 'It happened something wild ... try for later'];
           // return view('post.message',['response' => $response]);
        //}

    }

    public function getUnPublishedPosts(){
        return Post::latest('published_at')->unPublished()->get();

    }

}
