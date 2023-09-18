<?php

namespace App\Http\Controllers;

use App\Models\UluslararasiTasima;
use Illuminate\Http\Request;
use Inertia\Inertia;

class UluslararasiTasimaController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/UluslararasiTasima/UluslararasiTasima');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = UluslararasiTasima::first();
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
