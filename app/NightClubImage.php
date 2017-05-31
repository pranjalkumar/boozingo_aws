<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class NightClubImage extends Model
{

    public function NightClubId(){
        return $this->belongsTo(NightClub::class);
    }
}
