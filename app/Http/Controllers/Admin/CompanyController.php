<?php

namespace App\Http\Controllers\Admin;

use App\Company;
use App\CompanyAdmin;
use App\SystemConstants;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CompanyController extends Controller
{
    public function addCompany(){
        $page="Add Company";
        return view('admin.add_company',compact('page'));
    }


    public function saveCompany(Request $request){
        $image = $request->file('logo');
        $input['imagename'] = $image->getClientOriginalName();
        $extension = $image->getClientOriginalExtension();
        $myfile = bcrypt($input['imagename']) . '.' . $extension;
        $destination = 'companylogo';
        $image->storeAs($destination, $myfile);

        $company=new Company();
        $company->name=$request->name;
        $company->mission=$request->mission;
        $company->imageUrl=SystemConstants::PATH_URL . $destination . '/' . $myfile;

        if($company->save()){
            return redirect()->route('view_companies')->with('message','Company successfully registered');
        }
        else{
            return redirect()->route('view_companies')->with('error','Failed to register company, please contact admin');
        }
    }


    public function viewCompanies(){
        $companies=Company::all();
        $page="View Companies";
        return view('admin.view_companies',compact('companies','page'));
    }

    public function viewCompanyAdmins(){
        $admins=CompanyAdmin::where('email','<>',auth()->user()->email)->get();
        $page="View Company Admins";
        return view('admin.view_company_admins', compact('page','admins'));
    }
}
