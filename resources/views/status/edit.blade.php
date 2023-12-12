@extends('layout.app')

@section('breadcrumbs', 'HALAMAN STATUS')

@section('active', 'Status / Edit Data')

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
                <a href="{{ url('status') }}" class="btn btn-outline-secondary">
                    <i class="menu-icon fa fa-mail-reply-all"></i> <strong class="card-title">Kembali</strong>
                </a>
            </div>
            <div class="card-body">
                <div>
                    <h3 class="text-center"><b>EDIT DATA STATUS</b></h3>
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
                        <form action="{{ url("status/$status->id_status") }}" method="post" novalidate="novalidate">
                            @method('patch')
                            @csrf
                            <div class="form-group">
                                <label for="nama_status" class="control-label mb-1">Nama Status</label>
                                <input id="nama_status" name="nama_status" type="text" class="form-control"
                                    value="{{ $status->nama_status }}">
                                @if ($errors->has('nama_status'))
                                    <span class=" text-danger">{{ $errors->first('nama_status') }}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                    <span id="payment-button-amount">Simpan Data</span>
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
