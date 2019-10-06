@extends('layouts.master')

@section('content')
            <!-- Breadcome start-->
            <div class="breadcome-area mg-b-30 small-dn">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcome-list shadow-reset">
                                <div class="row">
                                    @if(Session::has('message'))
                                    <div class="alert alert-success">{{ Session::get('message') }}</div>
                                    @elseif(Session::has('error'))
                                    <div class="alert alert-danger">{{ Session::get('error') }}</div>
                                    @endif

                                    <div class="col-lg-6">
                                        <ul class="breadcome-menu">
                                            <li><a href="#">Home</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">{{ $page }}</span>
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


            <!-- Breadcome End-->
            <!-- Static Table Start -->
            <div class="data-table-area mg-b-15">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="sparkline13-list shadow-reset">
                                <div class="sparkline13-hd">
                                    <div class="main-sparkline13-hd">
                                        <h1>{{ $page }} <span class="table-project-n">Data</span> Table</h1>

                                    </div>
                                </div>
                                <div class="sparkline13-graph">
                                    <div class="datatable-dashv1-list custom-datatable-overright">

                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true">
                                            <thead>
                                                <tr>
                                                    <th data-field="id">ID</th>
                                                    <th data-field="name" data-editable="true">From</th>
                                                    <th data-field="surname" data-editable="true">To</th>
                                                    <th data-field="email" data-editable="true">Amount</th>
                                                    <th data-field="phone" data-editable="true">Date</th>
                                                    <th data-field="status" data-editable="true">Status</th>
                                                    <th data-field="action">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($tickets as $ticket)


                                                <tr>
                                                    <td>{{ $ticket->id }}</td>
                                                    <td>{{ $ticket->from }}</td>
                                                    <td>{{ $ticket->to }}</td>
                                                    <td>{{ $ticket->amount }}</td>
                                                    <td>{{ $ticket->date }}</td>
                                                    <td>{{ $ticket->status }}</td>
                                                    <td>
                                                        <a href="{{ route('update_ticket',['id'=>$ticket->id]) }}" class="btn btn-primary">Process</a>

                                                    </td>
                                                </tr>
                                                @endforeach

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Static Table End -->
        </div>
    </div>
   @endsection