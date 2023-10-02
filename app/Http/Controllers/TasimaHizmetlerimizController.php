<?php

namespace App\Http\Controllers;

use App\Models\TasimaHizmetlerimiz;
use App\Models\UluslararasiTasima;
use Illuminate\Http\Request;
use Inertia\Inertia;

class TasimaHizmetlerimizController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/TasimaHizmetlerimiz/TasimaHizmetlerimiz');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = TasimaHizmetlerimiz::first();
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
