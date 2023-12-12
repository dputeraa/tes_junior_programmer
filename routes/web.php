<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\ProdukController;
use App\Http\Controllers\StatusController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('dashboard', [DashboardController::class, 'index']);

//Kategori
Route::post('kategori', [KategoriController::class, 'store']); //create
Route::get('kategori', [KategoriController::class, 'index']);
Route::get('kategori/create', [KategoriController::class, 'create']);
Route::get('kategori/{id}/edit', [KategoriController::class, 'edit']);
Route::patch('kategori/{id}', [KategoriController::class, 'update']); //update
Route::get('kategori/{id}/delete', [KategoriController::class, 'destroy']); //delete

// Status
Route::post('status', [StatusController::class, 'store']); //create
Route::get('status', [StatusController::class, 'index']);
Route::get('status/create', [StatusController::class, 'create']);
Route::get('status/{id}/edit', [StatusController::class, 'edit']);
Route::patch('status/{id}', [StatusController::class, 'update']); //update
Route::get('status/{id}/delete', [StatusController::class, 'destroy']); //delete

// Produk
Route::post('produk', [ProdukController::class, 'store']); //create
Route::get('produk', [ProdukController::class, 'index']);
Route::get('produk/create', [ProdukController::class, 'create']);
Route::get('produk/{id}/edit', [ProdukController::class, 'edit']);
Route::patch('produk/{id}', [ProdukController::class, 'update']); //update
Route::get('produk/{id}/delete', [ProdukController::class, 'destroy']); //delete
