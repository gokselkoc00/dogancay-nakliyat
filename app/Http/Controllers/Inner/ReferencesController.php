<?php

namespace App\Http\Controllers\Inner;

use App\Http\Controllers\Controller;
use App\Models\References;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ReferencesController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/References/References');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = References::first();
        $data = json_decode($data->data, true);
        $images = $data["images"];
        $heroImage = $data["hero_img_inner"];

        $title = $data[$lang]["inner"];

        usort($images, function ($a, $b) {
            return $a['order'] - $b['order'];
        });

        return response()->json([
            'images' => $images,
            'title' => $title,
            'heroImage' => $heroImage
        ]);
    }
}
