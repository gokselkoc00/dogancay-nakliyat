<?php

use App\Http\Controllers\AboutUsController;
use App\Http\Controllers\CerezPolitikalariController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CounterController;
use App\Http\Controllers\DenizYoluTasimaciligiController;
use App\Http\Controllers\DepolamaController;
use App\Http\Controllers\FeaturesCardController;
use App\Http\Controllers\FeaturesController;
use App\Http\Controllers\FooterController;
use App\Http\Controllers\GaleriController;
use App\Http\Controllers\GetOfferController;
use App\Http\Controllers\GumrukIsleriTeslimatController;
use App\Http\Controllers\HavaYoluTasimaciligiController;
use App\Http\Controllers\HeaderController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Inner\AboutUsController as InnerAboutUsController;
use App\Http\Controllers\Inner\ContactUsController;
use App\Http\Controllers\Inner\ReferencesController as InnerReferencesController;
use App\Http\Controllers\KaraYoluTasimaciligiController;
use App\Http\Controllers\KvkkController;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\PlanlamaHazirlikController;
use App\Http\Controllers\ReferencesController;
use App\Http\Controllers\ServicesController;
use App\Http\Controllers\TasimaHizmetlerimizController;
use App\Http\Controllers\TasinmaKontrolListesiController;
use App\Http\Controllers\UluslararasiNakliyatController;
use App\Http\Controllers\UluslararasiTasimaController;
use App\Http\Controllers\WelcomeController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

use function PHPUnit\Framework\isNull;

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
if (empty($lang) || isNull($lang)) {
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
Route::get('/aboutus-data', [AboutUsController::class, 'getData'])->name('aboutus.data');
Route::get('/counter-data', [CounterController::class, 'getData'])->name('counter.data');
Route::get('/services-data', [ServicesController::class, 'getData'])->name('services.data');
Route::get('/contact-data', [ContactController::class, 'getData'])->name('contact.data');
Route::post('/contact-store', [ContactController::class, 'store'])->name('contact.store');
Route::get('/galeri-data', [GaleriController::class, 'getData'])->name('gallery.data');
Route::get('/references-data', [ReferencesController::class, 'getData'])->name('references.data');

//Hakkımızda Start
Route::get('/hakkımızda-inner-data', [InnerAboutUsController::class, 'getData'])->name('aboutus-inner.data');
Route::get('/hakkımızda', [InnerAboutUsController::class, 'index'])->name('aboutus-inner.index');
//Hakkımızda End

//Referanslarimiz Start
Route::get('/referanslarimiz', [InnerReferencesController::class, 'index'])->name('references-inner.index');
Route::get('/references-inner-data', [InnerReferencesController::class, 'getData'])->name('references-inner.data');
//Referanslarimiz End

// Contact Us İnner Start
Route::get('/iletisim-data', [ContactUsController::class, 'getData'])->name('contact-us-inner.data');
Route::get('/iletisim', [ContactUsController::class, 'index'])->name('contact-us-inner.index');
// Contact Us İnner End

// Get Offer  Start
Route::get('/getoffer-data', [GetOfferController::class, 'getData'])->name('getoffer.data');
Route::get('/getoffer', [GetOfferController::class, 'index'])->name('getoffer.index');
Route::post('/getoffer-store', [GetOfferController::class, 'store'])->name('getoffer.store');
// Get Offer  End

// Hizmetlerimiz Start
Route::get('/planlama-hazirlik-data', [PlanlamaHazirlikController::class, 'getData'])->name('planlama-hazirlik.data');
Route::get('/planlama-hazirlik', [PlanlamaHazirlikController::class, 'index'])->name('planlama-hazirlik.index');
Route::get('/tasinma/kontrol/listesi-data', [TasinmaKontrolListesiController::class, 'getData'])->name('tasinma-kontrol-lis.data');
Route::get('/tasinma-kontrol-listesi', [TasinmaKontrolListesiController::class, 'index'])->name('tasinma-kontrol-lis.index');
Route::get('/tasima-hizmetlerimiz-data', [TasimaHizmetlerimizController::class, 'getData'])->name('tasima-hizmetlerimiz.data');
Route::get('/tasima-hizmetlerimiz', [TasimaHizmetlerimizController::class, 'index'])->name('tasima-hizmetlerimiz.index');
Route::get('/karayolu-tasimaciligi-data', [KaraYoluTasimaciligiController::class, 'getData'])->name('karayolu-tasimaciligi.data');
Route::get('/karayolu-tasimaciligi', [KaraYoluTasimaciligiController::class, 'index'])->name('karayolu-tasimaciligi.index');
Route::get('/havayolu-tasimaciligi-data', [HavaYoluTasimaciligiController::class, 'getData'])->name('havayolu-tasimaciligi.data');
Route::get('/havayolu-tasimaciligi', [HavaYoluTasimaciligiController::class, 'index'])->name('havayolu-tasimaciligi.index');
Route::get('/denizyolu-tasimaciligi-data', [DenizYoluTasimaciligiController::class, 'getData'])->name('denizyolu-tasimaciligi.data');
Route::get('/denizyolu-tasimaciligi', [DenizYoluTasimaciligiController::class, 'index'])->name('denizyolu-tasimaciligi.index');
Route::get('/depolama-data', [DepolamaController::class, 'getData'])->name('depolama.data');
Route::get('/depolama', [DepolamaController::class, 'index'])->name('depolama.index');
Route::get('/gumruk-isleri-teslimat-data', [GumrukIsleriTeslimatController::class, 'getData'])->name('gumruk-isleri-tes.data');
Route::get('/gumruk-isleri-teslimat', [GumrukIsleriTeslimatController::class, 'index'])->name('gumruk-isleri-tes.index');
// Hizmetlerimiz End

//KVKK Start
Route::get('/kvkk', [KvkkController::class, 'index'])->name('kvkk.index');
Route::get('/kvkk-data', [KvkkController::class, 'getData'])->name('kvkk.data');
//KVKK End

//Çerez Politikaları Start
Route::get('/cerez-politikalari', [CerezPolitikalariController::class, 'index'])->name('cerez-politikalari.index');
Route::get('/cerez-politikalari-data', [CerezPolitikalariController::class, 'getData'])->name('cerez-politikalari.data');
//Çerez Politikaları End
