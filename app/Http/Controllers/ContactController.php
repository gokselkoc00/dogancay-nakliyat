<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactFormRequest;
use App\Models\Contact;
use App\Models\ContactForm;
use App\Models\GeneralInformation;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function getData()
    {
        $lang = session('lang');
        $data = Contact::first();
        $data = json_decode($data->data, true);
        $dataGeneral = GeneralInformation::first();
        $dataGeneral = json_decode($dataGeneral->data, true);


        if ($lang === 'tr') {
            $data = $data["tr"];
            $dataGeneral = $dataGeneral["tr"];
        } elseif ($lang == 'en') {
            $data = $data["en"];
            $dataGeneral = $dataGeneral["en"];
        } elseif ($lang == 'ge') {
            $data = $data["ge"];
            $dataGeneral = $dataGeneral["ge"];
        }
        return response()->json([
            'data' => $data,
            'dataGeneral' => $dataGeneral
        ]);
    }

    public function store(ContactFormRequest $request)
    {
        $isValidated =  $request->validated();
        if ($isValidated) {

            $isCreated = ContactForm::create([
                'name' => $request->name,
                'last_name' => $request->last_name,
                'email' => $request->email,
                'phone' => $request->phone,
                'message' => $request->message,
            ]);
            if ($isCreated) {
                redirect()->back();
            }
        }
    }
}
