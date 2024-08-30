<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('branch_change_users', function (Blueprint $table) {
            $table->id();
            $table->string('user_id')->unique();
            $table->string('priority1')->nullable();
            $table->string('priority2')->nullable();
            $table->string('priority3')->nullable();
            $table->string('priority4')->nullable();
            $table->string('priority5')->nullable();
            $table->save();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('branch_change_users');
    }
};
