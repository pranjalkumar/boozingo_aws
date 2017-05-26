<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ModelShopImage extends Model
{

    public function modelShopId(){
        return $this->belongsTo(ModelShop::class);
    }
}
