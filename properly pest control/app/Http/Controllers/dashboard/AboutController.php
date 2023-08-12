<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use App\Models\dashboard\About;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        $data = About::all();
        return response()->json(['data' => $data]);
    }


    public function create()
    {

    }

    public function store(Request $r)
    {
        $filename = time() . '_' . $r->file->getClientOriginalName();
        $r->file->move(public_path('uploads/'), $filename);
        // $data['photo']=$filename;
        $data = About::create([
         'title' => $r->title,
         'description' => $r->description,
         'photo' => $filename,
         'year' => $r->year,
         'blpoint' => $r->blpoint,
        ]);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'Successfully Inserted!']);
    }


    public function show(string $id)
    {
        $data = About::find($id);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'ok']);
    }

    public function edit(string $id)
    {
        $data = About::find($id);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'ok']);
    }


    public function update(Request $request, string $id)
    {
        if ($request->file()) {
            $filename = time() . '_' . $request->file->getClientOriginalName();
            $request->file->move(public_path('uploads/'), $filename);

            $data = About::find($id)->update([
                'title' => $request->title,
                'description' => $request->description,
                'photo' => $filename,
                'year' => $request->year,
                'blpoint' => $request->blpoint,
                ]);
        }else{
            $data = About::find($id)->update([
                'title' => $request->title,
                'description' => $request->description,
                'year' => $request->year,
                'blpoint' => $request->blpoint,
                ]);

        }


        return response()->json(['success' => true, 'data' => $data, 'message' => 'Successfully Updated!']);
    }

    public function destroy(string $id)
    {
        $data = About::find($id)->delete();
        return response()->json(['success' => true, 'data' => $data, 'message' => 'Successfully Deleted!']);
    }
}
