<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use GuzzleHttp\Client;

class CaptchaController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get token validation from Google's API.
     *
     * @param  Request $request
     * @return Array $response
     */
    public function checkToken(Request $request)
    {

        $token    = $request->input('token');
        $secret   = env("GOOGLE_CAPTCHA_SECRET", "");
        $remoteip = "";
        $url      = "https://www.google.com/recaptcha/api/siteverify";

        $client   = new \GuzzleHttp\Client();
        $response = $client->request('POST', $url , [
        
        'form_params'  => [
            'secret'   => $secret,
            'response' => $token,
            'remoteip' => $remoteip
            ]
            
        ]);

        $response = $response->getBody()->getContents();

        return $response;
    }

}