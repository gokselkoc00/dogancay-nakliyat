<?php

namespace App\Http\Controllers;

use App\Models\CerezPolitikasi;
use Illuminate\Http\Request;
use Inertia\Inertia;

class CerezPolitikalariController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/CerezPolitikalari/Index');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = CerezPolitikasi::first();
        $data = json_decode($data->data, true);

        $hero = $data["hero"];

        $data = $data[$lang];

        return response()->json([
            'data' => $data,
            'hero' => $hero,
        ]);
    }
}
