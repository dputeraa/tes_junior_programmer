<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Session;
use App\Models\Produk;
use App\Models\Kategori;
use App\Models\Status;
use Illuminate\Http\Request;

class ProdukController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    // public function index()
    // {
    //     $produks = Produk::with([
    //         "kategori",
    //         "status"
    //     ])->latest()->get();

    //     return view('produk.index')->with(['produks' => $produks]);
    // }
    public function index()
    {
        $produks = Produk::with(['kategori', 'status'])
            ->where('status_id', '1')
            ->latest()
            ->get();

        return view('produk.index')->with(['produks' => $produks]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $produks = Produk::all();
        $kategoris = Kategori::all();
        $statuss = Status::all();
        return view('produk.create', compact('produks', 'kategoris', 'statuss'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'nama_produk' => 'required',
            'harga' => 'required',
            'kategori_id' => 'required',
            'status_id' => 'required',
        ]);

        $nama_produk = $request->input('nama_produk');
        $harga = $request->input('harga');
        $kategori_id = $request->input('kategori_id');
        $status_id = $request->input('status_id');

        // jika menggunakan created tidak perlu memasukan created dan updated at dan harus menambahkan variable baru pada method post $fillable
        Produk::create([
            'nama_produk' => $nama_produk,
            'harga' => $harga,
            'kategori_id' => $kategori_id,
            'status_id' => $status_id
        ]);
        Session::flash('success_add', 'Data berhasil ditambahkan.');
        return redirect('produk');
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
    public function edit(string $id_produk)
    {
        $produk = Produk::where('id_produk', $id_produk) // ->where('id', '=', $id) tanpa menuliskan "=" larave  enganggapnya menggunakan operator sama dengan "="
            ->first();
        $kategori = Kategori::all();
        $status = Status::all();

        return view('produk.edit', compact('produk', 'kategori', 'status'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_produk)
    {
        // dd($request->all());

        $request->validate([
            'nama_produk' => 'required',
            'harga' => 'required',
            'kategori_id' => 'required',
            'status_id' => 'required',
        ]);

        $nama_produk = $request->input('nama_produk');
        $harga = $request->input('harga');
        $kategori_id = $request->input('kategori_id');
        $status_id = $request->input('status_id');

        // Produk::where('id_produk', $id_produk)
        //     ->update([
        //         'nama_produk' => $nama_produk,
        //         'harga' => $harga,
        //         'kategori_id' => $kategori_id,
        //         'status_id' => $status_id
        //     ]); // sama seperti update ... where id = $id
        // Session::flash('success_update', 'Data berhasil diubah.');

        Produk::where('id_produk', $id_produk)
            ->update([
                'nama_produk' => $nama_produk,
                'harga' => $harga,
                'kategori_id' => $kategori_id,
                'status_id' => $status_id,
            ]); // sama seperti update ... where id = $id
        Session::flash('success_update', 'Data berhasil diubah.');

        return redirect("produk");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id_produk)
    {
        Produk::where('id_produk', $id_produk)->delete();
        Session::flash('success_destroy', 'Data berhasil dihapus.');

        return redirect("produk");
    }
}
