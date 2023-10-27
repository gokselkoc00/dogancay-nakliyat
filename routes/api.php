<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\File;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/upload-file', function (Request $request) {

    $apiSecretKey = config('app.aliases.API_SECRET_KEY');
    $encryptedKey = md5(sha1(md5(md5(sha1($apiSecretKey)))));

    if ($request->secret_key != $encryptedKey) {
        return response()->json(['unauthorized'], 400);
    } else {

        // General
        if ($request->process === 'general-update') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $oldImageName = $request->oldImageName;
            if ($oldImageName && File::exists(public_path($oldImageName))) {
                File::delete(public_path($oldImageName));
            }

            $path = public_path() . '/assets/images/new/generalInformation/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'footer-img-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/footer-img/';
            $file->move($path, $file->getClientOriginalName());
        }

        // Footer Image
        if ($request->process === "footer-img-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

      }
});
