<?php

namespace App\Http\Controllers\Admin;

use App\Company;
use App\CompanyToken;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Symfony\Component\CssSelector\Parser\Token;

class TokenController extends Controller
{
    public function addToken(){
        $page="Generate Token";
        $companies=Company::all();
        return view('admin.add_token',compact('page','companies'));
    }





    public function saveToken(Request $request){
        $company=Company::find($request->company);
        $token=new CompanyToken();
        $token->company_id=$company->id;
        $token->company=$company->name;
        $token->token=bcrypt($company->id.''.$company->name);
        $token->status="Unused";
        if($token->save()){
            return redirect()->route('view_tokens')->with('message','Token successfully added');
        }
        else{
            return redirect()->route('view_tokens')->with('error','Failed to add token');
        }

    }

    public function viewTokens(){
        $page="View Tokens";
        $tokens=CompanyToken::all();
        return view('admin.view_tokens',compact('tokens','page'));
    }





}
