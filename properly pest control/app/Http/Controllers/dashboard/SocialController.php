<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use App\Models\dashboard\Social;
use Illuminate\Http\Request;

class SocialController extends Controller
{
    public function index()
    {
        $data=Social::all();
        return response()->json(['data'=>$data]);
    }
 
    public function create()
    {
        //
    }
 
    public function store(Request $request)
    {
      
        $data=Social::create([
            'facebook'=>$request->facebook,
            'twitter'=>$request->twitter,
            'instagram'=>$request->instagram,
            'linkedin'=>$request->linkedin,
            'whatsapp'=>$request->whatsapp,
            'youtube'=>$request->youtube,
           
        ]);
        return response()->json([
            'success'=>true,
            'data'=>$data,
            'message'=>'Successfully Inserted!'
        ]);
    }
 
    public function show(string $id)
    {
        $data=Social::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }
 
    public function edit(string $id)
    {
        $data=Social::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }
 
    public function update(Request $request, string $id)
    {
        $data=Social::find($id)->update([
            'facebook'=>$request->facebook,
            'twitter'=>$request->twitter,
            'instagram'=>$request->instagram,
            'linkedin'=>$request->linkedin,
            'whatsapp'=>$request->whatsapp,
            'youtube'=>$request->youtube,
        ]);

        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Updated!']);
    }
 
    public function destroy(string $id)
    {
        $data=Social::find($id)->delete();
        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Deleted!']);
    }
}
