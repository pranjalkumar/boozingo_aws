<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ModelShop extends Model
{
    public function localityId(){
        return $this->belongsTo(locality::class);
    }
}
