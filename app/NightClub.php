<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class NightClub extends Model
{

    public function cityId(){
        return $this->belongsTo(City::class);
    }
}
