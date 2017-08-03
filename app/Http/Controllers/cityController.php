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
            $bars_list=DB::table('bars')->where('city_id','=',$city_id)->join('bar_images','bars.id','=','bar_images.bar_id')->select('id','bar_name',
                'bar_address','bar_cost','bar_time','bar_not_working_day','bar_contact','bar_images')->get()->toArray();

            $beer_shops_list= DB::table('beer_shops')->where('city_id','=',$city_id)->join('beer_shops_images','beer_shops.id','=','beer_shops_images.beer_shop_id')->
            select('id','beer_shop_name','beer_shop_address','beer_shop_not_working_day','beer_shop_cost','beer_shop_time','beer_shop_contact','beer_shop_images')->get()->toArray();

            $liquor_shops_list=DB::table('liquor_shops')->where('city_id','=',$city_id)->join('liquor_shop_images','liquor_shops.id','=','liquor_shop_images.liquor_shop_id')->
            select('id','liquor_shop_name','liquor_shop_address','liquor_shop_not_working_day','liquor_shop_cost','liquor_shop_time','liquor_shop_contact','liquor_shop_images')->get()->toArray();

            $lounges_list=DB::table('lounges')->where('city_id','=',$city_id)->join('lounge_images','lounges.id','=','lounge_images.lounge_id')->select('id','lounge_name','lounge_address',
                'lounge_cost','lounge_not_working_day','lounge_time','lounge_contact','lounge_images')->get()->toArray();

            $model_shop_list=DB::table('model_shops')->where('city_id','=',$city_id)->join('model_shop_images','model_shops.id','=','model_shop_images.model_shop_id')->select('id','model_shop_name',
                'model_shop_address','model_shop_not_working_day','model_shop_cost','model_shop_time','model_shop_contact','model_shop_images')->get()->toArray();

            $night_clubs_list=DB::table('night_clubs')->where('city_id','=',$city_id)->join('night_club_images','night_clubs.id','=','night_club_images.night_club_id')->select('id','night_club_name',
                'night_club_address','night_club_not_working_day','night_club_cost','night_club_time','night_club_contact','night_club_images')->get()->toArray();

            $pubs_list=DB::table('pubs')->where('city_id','=',$city_id)->join('pub_images','pubs.id','=','pub_images.pub_id')->select('id','pub_name','pub_address','pub_not_working_day','pub_cost','pub_time','pub_contact',
                'pub_images')->get()->toArray();


            $total_match=json_encode(array('city_detail'=>$city_detail,'bars'=>$bars_list,'beer_shops'=>$beer_shops_list,'liquor_shops'=>$liquor_shops_list,'lounges'=>$lounges_list,'model_shops'=>$model_shop_list,'night_clubs'=>
            $night_clubs_list,'pubs'=>$pubs_list));

            return $total_match;
        }
        else
        {
            return 'Sorry, the searched city is not available';
        }
    }
}
