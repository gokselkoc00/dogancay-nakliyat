<?php

namespace App\Http\Controllers;

use App\Models\UluslararasiDepolama;
use Illuminate\Http\Request;
use Inertia\Inertia;

class UluslararasiDepolamaController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/UluslararasiDepolama/UluslararasiDepolama');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = UluslararasiDepolama::first();
        $data = json_decode($data->data, true);

        if ($lang === 'tr') {
            $data = $data["tr"];
        } elseif ($lang == 'en') {
            $data = $data["en"];
        } elseif ($lang == 'ge') {
            $data = $data["ge"];
        }
        return response()->json($data);
    }
}
