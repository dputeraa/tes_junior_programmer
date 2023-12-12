<?php

namespace App\Http\Controllers;

use App\Models\Produk;
use App\Models\Kategori;
use App\Models\Status;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $produks = Produk::get();
        $produksbisadijual = Produk::where('status_id', '1');
        $produkstidakbisadijual = Produk::where('status_id', '2');
        $kategoris = Kategori::get();
        $statuss = Status::get();
        $view_data = [
            'produks' => $produks,
            'produksbisadijual' => $produksbisadijual,
            'produkstidakbisadijual' => $produkstidakbisadijual,
            'kategoris' => $kategoris,
            'statuss' => $statuss,
        ];
        return view('dashboard.dashboard', $view_data);
    }
}
