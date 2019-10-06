<?php

namespace App\Http\Controllers\Company;

use App\BusRoute;
use App\CompanyAdmin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BusRoutesController extends Controller
{
    public function addBusRoute(){
        $page='Add Route';
        return view('company.add_route',compact('page'));
    }

    public function saveBusRoute(Request $request){
        $companyAdmin=CompanyAdmin::where('user_id',auth()->user()->id)->first();
        if(BusRoute::where([['to',$request->to],['from',$request->from],['company_id',$companyAdmin->company_id]])->exists()){

            return back()->with('error','Route already defined, please choose another one');
        }
        else{
            $route=new BusRoute();
            $route->company_id=$companyAdmin->company_id;
            $route->from=$request->from;
            $route->to=$request->to;
            $route->amount=$request->amount;
            $route->departure_time=$request->departure_time;
            $route->expected_arrival_time=$request->expected_arrival_time;
            $route->max_passengers=$request->max_passengers;
            $route->status='Active';

            if($route->save()){
                return redirect()->route('view_routes');
            }
        }
    }

    public function viewBusRoutes(){
        $admin=CompanyAdmin::where('user_id',auth()->user()->id)->first();
        $routes=BusRoute::where('company_id',$admin->company_id)->get();
        $page="View Routes";
        return view('company.view_routes', compact('routes','page'));
    }
}
