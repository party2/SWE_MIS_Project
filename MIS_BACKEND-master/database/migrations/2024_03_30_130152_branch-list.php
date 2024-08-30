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
        Schema::create('branch_list', function (Blueprint $table) {
            $table->id();
            $table->string('branch_name');
            $table->string('branch_code');
            $table->string('branch_type');
            $table->save();
            // write its create table query
            /*
            CREATE TABLE `branch_list` (
                `id` INT(11) NOT NULL AUTO_INCREMENT,
                `branch_name` VARCHAR(255) NOT NULL,
                `branch_code` VARCHAR(255) NOT NULL,
                `branch_type` VARCHAR(255) NOT NULL,
                PRIMARY KEY (`id`)
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
            
            make temp data to insert
            
            */
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('branch_list');
    }
};
