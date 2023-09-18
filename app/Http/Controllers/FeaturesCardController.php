<?php

namespace App\Http\Controllers;

use App\Models\FeaturesCard;
use Illuminate\Http\Request;

class FeaturesCardController extends Controller
{
    public function getData()
    {
        $lang = session('lang');
        $data = FeaturesCard::first();
        $data = json_decode($data->data, true);

        if ($lang === 'tr') {
            $data = $data["tr"];
        } elseif ($lang == 'en') {
            $data = $data["en"];
        } elseif ($lang == 'ge') {
            $data = $data["ge"];
        }
        return response()->json($data);
    }
}
