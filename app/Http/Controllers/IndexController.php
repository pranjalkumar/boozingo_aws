<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    //

    public function showMainPage()
    {
        $main_page_images=DB::table('main_images')->select('purpose','image_url')->get()->toArray();
        $cities=DB::table('cities')->select('city_name','city_image')->take(6)->get()->toArray();
        $data=json_encode(array('images'=>$main_page_images,'cities'=>$cities));
        return $data;
    }
    public function citySearch($city)
    {   $search_result=DB::table('cities')->select('city_name')->where('city_name','like',$city.'%')->get()->toJson();
        return $search_result;

    }
    public function allCity(){
        $allCity=DB::table('cities')->select('city_name')->get()->toArray();
        $result=json_encode(array('city'=>$allCity));
        return $result;
    }

}
