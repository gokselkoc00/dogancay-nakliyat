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

        // Footer Image
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


        if ($request->process === "footer-img-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        // Welcome
        if ($request->process === 'welcome-update') {

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

            $path = public_path() . '/assets/images/new/welcome/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'welcome-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/welcome/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "welcome-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        // Hakkımızda
        if ($request->process === 'aboutus-update') {

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

            $path = public_path() . '/assets/images/new/aboutus/';
            $file->move($path, $file->getClientOriginalName());
        }

        // Features
        if ($request->process === 'features-update') {

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

            $path = public_path() . '/assets/images/new/features/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'features-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/features/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "features-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        // Services
        if ($request->process === 'services-update') {

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

            $path = public_path() . '/assets/images/new/services/';
            $file->move($path, $file->getClientOriginalName());
        }

        //Galeri
        if ($request->process === 'gallery-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/gallery/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "gallery-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        // References
        if ($request->process === 'references-update') {

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

            $path = public_path() . '/assets/images/new/references/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'references-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/references/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "references-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        if ($request->process === 'references-hero-update') {

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

            $path = public_path() . '/assets/images/new/references/';
            $file->move($path, $file->getClientOriginalName());
        }

        // İletişim
        if ($request->process === 'contactus-update') {

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

            $path = public_path() . '/assets/images/new/contactus-inner/';
            $file->move($path, $file->getClientOriginalName());
        }

        // Hakkımız iç Sayfa
        if ($request->process === 'aboutus-inner-hero-update') {

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

            $path = public_path() . '/assets/images/new/aboutus-inner/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'aboutus-inner-abt-image-update') {

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

            $path = public_path() . '/assets/images/new/aboutus-inner/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'aboutus-inner-perm-lic-update') {

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

            $path = public_path() . '/assets/images/new/aboutus-inner/';
            $file->move($path, $file->getClientOriginalName());
        }

        // Planlama Hazırlık
        if ($request->process === 'planlamaHaz-update') {

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

            $path = public_path() . '/assets/images/new/planlama-hazirlik/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'planlamaHaz-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/planlama-hazirlik/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "planlamaHaz-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        if ($request->process === 'planlamaHaz-hero-update') {

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

            $path = public_path() . '/assets/images/new/planlama-hazirlik/';
            $file->move($path, $file->getClientOriginalName());
        }

        // Taşınma Kontrol Listesi
        if ($request->process === 'tasinma-kont-update') {

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

            $path = public_path() . '/assets/images/new/tasinmaKontrolLis/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'tasinma-kont-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/tasinmaKontrolLis/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "tasinma-kont-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        if ($request->process === 'tasinma-kont-hero-update') {

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

            $path = public_path() . '/assets/images/new/tasinmaKontrolLis/';
            $file->move($path, $file->getClientOriginalName());
        }

        // Taşıma Hizmetlerimiz

        if ($request->process === 'tasimaHiz-hero-update') {

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

            $path = public_path() . '/assets/images/new/tasimahizmetleri/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'tasimaHiz-update') {

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

            $path = public_path() . '/assets/images/new/tasimahizmetleri/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'tasimaHiz-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/tasimahizmetleri/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "tasimaHiz-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        // Karayolu Taşımacılığı

        if ($request->process === 'karayoluTas-hero-update') {

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

            $path = public_path() . '/assets/images/new/karayoluTas/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'karayoluTas-update') {

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

            $path = public_path() . '/assets/images/new/karayoluTas/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'karayoluTas-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/karayoluTas/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "karayoluTas-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        // Havayolu Taşımacılığı

        if ($request->process === 'havayoluTas-hero-update') {

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

            $path = public_path() . '/assets/images/new/havayoluTas/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'havayoluTas-update') {

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

            $path = public_path() . '/assets/images/new/havayoluTas/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'havayoluTas-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/havayoluTas/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "havayoluTas-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        // Denizyolu Taşımacılığı

        if ($request->process === 'denizyoluTas-hero-update') {

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

            $path = public_path() . '/assets/images/new/denizyoluTas/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'denizyoluTas-update') {

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

            $path = public_path() . '/assets/images/new/denizyoluTas/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'denizyoluTas-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/denizyoluTas/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "denizyoluTas-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        // Depolama

        if ($request->process === 'depolama-hero-update') {

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

            $path = public_path() . '/assets/images/new/depolama/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'depolama-update') {

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

            $path = public_path() . '/assets/images/new/depolama/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'depolama-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/depolama/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "depolama-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        // Gumruk İşleri Teslimat

        if ($request->process === 'gumrukTes-hero-update') {

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

            $path = public_path() . '/assets/images/new/gumrukislerTeslimat/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'gumrukTes-update') {

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

            $path = public_path() . '/assets/images/new/gumrukislerTeslimat/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === 'gumrukTes-store') {

            if (!$request->hasFile('image')) {
                return response()->json(['upload_file_not_found'], 400);
            }
            $file = $request->file('image');
            if (!$file->isValid()) {
                return response()->json(['invalid_file_upload'], 400);
            }

            $path = public_path() . '/assets/images/new/gumrukislerTeslimat/';
            $file->move($path, $file->getClientOriginalName());
        }

        if ($request->process === "gumrukTes-del") {
            $path = public_path($request->oldImageName);
            if (File::exists($path)) {
                File::delete($path);
            }
        }

        // KVKK
        if ($request->process === 'kvkk-hero-update') {

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

            $path = public_path() . '/assets/images/new/kvkk/';
            $file->move($path, $file->getClientOriginalName());
        }

        // Çerez Politikası
        if ($request->process === 'cerez-pol-hero-update') {

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

            $path = public_path() . '/assets/images/new/cerezPolitikasi/';
            $file->move($path, $file->getClientOriginalName());
        }

        // Features Card
        if ($request->process === 'featuresC-img-update') {

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

            $path = public_path() . '/assets/images/new/featuresCard/';
            $file->move($path, $file->getClientOriginalName());
        }
    }
});
