<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Pub extends Model
{

    public function localityId(){
        return $this->belongsTo(Locality::class);
    }
}
