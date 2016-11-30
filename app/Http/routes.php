<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//main page
Route::get('/', 'PostImageController@index');

//form create new post
Route::get('create',['as' => 'create', 'uses' => 'PostImageController@create']);

//upload image to server
Route::post('upload','UploadController@upload');

//update data post
Route::post('update',[ 'as' => 'update','uses' => 'AdminController@update']);

//delete post
Route::post('deleteimage',[ 'as' => 'deleteimage','uses' => 'AdminController@destroy']);

//main admin page
Route::get('admin',[ 'as' => 'admin','uses' => 'AdminController@index']);

//show page with one image
Route::get('postimage/{id}', 'PostImageController@postImage');

Route::auth();


