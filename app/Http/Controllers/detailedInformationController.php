<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class detailedInformationController extends Controller
{
    //
    public function detail($type,$type_id){
            if($type=='bar')
            {
                $data=DB::table('bars')->where('id','=',$type_id)->select('bar_name',
                    'bar_address','bar_details','bar_cost','bar_geolocation','bar_time','bar_not_working_day','bar_contact','bar_booze_served','bar_food','bar_sitting_facility',
                    'bar_music','bar_payment','bar_ac')->get()->toArray();
                $data_images=DB::table('bar_images')->where('bar_id','=',$type_id)->select('bar_images')->get()->toArray();
                $result=json_encode(array('bars_detail'=>$data,'bar_images'=>$data_images));
                if(count($data)==0)
                {
                    return 'Sorry!! There is no result to display';
                }
            }
            elseif ($type=='beer_shop')
            {
                $data=DB::table('beer_shops')->where('id','=',$type_id)->select('beer_shop_name','beer_shop_address','beer_shop_details','beer_shop_cost','beer_shop_geolocation','beer_shop_time',
                    'beer_shop_contact','beer_shop_not_working_day','beer_shop_booze_served','beer_shop_payment')->get()->toArray();
                $data_images=DB::table('beer_shops_images')->where('beer_shop_id','=',$type_id)->select('beer_shop_images')->get()->toArray();
                $result=json_encode(array('beer_shop_detail'=>$data,'beer_shop_images'=>$data_images));
                if(count($data)==0)
                {
                    return 'Sorry!! There is no result to display';
                }
            }
            elseif ($type=='liquor_shop')
            {
                $data=DB::table('liquor_shops')->where('id','=',$type_id)->select('liquor_shop_name','liquor_shop_address','liquor_shop_details','liquor_shop_cost','liquor_shop_geolocation',
                    'liquor_shop_time','liquor_shop_contact','liquor_shop_not_working_day','liquor_shop_booze_served','liquor_shop_payment')->get()->toArray();
                $data_images=DB::table('liquor_shop_images')->where('liquor_shop_id','=',$type_id)->select('liquor_shop_images')->get()->toArray();
                $result=json_encode(array('liquor_shop_detail'=>$data_images,'liquor_shop_images'=>$data_images));
                if(count($data)==0)
                {
                    return 'Sorry!! There is no result to display';
                }
            }
            elseif ($type=='lounge')
            {
                $data=DB::table('lounges')->where('id','=',$type_id)->select('lounge_name','lounge_address','lounge_details','lounge_cost','lounge_geolocation','lounge_time','lounge_contact'
                ,'lounge_not_working_day','lounge_booze_served','lounge_food','lounge_sitting_facility','lounge_music','lounge_payment','lounge_ac')->get()->toArray();
                $data_images=DB::table('lounge_images')->where('lounge_id','=',$type_id)->select('lounge_images')->get()->toArray();
                $result=json_encode(array('lounge_detail'=>$data,'lounge_images'=>$data_images));
                if(count($data)==0)
                {
                    return 'Sorry!! There is no result to display';
                }
            }
            elseif ($type=='model_shop')
            {
                $data=DB::table('model_shops')->where('id','=',$type_id)->select('model_shop_name','model_shop_address','model_shop_details','model_shop_cost','model_shop_geolocation',
                    'model_shop_time','model_shop_contact','model_shop_not_working_day','model_shop_booze_served','model_shop_payment')->get()->toArray();
                $data_images=DB::table('model_shop_images')->where('model_shop_id','=',$type_id)->select('model_shop_images')->get()->toArray();
                $result=json_encode(array('model_shop_detail'=>$data,'model_shop_images'=>$data_images));
                if(count($data)==0)
                {
                    return 'Sorry!! There is no result to display';
                }
            }
            elseif ($type=='night_club')
            {
                $data=DB::table('night_clubs')->where('id','=',$type_id)->select('night_club_name','night_club_address','night_club_details','night_club_cost','night_club_geolocation','night_club_time',
                    'night_club_contact','night_club_not_working_day','night_club_booze_served','night_club_food','night_club_sitting_facility','night_club_music','night_club_payment','night_club_ac')->get()->toArray();
                $data_images=DB::table('night_club_images')->where('night_club_id','=',$type_id)->select('night_club_images')->get()->toArray();
                $result=json_encode(array('night_club'=>$data,'night_club_images'=>$data_images));
                if(count($data)==0)
                {
                    return 'Sorry!! There is no result to display';
                }
            }
            elseif ($type=='pub')
            {
                $data=DB::table('pubs')->where('id','=',$type_id)->select('pub_name','pub_address','pub_details','pub_cost','pub_geolocation','pub_time','pub_contact','pub_not_working_day','pub_booze_served'
                ,'pub_food','pub_sitting_facility','pub_music','pub_payment','pub_ac')->get()->toArray();
                $data_images=DB::table('pub_images')->where('pub_id','=',$type_id)->select('pub_images')->get()->toArray();
                $result=json_encode(array('pub'=>$data,'pub_images'=>$data_images));
                if(count($data)==0)
                {
                    return 'Sorry!! There is no result to display';
                }
            }
            else
            {
                return "Sorry!! There is no result to display";
            }

            return $result;

    }
}
