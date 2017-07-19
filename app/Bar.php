<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Bar extends Model
{

        public function CityId(){
            return $this->belongsTo(City::class);
        }
}
