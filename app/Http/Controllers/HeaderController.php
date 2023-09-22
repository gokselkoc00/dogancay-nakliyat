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
        $whatsapp_phone = $data['whatsapp_phone'];
        if ($lang === 'tr') {
            $data = $data["tr"];
        } elseif ($lang == 'en') {
            $data = $data["en"];
        } elseif ($lang == 'ge') {
            $data = $data["ge"];
        }
        return response()->json([
            'data' => $data,
            'logo' => $logo,
            'whatsapp_phone' => $whatsapp_phone
        ]);
    }
}
