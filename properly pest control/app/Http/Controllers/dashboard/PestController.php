<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use App\Models\dashboard\Pest;
use Illuminate\Http\Request;

class PestController extends Controller
{
    
    public function index()
    {
        $data=Pest::all();
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
        $data=Pest::create([
            'name'=>$request->name,
            'description'=>$request->description,
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
        $data=Pest::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }

    public function edit(string $id)
    {
        $data=Pest::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }

   
    public function update(Request $request, string $id)
    {
        if ($request->file()) {
            $filename=time().'_'.$request->file->getClientOriginalName();
            $request->file->move(public_path('uploads/'),$filename);

            $data=Pest::find($id)->update([
                'name'=>$request->name,
                'description'=>$request->description,
                'photo'=>$filename
            ]);
        }else{
            $data=Pest::find($id)->update([
                'name'=>$request->name,
                'description'=>$request->description,

            ]);
        }

        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Updated!']);
    }

    public function destroy(string $id)
    {
        $data=Pest::find($id)->delete();
        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Deleted!']);
    }
}
