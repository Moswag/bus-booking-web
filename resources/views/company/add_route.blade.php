@extends('layouts.master')

@section('content')
            <!-- Breadcome start-->
            <div class="breadcome-area mg-b-30 small-dn">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcome-list shadow-reset">
                                <div class="row">

                                    <div class="col-lg-6">
                                        <ul class="breadcome-menu">
                                            <li><a href="#">Home</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">{{$page}}</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcome End-->

            <!-- Basic Form Start -->
            <div class="basic-form-area mg-b-15">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="sparkline12-list shadow-reset mg-t-30">
                                <div class="sparkline12-hd">
                                    <div class="main-sparkline12-hd">
                                        <h1>Route Information</h1>

                                    </div>
                                </div>
                                <div class="sparkline12-graph">
                                    <div class="basic-login-form-ad">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="all-form-element-inner">
                                                    <form action="{{ route('save_route') }}" method="POST">
                                                        {{ csrf_field() }}
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                    <label class="login2 pull-right pull-right-pro">From</label>
                                                                </div>
                                                                <div class="col-lg-9">
                                                                    <input type="text" class="form-control" name="from" placeholder="From" required/>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group-inner">
                                                                <div class="row">
                                                                    <div class="col-lg-3">
                                                                        <label class="login2 pull-right pull-right-pro">To</label>
                                                                    </div>
                                                                    <div class="col-lg-9">
                                                                        <input type="text" class="form-control" name="to" placeholder="To" required/>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="form-group-inner">
                                                                    <div class="row">
                                                                        <div class="col-lg-3">
                                                                            <label class="login2 pull-right pull-right-pro">Amount</label>
                                                                        </div>
                                                                        <div class="col-lg-9">
                                                                            <input type="text" class="form-control" name="amount" placeholder="Amount" required/>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="form-group-inner">
                                                                        <div class="row">
                                                                            <div class="col-lg-3">
                                                                                <label class="login2 pull-right pull-right-pro">Departure Time</label>
                                                                            </div>
                                                                            <div class="col-lg-9">
                                                                                <input type="time" class="form-control" name="departure_time" placeholder="Departure Time" required/>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group-inner">
                                                                            <div class="row">
                                                                                <div class="col-lg-3">
                                                                                    <label class="login2 pull-right pull-right-pro">Expected Arrival Time</label>
                                                                                </div>
                                                                                <div class="col-lg-9">
                                                                                    <input type="time" class="form-control" name="expected_arrival_time" placeholder="Expected Arrival Time" required/>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group-inner">
                                                                                <div class="row">
                                                                                    <div class="col-lg-3">
                                                                                        <label class="login2 pull-right pull-right-pro">Maximum Passengers</label>
                                                                                    </div>
                                                                                    <div class="col-lg-9">
                                                                                        <input type="number" class="form-control" name="max_passengers" placeholder="Expected Arrival Time" required/>
                                                                                    </div>
                                                                                </div>
                                                                            </div>




                                                        <div class="form-group-inner">
                                                            <div class="login-btn-inner">
                                                                <div class="row">
                                                                    <div class="col-lg-3"></div>
                                                                    <div class="col-lg-9">
                                                                        <div class="login-horizental cancel-wp pull-left">
                                                                            <button class="btn btn-sm btn-primary login-submit-cs" type="submit">Save Route</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Basic Form End-->

        </div>
    </div>
  @endsection
