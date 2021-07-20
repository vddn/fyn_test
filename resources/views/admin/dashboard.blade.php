@extends('layouts.admin')

@section('content')

<div class="content-wrapper" style="min-height: 234px;">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Dashboard</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header d-none">
                        <h3 class="card-title">Dashboard</h3>
                    </div>
                    <div class="card-body">
                        @if(session()->has('error_msg'))
                        <div class="alert alert-error error text-center" role="alert">
                            {{ session()->get('error_msg') }}
                        </div>
                        @endif
                        @if(session()->has('success_msg'))
                        <div class="alert alert-success text-center" role="alert">
                            {{ session()->get('success_msg') }}
                        </div>
                        @endif
        
                        <div class="row">
                        
                       
                          </div>


                      
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection

@section('scripts')
<script>
    $(document).ready(function() {

        
    });
</script>
@endsection