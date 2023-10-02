<?php

namespace App\Http\Controllers;

use App\Models\References;
use Illuminate\Http\Request;

class ReferencesController extends Controller
{
    public function getData()
    {
        $lang = session('lang');
        $data = References::first();
        $data = json_decode($data->data, true);
        $images = $data["images"];

        if ($lang === 'tr') {
            $title = $data["tr"]["home"];
        } elseif ($lang == 'en') {
            $title = $data["en"]["home"];
        } elseif ($lang == 'ge') {
            $title = $data["ge"]["home"];
        }

        return response()->json([
            'images' => $images,
            'title' => $title
        ]);
    }
}
