<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\SmtpSetting;
use Config;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    { 
        if (\Schema::hasTable('smtp_settings')) {

            $smtpsetting = SmtpSetting::first();
            if ($smtpsetting) {
                $data = [

                    'driver' => $smtpsetting->mailer,
                    'host' => $smtpsetting->host,
                    'port' => $smtpsetting->post,
                    'username' => $smtpsetting->username,
                    'password' => $smtpsetting->password,
                    'encryption' => $smtpsetting->encryption, 
                    'from' => [
                        'address' => $smtpsetting->from_address,
                        'name' => 'RealEasy'
                    ]
                ];
                Config::set('mail',$data);
            }

        } // End If
    }
}
