<?php

namespace App\Http\Controllers\Admin;

use App\User;
use App\Admin;
use App\Customer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function dashboard(){
        $admins=Admin::where('email','<>',auth()->user()->email)->get();
        $page="View Admins";
        return view('admin.dashboard', compact('page','admins'));
    }


    public function addAdmin(){
        $page="Add Admin";
        return view('admin.add_admin', compact('page'));
    }

    public function saveAdmin(Request $request){
        if(User::where('email',$request->email)->exists()){
            return back()->with('error','User already exists');
        }
        else{
            $user=new User();
            $user->name=$request->name.' '.$request->surname;
            $user->email=$request->email;
            $user->role='Admin';
            $user->password=bcrypt($request->password);

            if($user->save()){
                $admin=new Admin();
                $admin->user_id=$user->id;
                $admin->name=$request->name;
                $admin->surname=$request->surname;
                $admin->email=$request->email;
                $admin->phonenumber=$request->phonenumber;
                $admin->address=$request->address;

                if($admin->save()){
                    return redirect()->route('view_admins')->with('message','Admin successfully added');
                }
                else{
                    return redirect()->route('view_admins')->with('error','Failed to add admin, please contact admin');
                }
            }
            else{
                return redirect()->route('view_admins')->with('error','Failed to add user, please contact admin');
            }
        }
    }

    public function viewAdmins(){
        $admins=Admin::where('email','<>',auth()->user()->email)->get();
        $page="View Admins";
        return view('admin.view_admins', compact('page','admins'));
    }


    public function viewCustomers(){
        $page="View Customers";
        $customers=Customer::all();
        return view('admin.view_customers',compact('page','customers'));
    }


    public function logout(){
        session()->flush();
        Auth::logout();
        return redirect()->route('home')->with('message','You are successfully logged out');
    }


    public function vChangePassword(){
        $page="Change Password";
        return view('admin.change_password',compact('page'));
    }

    public function changePassword(Request $request){
        $updateUser=User::where('password',$request->password)->update([
            'password'=>$request->password
        ]);
        if($updateUser){
            return redirect()->route('dashboard')->with('message','You successfully changed your password');
        }
        else{
            return back()->with('error','Failed to update password');
        }

    }
}
