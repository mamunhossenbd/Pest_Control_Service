<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use App\Models\dashboard\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{

    public function index()
    {
        $data=Blog::all();
        return response()->json(['data'=>$data]);
    }


    public function create()
    {

    }

    public function store(Request $request)
    {
        $filename=time().'_'.$request->file->getClientOriginalName();
        $request->file->move(public_path('uploads/'),$filename);
        $data=Blog::create([
            'name'=>$request->name,
            'date'=>$request->date,
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
        $data=Blog::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }


    public function edit(string $id)
    {
        $data=Blog::find($id);
        return response()->json(['success'=>true,'data'=>$data]);

    }


    public function update(Request $request, string $id)
    {
        if ($request->file()) {
            $filename=time().'_'.$request->file->getClientOriginalName();
            $request->file->move(public_path('uploads/'),$filename);

            $data=Blog::find($id)->update([
                'name'=>$request->name,
                'date'=>$request->date,
                'headline'=>$request->headline,
                'description'=>$request->description,
                'photo'=>$filename
            ]);
        }else{
            $data=Blog::find($id)->update([
                'name'=>$request->name,
                'date'=>$request->date,
                'headline'=>$request->headline,
                'description'=>$request->description,

            ]);
        }

        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Updated!']);
    }


    public function destroy(string $id)
    {
        $data=Blog::find($id)->delete();
        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Deleted!']);
    }
}
