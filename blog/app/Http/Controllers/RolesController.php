<?php

namespace App\Http\Controllers;
use App\Models\roles;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class RolesController extends Controller
{

    public function store(Request $request)
    {
        
        $input = $request->all();
        roles::create($input);
        
        return \Response::json([
            'res'=>true,
            'message'=>'rol creado correctamente!!'
        ] , 200);
        
    }
    public function index(Request $request)
    {
        $roles = roles::all();
        return   \Response::json([
            'res'=>$roles, 
        ], 200);
    }

    public function update(Request $request,$id)
    {
        $input = $request->all();        
        roles::where('id', $id)->update($input);
        return response()->json([
            'res' => true,
            'message' => 'rol Actualizado correctamente'
        ], 200);
    }

    //DELETE elimina datos
    public function destroy($id)
    {
        roles::destroy($id);
        return response()->json([
            'res' => true,
            'message' => 'rol Eliminado correctamente'
        ], 200);
    }
}
