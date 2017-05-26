<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class LoungeImage extends Model
{

    public function loungeId(){
        return $this->belongsTo(Lounge::class);
    }
}
