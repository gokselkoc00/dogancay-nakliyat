<?php

namespace App\Http\Controllers;

use App\Models\References;
use Illuminate\Http\Request;

class ReferencesController extends Controller
{
    public function getData()
    {
        $lang = session('lang');
        $data = References::first();
        $data = json_decode($data->data, true);
        $images = $data["images"];

        $title = $data[$lang]["home"];

        usort($images, function ($a, $b) {
            return $a['order'] - $b['order'];
        });
        
        return response()->json([
            'images' => $images,
            'title' => $title
        ]);
    }
}
