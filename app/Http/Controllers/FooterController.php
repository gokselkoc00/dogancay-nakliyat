<?php

namespace App\Http\Controllers;

use App\Models\Footer;
use Illuminate\Http\Request;

class FooterController extends Controller
{
    public function getData()
    {
        // $lang = session('lang');
        $data = Footer::first();
        $data = json_decode($data->data, true);
        $data = $data["data"];

        return response()->json($data);
    }
}
