<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;


class cityController extends Controller
{
    //
    public function showCityDetail($city)
        {
            $city_detail=DB::table('cities')->select('id','city_name','city_image')->where('city_name','like',$city)->first();
            $city_id_count=count($city_detail);
            if($city_id_count==1)
            {
                $city_id=$city_detail->id;
                $bars_list=DB::table('bars')->where('city_id','=',$city_id)->join('bar_images','bars.id','=','bar_images.bar_id')->select('bar_name',
                    'bar_address','bar_details','bar_cost','bar_time','bar_contact','bar_images')->get();

                $beer_shops_list= DB::table('beer_shops')->where('city_id','=',$city_id)->join('beer_shops_images','beer_shops.id','=','beer_shops_images.beer_shop_id')->
                select('beer_shop_name','beer_shop_address','beer_shop_details','beer_shop_cost','beer_shop_time','beer_shop_contact','beer_shop_images')->get();

                $liquor_shops_list=DB::table('liquor_shops')->where('city_id','=',$city_id)->join('liquor_shop_images','liquor_shops.id','=','liquor_shop_images.liquor_shop_id')->
                select('liquor_shop_name','liquor_shop_address','liquor_shop_details','liquor_shop_cost','liquor_shop_time','liquor_shop_contact','liquor_shop_images')->get();
                
//                $lounges_list=DB::table('lounges')->where('city_id','=',$city_id)->get();
//                $model_shops_list=DB::table('model_shops')->where('city_id','=',$city_id)->get();
//                $night_clubs_list=DB::table('night_clubs')->where('city_id','=',$city_id)->get();
//                $pubs_list=DB::table('pubs')->where('city_id','=',$city_id)->get();
                return $liquor_shops_list;
            }
        }
}
