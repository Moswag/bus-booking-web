<?php

namespace App\Http\Controllers\Admin;

use App\City;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CityController extends Controller
{
    public function addCity(){
        $page="Add City";
        return view('admin.add_city',compact('page'));
    }


    public function saveCity(Request $request){
        if(City::where('name',$request->city)->exists()){
            return back()->with('error','City already exists');
        }
        else{
            $city=new City();
            $city->name=$request->city;
            $city->status="Active";
            if($city->save()){
                return redirect()->route('view_cities')->with('message','City successfully added');
            }
            else{
                return redirect()->route('view_cities')->with('error','Failed to add city');
            }
        }
    }

    public function viewCities(){
        $cities=City::all();
        $page="View Cities";
        return view('admin.view_cities',compact('cities','page'));
    }

}
