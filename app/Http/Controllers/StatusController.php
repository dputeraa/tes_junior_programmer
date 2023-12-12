<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Session;
use App\Models\Status;
use Illuminate\Http\Request;

class StatusController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $statuss = Status::get();
        $view_data = [
            'statuss' => $statuss
        ];
        return view('status.index', $view_data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('status.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama_status' => 'required',
        ]);

        $nama_status = $request->input('nama_status');

        // jika menggunakan created tidak perlu memasukan created dan updated at dan harus menambahkan variable baru pada method post $fillable
        Status::create([
            'nama_status' => $nama_status,
        ]);
        Session::flash('success_add', 'Data berhasil ditambahkan.');
        return redirect('status');
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
    public function edit(string $id_status)
    {
        $status = Status::where('id_status', $id_status) // ->where('id', '=', $id) tanpa menuliskan "=" laravel menganggapnya menggunakan operator sama dengan "="
            ->first();
        $view_data = [
            'status' => $status
        ];
        return view('status.edit', $view_data);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_status)
    {
        $request->validate([
            'nama_status' => 'required',
        ]);

        $nama_status = $request->input('nama_status');

        Status::where('id_status', $id_status)
            ->update([
                'nama_status' => $nama_status,
            ]); // sama seperti update ... where id = $id
        Session::flash('success_update', 'Data berhasil diubah.');

        return redirect("status");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id_status)
    {
        Status::where('id_status', $id_status)->delete();
        Session::flash('success_destroy', 'Data berhasil dihapus.');

        return redirect("status");
    }
}
