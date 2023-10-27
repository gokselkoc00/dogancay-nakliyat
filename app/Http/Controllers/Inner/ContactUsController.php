<?php

namespace App\Http\Controllers\Inner;

use App\Http\Controllers\Controller;
use App\Http\Requests\OfferFormRequest;
use App\Models\ContactForm;
use App\Models\ContactUsInner;
use App\Models\GeneralInformation;
use App\Models\OfferForm;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Illuminate\Support\Str;

class ContactUsController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/ContactUs/ContactUs');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = ContactUsInner::first();
        $data = json_decode($data->data, true);
        $dataGeneral = GeneralInformation::first();
        $dataGeneral = json_decode($dataGeneral->data, true);

        $map_url = $dataGeneral["map_url"];
        $hero = $data["hero"];

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
            'dataGeneral' => $dataGeneral,
            'map_url' => $map_url,
            'hero' => $hero,
        ]);
    }

    public function store(OfferFormRequest $request)
    {
     
        $destinationPath = 'uploads';

        $isValidated =  $request->validated();
        if ($isValidated) {

            if ($request->hasFile('images')) {
                $files = $request->file('images');

                $imageList = '';

                $fileCount = count($files);

                for ($i = 0; $i < $fileCount; $i++) {
                    $file = $files[$i];
                    $extension = $file->getClientOriginalExtension();
                    $imageName = Str::random(20) . '_' . time() . '.' . $extension;
                    $file->move(public_path($destinationPath), $imageName);

                    // Son resimse, ayracı eklememe koşulu
                    if ($i === $fileCount - 1) {
                        $imageList .= $destinationPath . '/' . $imageName;
                    } else {
                        $imageList .= $destinationPath . '/' . $imageName . '!*;!';
                    }
                }
            }

            $isCreated = OfferForm::create([
                'name' => $request->name,
                'last_name' => $request->last_name,
                'phone' => $request->phone,
                'upload_address' => $request->upload_address,
                'destination_address' => $request->destination_address,
                'gidecegi_adres' => $request->gidecegi_adres,
                'images' => $imageList,
            ]);
            if ($isCreated) {
                redirect()->route('contact-us-inner.index');
            }
        }
    }
}
