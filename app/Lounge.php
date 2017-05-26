<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Lounge extends Model
{

    public function localityId(){
        return $this->belongsTo(Locality::class);
    }
}
