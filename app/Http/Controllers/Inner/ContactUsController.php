<?php

namespace App\Http\Controllers\Inner;

use App\Http\Controllers\Controller;
use App\Models\ContactUsInner;
use App\Models\GeneralInformation;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ContactUsController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/ContactUs/ContactUs');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = ContactUsInner::first();
        $data = json_decode($data->data, true);
        $dataGeneral = GeneralInformation::first();
        $dataGeneral = json_decode($dataGeneral->data, true);

        $map_url = $dataGeneral["map_url"];
        $hero = $data["hero"];

        if ($lang === 'tr') {
            $data = $data["tr"];
            $dataGeneral = $dataGeneral["tr"];
        } elseif ($lang == 'en') {
            $data = $data["en"];
            $dataGeneral = $dataGeneral["en"];
        } elseif ($lang == 'ge') {
            $data = $data["ge"];
            $dataGeneral = $dataGeneral["ge"];
        }
        return response()->json([
            'data' => $data,
            'dataGeneral' => $dataGeneral,
            'map_url' => $map_url,
            'hero' => $hero,
        ]);
    }
}
