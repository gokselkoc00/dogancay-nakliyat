<?php

namespace App\Http\Controllers;

use App\Models\Galeri;
use Illuminate\Http\Request;

class GaleriController extends Controller
{
    public function getData()
    {
        $lang = session('lang');
        $data = Galeri::first();
        $data = json_decode($data->data, true);
        $images = $data["images"];

        if ($lang === 'tr') {
            $title = $data["tr"];
        } elseif ($lang == 'en') {
            $title = $data["en"];
        } elseif ($lang == 'ge') {
            $title = $data["ge"];
        }

        return response()->json([
            'images' => $images,
            'title' => $title
        ]);
    }
}
