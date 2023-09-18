<?php

namespace App\Http\Controllers;

use App\Models\HavaYoluTasimaciligi;
use Illuminate\Http\Request;
use Inertia\Inertia;

class HavaYoluTasimaciligiController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/HavaYoluTasimaciligi/HavaYoluTasimaciligi');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = HavaYoluTasimaciligi::first();
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
