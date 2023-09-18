<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LanguageController extends Controller
{
    public function setLanguage(Request $request)
    {
        // config('translatable.locales');

        // Request üzerinden kullanıcının seçtiği dili alın
        $language = $request->input('language');

        // Dil değişkenini oturuma kaydedin
        $request->session()->put('lang', $language);

        return back()->withInput();
    }
}
