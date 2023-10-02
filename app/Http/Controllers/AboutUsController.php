<?php

namespace App\Http\Controllers;

use App\Models\AboutUs;
use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    public function getData()
    {
        $lang = session('lang');
        $data = AboutUs::first();
        $data = json_decode($data->data, true);
        $image = $data["img_url"];
        if ($lang === 'tr') {
            $data = $data["tr"];
        } elseif ($lang == 'en') {
            $data = $data["en"];
        } elseif ($lang == 'ge') {
            $data = $data["ge"];
        }
        return response()->json([
            'data' => $data,
            'image' => $image
        ]);
    }
}
