<?php

namespace App\Http\Controllers;

use App\Models\PlanlamaHazirlik;
use Illuminate\Http\Request;
use Inertia\Inertia;

class PlanlamaHazirlikController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/PlanlamaVeHazirlik/PlanlamaHazirlik');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = PlanlamaHazirlik::first();
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
