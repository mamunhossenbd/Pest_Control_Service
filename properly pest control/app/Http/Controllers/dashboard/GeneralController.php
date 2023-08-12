<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use App\Models\dashboard\General;
use Illuminate\Http\Request;

class GeneralController extends Controller
{

    public function index()
    {
        $data=general::all();
        return response()->json(['data'=>$data]);
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $filename=time().'_'.$request->file->getClientOriginalName();
        $request->file->move(public_path('uploads/'),$filename);
        $data=general::create([
            'phone'=>$request->phone,
            'email'=>$request->email,
            'map'=>$request->map,
            'address'=>$request->address,
            'photo'=>$filename
        ]);
        return response()->json([
            'success'=>true,
            'data'=>$data,
            'message'=>'Successfully Inserted!'
        ]);
    }


    public function show(string $id)
    {
        $data=general::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }

    public function edit(string $id)
    {
        $data=general::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }

    public function update(Request $request, string $id)
    {
        if ($request->file()) {
            $filename=time().'_'.$request->file->getClientOriginalName();
            $request->file->move(public_path('uploads/'),$filename);

            $data=general::find($id)->update([
                'phone'=>$request->phone,
                'email'=>$request->email,
                'map'=>$request->map,
                'address'=>$request->address,
                'photo'=>$filename
            ]);
        }else{
            $data=general::find($id)->update([
                'phone'=>$request->phone,
                'email'=>$request->email,
                'email'=>$request->email,
                'map'=>$request->map,
                'address'=>$request->address,

            ]);
        }

        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Updated!']);
    }

    public function destroy(string $id)
    {
        $data=general::find($id)->delete();
        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Deleted!']);
    }
}
