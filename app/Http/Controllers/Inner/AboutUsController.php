<?php

namespace App\Http\Controllers\Inner;

use App\Http\Controllers\Controller;
use App\Models\AboutUsInner;
use Illuminate\Http\Request;
use Inertia\Inertia;

class AboutUsController extends Controller
{
    public function index(){
        return Inertia::render('InnerPages/AboutUs/AboutUs');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = AboutUsInner::first();
        $data = json_decode($data->data, true);

        $image = $data["image"];
        $hero = $data["hero"];
        $permission_licence = $data["permission_licence"];

        if ($lang === 'tr') {
            $data = $data["tr"];
        } elseif ($lang == 'en') {
            $data = $data["en"];
        } elseif ($lang == 'ge') {
            $data = $data["ge"];
        }
        return response()->json([
            'data' => $data,
            'image' => $image,
            'hero' => $hero,
            'permission_licence' => $permission_licence,
        ]);
    }
}
