<?php

namespace App\Http\Controllers;

use App\Models\KaraYoluTasimaciligi;
use Illuminate\Http\Request;
use Inertia\Inertia;

class KaraYoluTasimaciligiController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/KaraYoluTasimaciligi/KaraYoluTasimaciligi');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = KaraYoluTasimaciligi::first();
        $data = json_decode($data->data, true);

        $images = $data["images"];
        $hero = $data["hero"];

        if ($lang === 'tr') {
            $data = $data["tr"];
        } elseif ($lang == 'en') {
            $data = $data["en"];
        } elseif ($lang == 'ge') {
            $data = $data["ge"];
        }
        return response()->json([
            'data' => $data,
            'images' => $images,
            'hero' => $hero,
        ]);
    }
}
