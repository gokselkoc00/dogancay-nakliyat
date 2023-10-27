<?php

namespace App\Http\Controllers;

use App\Models\GeneralInformation;
use App\Models\Header;
use Illuminate\Http\Request;

class HeaderController extends Controller
{
    public function getData()
    {

        $lang = session('lang');
        $data = Header::first();
        $data = json_decode($data->data, true);

        $dataGeneral = GeneralInformation::first();
        $dataGeneral = json_decode($dataGeneral->data, true);

        $logo = $dataGeneral['logo'];
        $whatsapp_phone = $dataGeneral['whatsapp_phone'];
        $whatsapp_img = $dataGeneral['whatsapp_img'];
        $headerData = [];

        if ($lang === 'tr') {
            $headerData = $data["tr"];
            $languages = $data["languages"]["tr"];
        } elseif ($lang == 'en') {
            $headerData = $data["en"];
            $languages = $data["languages"]["en"];
        } elseif ($lang == 'ge') {
            $headerData = $data["ge"];
            $languages = $data["languages"]["ge"];
        }
        return response()->json([
            'data' => $headerData,
            'logo' => $logo,
            'whatsapp_phone' => $whatsapp_phone,
            'whatsapp_img' => $whatsapp_img,
            'languages' => $languages,
        ]);
    }
}
