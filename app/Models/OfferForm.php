<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OfferForm extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'last_name',
        'phone',
        'upload_address',
        'destination_address',
        'images',
        'esya_miktar_bilgi',
    ];

}
