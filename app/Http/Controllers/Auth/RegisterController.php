<?php

namespace App\Http\Controllers\Auth;

use App\Models\Auth\Usuario;
use App\Models\RolUsuario;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    use RegistersUsers;

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
     * The user has been registered.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  mixed  $user
     * @return mixed
     */
    protected function registered(Request $request, $user)
    {
        return $user;
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'nb_usuario' => 'required|max:255|unique:usuario,nb_usuario',
            'email'   => 'required|email|max:255|unique:usuario,email',
            'password'   => 'required|min:6'
        ],
        [
            'nb_usuario.unique'   => 'El usuario ya está en uso.',
            'email.unique'     => 'El correo ya está en uso.',
        ]);

    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {
        $data['co_confirmacion'] = str_random(60);

        $usuario = Usuario::create([
            'nb_usuario'      => $data['nb_usuario'],
            'email'           => $data['email'],
            'password'        => bcrypt($data['password']),
            'id_status'       => 1,
            'id_usuario_e'    => 1,
            'co_confirmacion' => $data['co_confirmacion']
        ]);

        // Enviar codigo de confirmacion
        \Mail::send('auth.mail.confirmar_usuario', $data, function($message) use ($data) {
            $message->to($data['email'], $data['nb_usuario'])->subject('"Vuelta a la Patria", Por favor confirma tu correo');
        });

        $rolUsuario = RolUsuario::create([
                'id_rol'        => 1,
                'id_usuario'    => $usuario->id_usuario,
                'id_status'     => 1, 
        ]);
   
        return $usuario;

    }
}
