<?php

namespace App\Http\Controllers\Inner;

use App\Http\Controllers\Controller;
use App\Models\References;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ReferencesController extends Controller
{
    public function index(){
        return Inertia::render('InnerPages/References/References');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = References::first();
        $data = json_decode($data->data, true);
        $images = $data["images"];

        if ($lang === 'tr') {
            $title = $data["tr"]["inner"];
        } elseif ($lang == 'en') {
            $title = $data["en"]["inner"];
        } elseif ($lang == 'ge') {
            $title = $data["ge"]["inner"];
        }

        return response()->json([
            'images' => $images,
            'title' => $title
        ]);
    }
}
