<?php

namespace App\Http\Controllers\Company;

use App\BusRoute;
use App\CompanyAdmin;
use App\CustomerReceipt;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TicketsController extends Controller
{
    public function viewPendingTickets(){
        $page="Pending Tickets";
        $user=CompanyAdmin::where('user_id',auth()->user()->id)->first();
        $tickets=CustomerReceipt::where([['company_id',$user->company_id],['status','Pending']])->get();
        return view('company.view_tickets_pending',compact('page','tickets'));
    }

    public function viewProcessedTickets(){
        $page="Processed Tickets";
        $user=CompanyAdmin::where('user_id',auth()->user()->id)->first();
        $tickets=CustomerReceipt::where([['company_id',$user->company_id],['status','Processed']])->get();
        return view('company.view_processed_tickets',compact('page','tickets'));
    }

    public function viewAllTickets(){
        $page="All Tickets";
        $user=CompanyAdmin::where('user_id',auth()->user()->id)->first();
        $tickets=CustomerReceipt::where('company_id',$user->company_id)->get();
        return view('company.view_all_tickets',compact('page','tickets'));
    }

    public function updateTicket($id){
        $updTick=CustomerReceipt::where('id',$id)->update([
            'status'=>'Processed'
        ]);

        if($updTick){
            return redirect()->route('view_tickets_pending')->with('message','Ticket successfully updated');
        }
        else{
            return back()->with('error','Failed to update ticket');
        }
    }
}
