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
        Schema::create('patient_histories', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('admin_id')->unsigned();
            $table->foreign('admin_id')->references('id')->on('admins');
            $table->bigInteger('doctor_id')->unsigned();
            $table->foreign('doctor_id')->references('id')->on('doctors');
            $table->bigInteger('doctor_appointment_id')->unsigned();
            $table->foreign('doctor_appointment_id')->references('id')->on('doctor_appointments');
            $table->string('patient_id');
            $table->text('pradhan_vedana');
            $table->text('vedana_vrutanta');
            $table->text('chikitsa_vrutanta');
            $table->text('stri_evam_prasooti_vrutant');
            $table->text('poorva_vedana_vrutant');
            $table->text('anuvanshika_vritanta');
            $table->text('pratyaksh_pramanam');
            $table->text('roga_preeksha_srotas_pareeksha');
            $table->text('rasavaha_srotas');
            $table->text('raktavaha_srotas');
            $table->text('mamsavaha_srotas');
            $table->text('medovaha_srotas');
            $table->text('asthivaha_srotas');
            $table->text('majjavaha_srotas');
            $table->text('shukravaha_srotas');
            $table->text('rogi_pareeksha');
            $table->text('nadi');
            $table->text('dosha');
            $table->text('dushya');
            $table->text('shwas');
            $table->text('tap_temp');
            $table->text('kala');
            $table->text('bhara_wt');
            $table->text('agni');
            $table->text('raktchap_bp');
            $table->text('prakruti');
            $table->text('mala');
            $table->text('vaya');
            $table->text('mootra');
            $table->text('satmya');
            $table->text('kshudha');
            $table->text('satva');
            $table->text('nidra');
            $table->text('ahara');
            $table->text('vyasan');
            $table->text('roga_mrag');
            $table->text('rago_sthana');
            $table->text('sadhyasadhyata');
            $table->text('pathya');
            $table->text('yoga_chikitsa');
            $table->text('paramarsh');
            $table->string('history_file');
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
        Schema::dropIfExists('patient_histories');
    }
};
