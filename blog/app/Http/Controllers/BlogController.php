<?php

namespace App\Http\Controllers;
use App\Models\blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\CreateBlogRequest;
use App\Http\Requests\UpdateBlogRequest;


class BlogController extends Controller
{

    public function store(CreateBlogRequest $request)
    {
        
        $input = $request->all();
        blog::create($input);        
        return \Response::json([
            'res'=>true,
            'message'=>'blog creado correctamente!!'
        ] , 200);
        
    }
    public function index(Request $request)
    {
        $blogs = blog::all();
        return   \Response::json([
            'res'=>$blogs, 
        ], 200);
    }

    public function update(UpdateBlogRequest $request,$id)
    {
        $input = $request->all();        
        blog::where('id', $id)->update($input);
        return response()->json([
            'res' => true,
            'message' => 'blog Actualizado correctamente'
        ], 200);
    }

    //DELETE elimina datos
    public function destroy($id)
    {
        blog::destroy($id);
        return response()->json([
            'res' => true,
            'message' => 'blog Eliminado correctamente'
        ], 200);
    }
}
