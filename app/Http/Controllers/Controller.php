<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\Categories;
use DB;
class Controller extends BaseController
{
    public function index (){        
        $model = Categories::all();
        if(isset($model) && count($model)>0)
        foreach ($model as $value) {
            if(isset($value['status']) && $value['status']==1){     
                $string = $value['language'];
               
            
            }
        }
        

        
        // return view('pages.welcome');
    }
}
