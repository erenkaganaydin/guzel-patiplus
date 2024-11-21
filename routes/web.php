<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use App\Http\Controllers\BlogController;

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::get('/', [PageController::class, 'anasayfa'])->name('anasayfa');
Route::get('/hakkimizda', [PageController::class, 'hakkimizda'])->name('hakkimizda');
Route::get('/cihazlar', [PageController::class, 'cihazlar'])->name('cihazlar');
Route::get('/ekibimiz', [PageController::class, 'ekibimiz'])->name('ekibimiz');
Route::get('/hizmetler', [PageController::class, 'hizmetler'])->name('hizmetler');
Route::get('/iletisim', [PageController::class, 'iletisim'])->name('iletisim');


Route::get('/blog', [BlogController::class, 'index'])->name('blog.index'); // Blog listesi
Route::get('/blog/{slug}', [BlogController::class, 'show'])->name('blog.show');
