<?php

namespace App\Http\Controllers;

use App\Models\Footer;
use Illuminate\Http\Request;

class FooterController extends Controller
{
    public function getData()
    {
        $lang = session('lang');
        $data = Footer::first();
        $data = json_decode($data->data, true);
        $footer = $data["data"];
        $companies = $data["companies"];

        if ($lang === 'tr') {
            $languages = $data["languages"]["tr"];
        } elseif ($lang == 'en') {
            $languages = $data["languages"]["en"];
        } elseif ($lang == 'ge') {
            $languages = $data["languages"]["ge"];
        }

        return response()->json([
            'footer' => $footer,
            'languages' => $languages,
            'companies' => $companies
        ]);
    }
}
