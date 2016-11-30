<?php

namespace App\Http\Controllers;


class MainController extends Controller
{
   
    public function __construct()
    {

        $this->imgOriginalPath  = 'uploads/images/original/';
        $this->imgSmallPath     = 'uploads/images/small/';
    }

}
