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
        $kvkk = $data["policy"]["kvkk"];
        $cerez_politikasi = $data["policy"]["cerez_politikasi"][$lang];

        $languages = $data["languages"][$lang];
        $company_info = $data["company_info"][$lang];

        return response()->json([
            'footer' => $footer,
            'languages' => $languages,
            'companies' => $companies,
            'company_info' => $company_info,
            'kvkk' => $kvkk,
            'cerez_politikasi' => $cerez_politikasi,
        ]);
    }
}
