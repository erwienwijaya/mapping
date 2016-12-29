<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rute extends Model
{
    protected $table='tes_rute';
    protected $fillable = ['rute','lat','lng'];
}
