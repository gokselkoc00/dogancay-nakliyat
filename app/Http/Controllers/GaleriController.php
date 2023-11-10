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

        // 'order' değerine göre sıralama
        usort($images, function ($a, $b) {
            return $a['order'] - $b['order'];
        });
        $title = $data[$lang];

        return response()->json([
            'images' => $images,
            'title' => $title
        ]);
    }
}
