<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CounterController;
use App\Http\Controllers\DenizYoluTasimaciligiController;
use App\Http\Controllers\FeaturesCardController;
use App\Http\Controllers\FeaturesController;
use App\Http\Controllers\FooterController;
use App\Http\Controllers\GumrukIsleriTeslimatController;
use App\Http\Controllers\HavaYoluTasimaciligiController;
use App\Http\Controllers\HeaderController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\KaraYoluTasimaciligiController;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\PlanlamaHazirlikController;
use App\Http\Controllers\TasinmaKontrolListesiController;
use App\Http\Controllers\UluslararasiDepolamaController;
use App\Http\Controllers\UluslararasiNakliyatController;
use App\Http\Controllers\UluslararasiTasimaController;
use App\Http\Controllers\WelcomeController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

$lang = session('lang');
if (empty($lang)) {
    session()->put('lang', 'tr');
}


// Route::get('test', function () {
//     return Inertia::render('Test');
// });

// Language Change Request

Route::post('/set-language', [LanguageController::class, 'setLanguage'])->name('setLanguage');

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/header-data', [HeaderController::class, 'getData'])->name('header.data');
Route::get('/footer-data', [FooterController::class, 'getData'])->name('footer.data');
Route::get('/welcome-data', [WelcomeController::class, 'getData'])->name('welcome.data');
Route::get('/features-card-data', [FeaturesCardController::class, 'getData'])->name('features-card.data');
Route::get('/features-data', [FeaturesController::class, 'getData'])->name('features.data');
Route::get('/counter-data', [CounterController::class, 'getData'])->name('counter.data');
Route::get('/blog-data', [BlogController::class, 'getData'])->name('blog.data');
Route::get('/contact-data', [ContactController::class, 'getData'])->name('contact.data');
Route::post('/contact-store', [ContactController::class, 'store'])->name('contact.store');
Route::get('/uluslararasi-nakliyat-data', [UluslararasiNakliyatController::class, 'getData'])->name('uluslararasi-nakliyat.data');
Route::get('/uluslararasi-nakliyat', [UluslararasiNakliyatController::class, 'index'])->name('uluslararasi-nakliyat.index');
Route::get('/planlama-hazirlik-data', [PlanlamaHazirlikController::class, 'getData'])->name('planlama-hazirlik.data');
Route::get('/planlama-hazirlik', [PlanlamaHazirlikController::class, 'index'])->name('planlama-hazirlik.index');
Route::get('/tasinma/kontrol/listesi-data', [TasinmaKontrolListesiController::class, 'getData'])->name('tasinma-kontrol-lis.data');
Route::get('/tasinma-kontrol-listesi', [TasinmaKontrolListesiController::class, 'index'])->name('tasinma-kontrol-lis.index');
Route::get('/uluslararasi-tasima-data', [UluslararasiTasimaController::class, 'getData'])->name('uluslararasi-tasima.data');
Route::get('/uluslararasi-tasima', [UluslararasiTasimaController::class, 'index'])->name('uluslararasi-tasima.index');
Route::get('/karayolu-tasimaciligi-data', [KaraYoluTasimaciligiController::class, 'getData'])->name('karayolu-tasimaciligi.data');
Route::get('/karayolu-tasimaciligi', [KaraYoluTasimaciligiController::class, 'index'])->name('karayolu-tasimaciligi.index');
Route::get('/havayolu-tasimaciligi-data', [HavaYoluTasimaciligiController::class, 'getData'])->name('havayolu-tasimaciligi.data');
Route::get('/havayolu-tasimaciligi', [HavaYoluTasimaciligiController::class, 'index'])->name('havayolu-tasimaciligi.index');
Route::get('/denizyolu-tasimaciligi-data', [DenizYoluTasimaciligiController::class, 'getData'])->name('denizyolu-tasimaciligi.data');
Route::get('/denizyolu-tasimaciligi', [DenizYoluTasimaciligiController::class, 'index'])->name('denizyolu-tasimaciligi.index');
Route::get('/uluslararasi-depolama-data', [UluslararasiDepolamaController::class, 'getData'])->name('uluslararasi-depolama.data');
Route::get('/uluslararasi-depolama', [UluslararasiDepolamaController::class, 'index'])->name('uluslararasi-depolama.index');
Route::get('/gumruk-isleri-teslimat-data', [GumrukIsleriTeslimatController::class, 'getData'])->name('gumruk-isleri-tes.data');
Route::get('/gumruk-isleri-teslimat', [GumrukIsleriTeslimatController::class, 'index'])->name('gumruk-isleri-tes.index');
