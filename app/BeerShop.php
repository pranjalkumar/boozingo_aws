<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class BeerShop extends Model
{

    public function localityId(){
        return $this->belongsTo(Locality::class);
    }
}
