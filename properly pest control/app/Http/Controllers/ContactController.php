<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
   
    public function index()
    {
        $data=Contact:: all();
        return response()->json([
            'success'=>true,
            'data'=>$data
        ]);
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $data=Contact:: create([
            'name'=>$request->name,
            'email'=>$request->email,
            'subject'=>$request->subject,
            'message'=>$request->message,
        ]);
        return response()->json([
            'success'=>true,
            'data'=>$data,
            'message'=>'successfully insearted  !!!!'
        ]);
    }

    public function show(string $id)
    {
        //
    }

    public function edit(string $id)
    {
        //
    }

    public function update(Request $request ,string $id)
    {
        //
    }

    public function destroy(string $id)
    {
        $data=Contact::find( $id)->delete();
        return response()->json([
            'success'=>true,
            'data'=>$data,
            'message'=>'successfully deleted  !!!!'
        ]);
    }
}
