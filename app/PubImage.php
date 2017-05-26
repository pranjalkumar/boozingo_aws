<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class PubImage extends Model
{

    public function pubId(){
        return $this->belongsTo(Pub::class);
    }
}
