<?php

namespace App\Http\Controllers;

use App\Models\Counter;
use Illuminate\Http\Request;

class CounterController extends Controller
{
    public function getData()
    {
        $lang = session('lang');
        $data = Counter::first();
        $data = json_decode($data->data, true);
        $image = $data["img_url"];
        if ($lang === 'tr') {
            $data = $data["tr"];
        } elseif ($lang == 'en') {
            $data = $data["en"];
        } elseif ($lang == 'ge') {
            $data = $data["ge"];
        }
        return response()->json([
            'data'=>$data,
            'image' => $image
        ]);
    }
}
