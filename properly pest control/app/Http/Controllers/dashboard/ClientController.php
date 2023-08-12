<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use App\Models\dashboard\Client;
use Illuminate\Http\Request;

class ClientController extends Controller
{

    public function index()
    {
        $data=Client::all();
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
        $data=Client::create([
            'name'=>$request->name,
            'designation'=>$request->designation,
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
        $data=Client::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }

    public function edit(string $id)
    {
        $data=Client::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }

    public function update(Request $request, string $id)
    {
        if ($request->file()) {
            $filename=time().'_'.$request->file->getClientOriginalName();
            $request->file->move(public_path('uploads/'),$filename);

            $data=Client::find($id)->update([
                'name'=>$request->name,
                'designation'=>$request->designation,
                'address'=>$request->address,
                'photo'=>$filename
            ]);
        }else{
            $data=Client::find($id)->update([
                'name'=>$request->name,
                'designation'=>$request->designation,
                'address'=>$request->address,

            ]);
        }

        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Updated!']);
    }

    public function destroy(string $id)
    {
        $data=Client::find($id)->delete();
        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Deleted!']);
    }
}
