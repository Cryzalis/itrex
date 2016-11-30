<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;

use App\Http\Requests;

use App\Models\Post;

use Intervention\Image\ImageManagerStatic as Image;

use Session;

use \Input as Input;

class UploadController extends Controller
{
    ///////
    public function upload(Post $postModel, Request $request){

        $inputs =$request->all();
        $this->validate($request, [
            'title'         => 'required|max:255',
            'description'   => 'required|min:10',
            'img'           => 'mimes:jpeg,bmp,png,jpg'
        ]);
        if(isset($inputs['title']) AND isset($inputs['description']) AND isset($inputs['image']) ){

            if($request->file())
                {
                    $filename = str_random(20).'.jpg';
                    $path = base_path().'/uploads/images/original';
                    $pathsmall = base_path().'/uploads/images/small';

                    $image = $request->file('image');
                    //dd($request->file('image')->getRealPath());
                    
                    if($image->move($path,$filename)){
                        if(Image::make($path.'/'.$filename)->resize(262, 157)->save('uploads/images/small/'.$filename)){
                            $data['title']          = $inputs['title'];
                            $data['description']    = $inputs['description'];
                            $data['image']          =  $filename;
                            $data['published']      = 0;
                            
                            $postModel->addImage($data);
                            Session::flash('message', "Image uploaded");
                            

                            }
                        }
                }    


        }
        return redirect()->back();
        }
}


