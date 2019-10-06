<?php

namespace App\Http\Controllers\Customer;

use App\BookBus;
use App\BusRoute;
use App\Company;
use App\User;
use App\Customer;
use App\CustomerReceipt;
use App\SystemConstants;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Promotion;
use Illuminate\Support\Facades\Auth;

class ApiController extends Controller
{
    public function registerCustomer(Request $request){
        if(User::where('email',$request->phonenumber)->exists()){
            return response()->json(array([
                'response'=>'failed',
                'message'=>'User is already registered, please login']));
        }
        else{
            $user=new User();
            $user->name=$request->name.' '.$request->surname;
            $user->email=$request->phonenumber;
            $user->role=SystemConstants::USER_CUSTOMER;
            $user->password=bcrypt($request->password);

            if($user->save()){
                $companiesCount=Company::where('id','<>','')->count();
                $customer=new Customer();
                $customer->user_id=$user->id;
                $customer->name=$request->name;
                $customer->surname=$request->surname;
                $customer->national_id=$request->national_id;
                $customer->phonenumber=$request->phonenumber;
                $customer->address=$request->address;



                if($customer->save()){
                    return response()->json(array([
                        'response'=>'success',
                        'message'=>'User successfully registered',
                        'name'=>$customer->name.' '.$customer->surname,
                        'phonenumber'=>$customer->phonenumber,
                        'companiesCount'=>$companiesCount]));
                }
                else{
                    return response()->json(array([
                        'response'=>'failed',
                        'message'=>'Failed to register customer, please contact admin']));
                }
            }
            else{
                return response()->json(array([
                    'response'=>'failed',
                    'message'=>'Failed to register user, please contact admin']));
            }
        }
    }

    public function login(Request $request){
        if(Auth::attempt(['email' => $request->phonenumber, 'password' => $request->password])){
            $companiesCount=Company::where('id','<>','')->count();
            return response()->json(array([
                'response'=>'success',
                'name'=>auth()->user()->name,
                'companiesCount'=>$companiesCount]));
        }
        else{
            return response()->json(array(['response'=>'failed']));
        }
    }

    public function companies(){
       $companies=Company::all();
       return response()->json(array([
           'response'=>'ok',
           'data'=>$companies]));
    }

    public function getCompanyRoutes($id){
        $routes=BusRoute::where('company_id',$id)->get();
        return response()->json(array(['response'=>'ok','data'=>$routes]));
    }


    public function bookBus(Request $request){
        if(CustomerReceipt::where([['phonenumber',$request->phonenumber],['date',$request->date]])->exists()){

            $bookedRoute=CustomerReceipt::where([['phonenumber',$request->phonenumber],['date',$request->date]])->first();
            $route=BusRoute::find($request->route_id);
            $company=Company::find($route->company_id);
            return response()->json(array([
                'response'=>'failed',
                'message'=>'You already booked '.$company->name.
                ' for date: '.$bookedRoute->date.
                ' from: '.$bookedRoute->from.
                ' to: '.$bookedRoute->to.
                ' and your sit number is: '.$bookedRoute->sit_number.
                ' You can not book 2 tickets for security reasons. Regards!']));
        }
        else{
            $bookBus=new BookBus();
            $bookBus->route_id=$request->route_id;
            $bookBus->phonenumber=$request->phonenumber;
            $bookBus->date=$request->date;
            $bookBus->status='Approved';

            if($bookBus->save()){

                $route=BusRoute::find($request->route_id);
                $user=Customer::where('phonenumber',$request->phonenumber)->first();
                $company=Company::find($route->company_id);

                if(CustomerReceipt::where([['route_id',$request->route_id],['date',$request->date]])->exists()){

                $sitNum=CustomerReceipt::where([['route_id',$request->route_id],['date',$request->date]])->count();

                if($route->max_passengers > $sitNum){
                    $receipt=new CustomerReceipt();
                    $receipt->company_id=$company->id;
                    $receipt->route_id=$request->route_id;
                    $receipt->name=$user->name.' '.$user->surname;
                    $receipt->national_id=$user->national_id;
                    $receipt->phonenumber=$user->phonenumber;
                    $receipt->to=$route->to;
                    $receipt->from=$route->from;
                    $receipt->amount=$route->amount;
                    $receipt->status='Pending';
                    $receipt->date=$request->date;
                    $receipt->sit_number=$sitNum + 1;
                    $receipt->expected_arrival_time=$route->expected_arrival_time;
                    $receipt->departure_time=$route->departure_time;

                    if($receipt->save()){
                        return response()->json(array([
                            'response'=>'success',
                            'message'=>'You successfully booked '.$company->name.
                            ' and your sit number is '.$receipt->sit_number.
                            '. Thank you for doing business with us. All the best']));
                    }
                    else{
                        return response()->json(array([
                            'response'=>'failed',
                            'message'=>'Failed to capture receipt, contact admin']));
                    }
                }
                else{
                    return response()->json(array([
                        'response'=>'failed',
                        'message'=>'Sorry Booking for '.$request->date.' are full, please try another day']));
                }
                }
                else{
                    $receipt=new CustomerReceipt();
                    $receipt->company_id=$company->id;
                    $receipt->route_id=$request->route_id;
                    $receipt->name=$user->name.' '.$user->surname;
                    $receipt->national_id=$user->national_id;
                    $receipt->phonenumber=$user->phonenumber;
                    $receipt->to=$route->to;
                    $receipt->from=$route->from;
                    $receipt->amount=$route->amount;
                    $receipt->status='Pending';
                    $receipt->date=$request->date;
                    $receipt->sit_number='1';
                    $receipt->expected_arrival_time=$route->expected_arrival_time;
                    $receipt->departure_time=$route->departure_time;

                    if($receipt->save()){
                        return response()->json(array([
                            'result'=>'success',
                                'message'=>'You successfully booked '.$company->name.
                                ' and your sit number is '.$receipt->sit_number.
                                '. Thank you for doing business with us. All the best']));
                    }
                }
            }
            else{
                    return response()->json(array([
                        'response'=>'failed',
                        'message'=>'Failed to book bus, please contact admin']));
            }


        }

    }


    public function getPromotions(){
        $promotions=Promotion::all();
        return response()->json(array([
            'response'=>'success',
            'data'=>$promotions]));
    }


    public function getReceipts($id){
        $receipts=CustomerReceipt::where('phonenumber',$id)->orderBy('id', 'desc')->get();
        return response()->json(array([
            'response'=>'success',
            'data'=>$receipts]));
    }


}
