<?php

namespace App\Http\Controllers;

use App\Models\Header;
use Illuminate\Http\Request;
use Inertia\Inertia;

use function PHPUnit\Framework\isNull;

class HomeController extends Controller
{
    public function index()
    {
        return Inertia::render('Index');
    }
}
