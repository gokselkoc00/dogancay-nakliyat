<?php

namespace App\Http\Controllers;

use App\Models\Kvkk;
use Illuminate\Http\Request;
use Inertia\Inertia;

class KvkkController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/Kvkk/Index');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = Kvkk::first();
        $data = json_decode($data->data, true);

        $hero = $data["hero"];

        $data = $data[$lang];

        return response()->json([
            'data' => $data,
            'hero' => $hero,
        ]);
    }
}
