<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;

use App\Http\Requests;

use App\Models\Post;

use Intervention\Image\ImageManagerStatic as Image;

use Session;

use \Input as Input;

class UploadController extends MainController
{

    public function upload(Post $postModel, Request $request){

        $inputs =$request->all();
        $this->validate($request, [
            'title'         => 'required|max:255',
            'description'   => 'required|min:10',
            'img'           => 'mimes:jpeg,bmp,jpg'
        ]);
     
        if($request->file())
            {
                $image = $request->file('image');
                $filename = str_random(20). '.' . $image->getClientOriginalExtension();

                //dd($request->file('image')->getRealPath());    
                if($image->move($this->imgOriginalPath,$filename)){
                    if(Image::make($this->imgOriginalPath.$filename)->resize(262, 157)->save($this->imgSmallPath.$filename)){
                        $data['title']          = $inputs['title'];
                        $data['description']    = $inputs['description'];
                        $data['image']          =  $filename;
                        $data['published']      = 0;
                        
                        $postModel->addImage($data);
                        Session::flash('message', "Image uploaded");
                        

                    }
                }
            }
    
        return redirect()->back();
        }
}


