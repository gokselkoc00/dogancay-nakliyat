<?php

namespace App\Http\Controllers;

use App\Models\GumrukIsleriTeslimat;
use Illuminate\Http\Request;
use Inertia\Inertia;

class GumrukIsleriTeslimatController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/GumrukIsleriTeslimat/GumrukIsleriTeslimat');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = GumrukIsleriTeslimat::first();
        $data = json_decode($data->data, true);

        if ($lang === 'tr') {
            $data = $data["tr"];
        } elseif ($lang == 'en') {
            $data = $data["en"];
        } elseif ($lang == 'ge') {
            $data = $data["ge"];
        }
        return response()->json($data);
    }}
