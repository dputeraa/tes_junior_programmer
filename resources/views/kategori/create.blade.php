@extends('layout.app')

@section('breadcrumbs', 'HALAMAN KATEGORI')

@section('active', 'Kategori / Tambah Data')

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
                <a href="{{ url('kategori') }}" class="btn btn-outline-secondary">
                    <i class="menu-icon fa fa-mail-reply-all"></i> <strong class="card-title">Kembali</strong>
                </a>
            </div>
            <div class="card-body">
                <div>
                    <h3 class="text-center"><b>TAMBAH DATA KATEGORI</b></h3>
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
                        <form action="{{ url('kategori') }}" method="post" novalidate="novalidate">
                            @csrf
                            <div class="form-group">
                                <label for="nama_kategori" class="control-label mb-1">Nama Kategori</label>
                                <input id="nama_kategori" name="nama_kategori" type="text" class="form-control">
                                @if ($errors->has('nama_kategori'))
                                    <span class="text-danger">{{ $errors->first('nama_kategori') }}</span>
                                @endif
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
