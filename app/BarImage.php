<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class BarImage extends Model
{

    public function barId(){
        return $this->belongsTo(Bar::class);
    }
}
