<?php

namespace App\Http\Controllers;

use App\Models\Depolama;
use Illuminate\Http\Request;
use Inertia\Inertia;

class DepolamaController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/Depolama/Depolama');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = Depolama::first();
        $data = json_decode($data->data, true);

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
            'hero' => $hero,
        ]);
    }
}
