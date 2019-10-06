<?php

namespace App\Http\Controllers\Company;

use App\Company;
use App\CompanyAdmin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Promotion;

class PromotionController extends Controller
{
    public function addPromotion(){
        $page="Add Promotion";
        return view('company.add_promotion',compact('page'));
    }

    public function savePromotion(Request $request){
        $promotion=new Promotion();
        $user=CompanyAdmin::where('user_id',auth()->user()->id)->first();
        $company=Company::find($user->company_id);
        $promotion->company_id=$company->id;
        $promotion->company=$company->name;
        $promotion->promotion=$request->description;
        $promotion->status='Active';

        if($promotion->save()){
            return redirect()->route('view_promotions')->with('message','Promotion successfully added');
        }
        else{
            return redirect()->route('view_promotions')->with('error','Failed to add promotion');
        }
    }


    public function viewPromotions(){
        $user=CompanyAdmin::where('user_id',auth()->user()->id)->first();
        $promotions=Promotion::where('company_id',$user->company_id)->get();
        $page='View Promotions';
        return view('company.view_promotions',compact('promotions','page'));

    }
}
