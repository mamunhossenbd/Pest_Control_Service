<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use App\Models\dashboard\Project;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
    public function index()
    {
        $data=Project::all();
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
        $data=Project::create([
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
        $data=Project::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }

    public function edit(string $id)
    {
        $data=Project::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }

    public function update(Request $request, string $id)
    {
        if ($request->file()) {
            $filename=time().'_'.$request->file->getClientOriginalName();
            $request->file->move(public_path('uploads/'),$filename);

            $data=Project::find($id)->update([
                'headline'=>$request->headline,
                'description'=>$request->description,
                'photo'=>$filename
            ]);
        }else{
            $data=Project::find($id)->update([
                'headline'=>$request->headline,
                'description'=>$request->description,

            ]);
        }

        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Updated!']);
    }


    public function destroy(string $id)
    {
        $data=Project::find($id)->delete();
        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Deleted!']);
    }
}
