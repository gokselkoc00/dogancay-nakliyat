<?php

namespace App\Http\Controllers;

use App\Models\Header;
use Illuminate\Http\Request;

class HeaderController extends Controller
{
    public function getData()
    {

        $lang = session('lang');
        $data = Header::first();
        $data = json_decode($data->data, true);
        $logo = $data['logo'];
        if ($lang === 'tr') {
            // !!! UYARI languages değişkeninin  $data = $data["tr"] işleminden önce çalıştırılması gerekir. !!!
            $languages = $data["languages"]["tr"];
            $data = $data["tr"];
        } elseif ($lang == 'en') {
            // !!! UYARI languages değişkeninin  $data = $data["en"] işleminden önce çalıştırılması gerekir. !!!
            $languages = $data["languages"]["en"];
            $data = $data["en"];
        } elseif ($lang == 'ge') {
            // !!! UYARI languages değişkeninin  $data = $data["ge"] işleminden önce çalıştırılması gerekir. !!!
            $languages = $data["languages"]["ge"];
            $data = $data["ge"];
        }
        return response()->json([
            'data' => $data,
            'languages' => $languages,
            'logo' => $logo
        ]);
    }
}
