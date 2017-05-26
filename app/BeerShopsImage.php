<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class BeerShopsImage extends Model
{

    public function beerShopId(){
        return $this->belongsTo(BeerShop::class);
    }
}
