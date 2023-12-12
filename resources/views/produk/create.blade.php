@extends('layout.app')

@section('breadcrumbs', 'HALAMAN PRODUK')

@section('active', 'Produk / Tambah Data')

@section('content')

    @if (session()->has('error_message'))
        <div class="alert alert-danger">
            <!-- mencetak error message -->
            {{ session()->get('error_message') }}
        </div>
    @endif

    <div class="col-lg-14">
        <div class="card">
            <div class="card-header">
                <a href="{{ url('produk') }}" class="btn btn-outline-secondary">
                    <i class="menu-icon fa fa-mail-reply-all"></i> <strong class="card-title">Kembali</strong>
                </a>
            </div>
            <div class="card-body">
                <div>
                    <h3 class="text-center"><b>TAMBAH DATA PRODUK</b></h3>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-14">
        <div class="card">
            <div class="card-body">
                <!-- Credit Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form action="{{ url('produk') }}" method="post" novalidate="novalidate">
                            @csrf
                            <div class="form-group">
                                <label for="nama_produk" class="control-label mb-1">Nama Produk</label>
                                <input id="nama_produk" name="nama_produk" type="text" class="form-control">
                                @if ($errors->has('nama_produk'))
                                    <span class="text-danger">{{ $errors->first('nama_produk') }}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="harga" class="control-label mb-1">Harga</label>
                                <input id="harga" name="harga" type="number" class="form-control">
                                @if ($errors->has('harga'))
                                    <span class="text-danger">{{ $errors->first('harga') }}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="kategori_id" class="control-label mb-1">Kategori</label>
                                <select class="form-control" name="kategori_id" aria-label="Default select example">
                                    {{-- <select class="form-control select2" name="kategori_id" aria-label="Default select example"> --}}
                                    <option selected>Open this select menu</option>
                                    @foreach ($kategoris as $ktr)
                                        <option value="{{ $ktr->id_kategori }}">{{ $ktr->nama_kategori }}</option>
                                    @endforeach
                                </select>
                                @if ($errors->has('kategori_id'))
                                    <span class="text-danger">{{ $errors->first('kategori_id') }}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="status_id" class="control-label mb-1">Status</label>
                                <select class="form-control" name="status_id" aria-label="Default select example">
                                    {{-- <select class="form-control select2" name="status_id" aria-label="Default select example"> --}}
                                    <option selected>Open this select menu</option>
                                    @foreach ($statuss as $sts)
                                        <option value="{{ $sts->id_status }}">{{ $sts->nama_status }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                    <span id="payment-button-amount">Tambah Data</span>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div> <!-- .card -->

    </div>
    <!--/.col-->

@endsection
