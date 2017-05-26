<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class LiquorShopImage extends Model
{

    public function liquorShopId(){
        return $this->belongsTo(LiquorShop::class);
    }
}
