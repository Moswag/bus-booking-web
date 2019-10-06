<?php

namespace App\Http\Controllers\Company;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CompanyController extends Controller
{
    public function dashboard(){
        return view('company.company_dashboard');
    }



    //public function addRoute()
}
