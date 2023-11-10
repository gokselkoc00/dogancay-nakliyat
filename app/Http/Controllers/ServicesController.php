<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Services;
use Illuminate\Http\Request;

class ServicesController extends Controller
{
    public function getData()
    {
        $lang = session('lang');
        $data = Services::first();
        $decodedData = json_decode($data->data, true);

        if ($lang === 'tr') {
            $data = $decodedData["tr"];
        } elseif ($lang == 'en') {
            $data = $decodedData["en"];
        } elseif ($lang == 'ge') {
            $data = $decodedData["ge"];
        }

        // Hizmetlerimiz listesindeki son eklenen 6 öğeyi alır.
        // $data["data"] = array_reverse($data["data"]);
        // $data["data"] = array_slice($data["data"], 0, 6);

        return response()->json($data);
    }
}
