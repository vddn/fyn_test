<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersScores extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users_scores', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('users_id')->nullable();
            $table->foreign('users_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('score')->nullable();
            $table->timestamps();
            $table->tinyInteger("status")->default(1)->comment("1. active, 2. inactive");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users_scores');
    }
}
