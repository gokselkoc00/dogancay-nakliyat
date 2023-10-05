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
        $headerData = [];
        if ($lang === 'tr') {
            $headerData = $data["tr"];
            $languages = $data["languages"]["tr"];
        } elseif ($lang == 'en') {
            $headerData = $data["en"];
            $languages = $data["languages"]["tr"];
        } elseif ($lang == 'ge') {
            $headerData = $data["ge"];
            $languages = $data["languages"]["tr"];
        }
        return response()->json([
            'data' => $headerData,
            'logo' => $logo,
            'whatsapp_phone' => $whatsapp_phone,
            'languages' => $languages,
        ]);
    }
}
