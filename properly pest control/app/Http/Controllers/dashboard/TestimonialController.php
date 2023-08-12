<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use App\Models\dashboard\Testimonial;
use Illuminate\Http\Request;

class TestimonialController extends Controller
{
    
    public function index()
    {
        $data=Testimonial::all();
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
        $data=Testimonial::create([
            'name'=>$request->name,
            'designation'=>$request->designation,
            'comment'=>$request->comment,
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
        $data=Testimonial::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }

    public function edit(string $id)
    {
        $data=Testimonial::find($id);
        return response()->json(['success'=>true,'data'=>$data]);
    }

    public function update(Request $request, string $id)
    {
        if ($request->file()) {
            $filename=time().'_'.$request->file->getClientOriginalName();
            $request->file->move(public_path('uploads/'),$filename);

            $data=Testimonial::find($id)->update([
                'name'=>$request->name,
                'designation'=>$request->designation,
                'comment'=>$request->comment,
                'photo'=>$filename
            ]);
        }else{
            $data=Testimonial::find($id)->update([
                'name'=>$request->name,
                'designation'=>$request->designation,
                'comment'=>$request->comment,

            ]);
        }

        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Updated!']);
    }

    public function destroy(string $id)
    {
        $data=Testimonial::find($id)->delete();
        return response()->json(['success'=>true,'data'=>$data,'message'=>'Successfully Deleted!']);
    }
}
