<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Bar extends Model
{

        public function localityId(){
            return $this->belongsTo(Locality::class);
        }
}
