<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomerReceiptsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customer_receipts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('route_id');
            $table->string('name');
            $table->string('surname');
            $table->string('national_id');
            $table->string('phonenumber');
            $table->string('to');
            $table->string('from');
            $table->string('amount');
            $table->string('status');
            $table->string('date');
            $table->string('sit_number')->default(null);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('customer_receipts');
    }
}
