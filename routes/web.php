<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::get('/', [PageController::class, 'anasayfa'])->name('anasayfa');
Route::get('/hakkimizda', [PageController::class, 'hakkimizda'])->name('hakkimizda');
Route::get('/cihazlar', [PageController::class, 'cihazlar'])->name('cihazlar');
Route::get('/hizmetler', [PageController::class, 'hizmetler'])->name('hizmetler');
Route::get('/blog', [PageController::class, 'blog'])->name('blog');
Route::get('/iletisim', [PageController::class, 'iletisim'])->name('iletisim');
