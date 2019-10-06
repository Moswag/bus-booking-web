<?php

namespace App\Http\Controllers;

use App\Company;
use App\CompanyAdmin;
use App\CompanyToken;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function index(){
        return view('session.login');
    }

    public function dashboard(){
        return view('layouts.master');
    }


    public function signin(Request $request){
        if(Auth::attempt(['email'=>$request->email,'password'=>$request->password])) {
          if(auth()->user()->role=='Admin'){
              return redirect()->route('dashboard');
          }
          else{
              return redirect()->route('add_admin');
          }
        }
    }


    public function register(){
        return view('session.register');
    }


    public function companyRegister(Request $request){

        $company=new Company();
        $company->name=$request->name;
        $company->mission=$request->mission;
       // $company->


    }


    public function registerAsCompanyAdmin(Request $request){
        if(User::where('email',$request->email)->exists()){
            return back()->with('error','User already registered');
        }
        else{
            if(CompanyToken::where('token',$request->token)->exists()){
                $tok=CompanyToken::where('token',$request->token)->first();
                if($tok->status=='Unused'){
                    $user=new User();
                    $user->name=$request->name.' '.$request->surname;
                    $user->email=$request->email;
                    $user->role='CompanyAdmin';
                    $user->password=bcrypt($request->password);
                    if($user->save()){
                        $admin=new CompanyAdmin();
                        $admin->name=$request->name;
                        $admin->surname=$request->surname;
                        $admin->email=$request->email;
                        $admin->phonenumber=$request->phonenumber;
                        $admin->address=$request->address;
                        $admin->user_id=$user->id;
                        $admin->company_id=$tok->company_id;

                        if($admin->save()){
                            if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){
                                return redirect()->route('company_dashboard')->with('message',auth()->user()->name.' successfully registered');
                            }
                            else{
                                return back()->with('error','Failed to login user');
                            }

                        }
                    }

                }
                else{
                    return back()->with('error','Token already used');
                }
            }
            else{
                return back()->with('error','Token do not exist');
            }
        }
    }


}
