<?php

namespace App\Http\Controllers;

use App\Http\Requests\OfferFormRequest;
use App\Models\ContactUsInner;
use App\Models\OfferForm;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Inertia\Inertia;

class GetOfferController extends Controller
{
    public function index()
    {
        return Inertia::render('InnerPages/GetOffer/GetOffer');
    }

    public function getData()
    {
        $lang = session('lang');
        $data = ContactUsInner::first();
        $data = json_decode($data->data, true);

        $hero = $data["hero"];

        if ($lang === 'tr') {
            $data = $data["tr"];
        } elseif ($lang == 'en') {
            $data = $data["en"];
        } elseif ($lang == 'ge') {
            $data = $data["ge"];
        }
        return response()->json([
            'data' => $data,
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
