<?php

namespace App\Http\Controllers;
use App\Models\usuarios;
use App\Models\roles;
use Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;


class AuthController extends Controller
{
    
    public function login(Request $request)
    {
        
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return \Response::json([
                'res'=> false,
                'message'=>$validator->errors()
            ]);
        }

        $rol = new roles;

        $user = usuarios::where('email', $request->email)->first();

        if(!is_null($user) && Hash::check($request->password, $user->password)){

            $token = $user->createToken('blog')->accessToken;

            return \Response::json([
                'res'=> true,
                'token'=> $token,
                'data'=>[
                    'rol'=> $rol->getRol(1)['nombre'],
                    'name'=>$user->nombre
                ]
            ]);
        }else{
            return  \Response::json([
                'res'=> false,
                'message'=>'password incorrectos'    
            ]);
        }
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $user->tokens->each(function ($token, $key){
            $token->delete();
        });
        return response()->json(['res' => true, 'message' => "logout"]);
    }
}
