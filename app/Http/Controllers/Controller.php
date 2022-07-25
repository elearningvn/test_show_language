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
        $data = [];
        $language = [];
        $model = Categories::all();
        $current_language = app()->getLocale();
        if(isset($model) && count($model)>0)
        foreach ($model as $value) {
            $language = explode(",",$value['language']);            
            
            if(isset($value['status']) && $value['status']==1 && in_array($current_language,$language)){                    
                  $data['data'][] = [
                    'title'=> $value['title'],                    
                  ];            
            }
            dd($data);
        }
        
        
        
        return view('pages.welcome',$data);
    }
}
