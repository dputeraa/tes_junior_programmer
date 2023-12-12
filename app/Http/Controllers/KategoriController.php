<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Session;
use App\Models\Kategori;
use Illuminate\Http\Request;

class KategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kategoris = Kategori::get();
        $view_data = [
            'kategoris' => $kategoris
        ];
        return view('kategori.index', $view_data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('kategori.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama_kategori' => 'required',
        ]);

        $nama_kategori = $request->input('nama_kategori');

        // jika menggunakan created tidak perlu memasukan created dan updated at dan harus menambahkan variable baru pada method post $fillable
        Kategori::create([
            'nama_kategori' => $nama_kategori,
        ]);
        Session::flash('success_add', 'Data berhasil ditambahkan.');
        return redirect('kategori');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id_kategori)
    {
        $kategori = Kategori::where('id_kategori', $id_kategori) // ->where('id', '=', $id) tanpa menuliskan "=" laravel menganggapnya menggunakan operator sama dengan "="
            ->first();
        $view_data = [
            'kategori' => $kategori
        ];
        return view('kategori.edit', $view_data);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_kategori)
    {
        $request->validate([
            'nama_kategori' => 'required',
        ]);

        $nama_kategori = $request->input('nama_kategori');

        Kategori::where('id_kategori', $id_kategori)
            ->update([
                'nama_kategori' => $nama_kategori,
            ]); // sama seperti update ... where id = $id
        Session::flash('success_update', 'Data berhasil diubah.');

        return redirect("kategori");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id_kategori)
    {
        Kategori::where('id_kategori', $id_kategori)->delete();
        Session::flash('success_destroy', 'Data berhasil dihapus.');

        return redirect("kategori");
    }
}
