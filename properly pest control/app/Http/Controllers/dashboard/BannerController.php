<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use App\Models\dashboard\Banner;
use Illuminate\Http\Request;

class BannerController extends Controller
{

    public function index()
    {
        $data=Banner::all();
        return response()->json(['data'=>$data]);
    }

    public function create()
    {

    }
  function store(Request $request)
    {
        $filename=time().'_'.$request->file->getClientOriginalName();
        $request->file->move(public_path('uploads/'),$filename);
        $data=Banner::create([
            'title'=>$request->title,
            'headline'=>$request->headline,
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
        $data=Banner::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }


    public function edit(string $id)
    {
        $data=Banner::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }

    public function update(Request $request, string $id)
    {
        if ($request->file()) {
            $filename=time().'_'.$request->file->getClientOriginalName();
            $request->file->move(public_path('uploads/'),$filename);

            $data=Banner::find($id)->update([
                'title'=>$request->title,
                'headline'=>$request->headline,
                'description'=>$request->description,
                'photo'=>$filename
            ]);
        }else{
            $data=Banner::find($id)->update([
                'title'=>$request->title,
                'headline'=>$request->headline,
                'description'=>$request->description,

            ]);
        }

        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Updated!']);
    }

    public function destroy(string $id)
    {
        $data=Banner::find($id)->delete();
        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Deleted!']);
    }
}
