<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Db;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class IndexController extends Controller
{

    public $successStatus = 200;

    /**
     * login api
     *
     * @return \Illuminate\Http\Response
     */
    public function getTops(){
        $tops_list = DB::table('tops')->get();
        return $tops_list;
    }

    
}