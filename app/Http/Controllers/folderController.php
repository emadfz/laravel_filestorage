<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Folder;
use App\Files;
use Illuminate\Support\Facades\Input;
use Storage;

class folderController extends Controller
{
    public function show($parent_id = Null)
    {

        $urls=[];
        $disk = Storage::disk('gcs');


        if ($parent_id == Null) {
            $folders = Folder::where('parent_id', Null)->get();
            $files= Files::where('parent_id', '')->get();

        }else{
            $folders = Folder::where('parent_id', $parent_id)->get();
            $files= Files::where('parent_id', $parent_id)->get();
        }

        foreach($files as $file)
        { 
            $id = $file->id;

            $urls[$file->id] = $disk->url($file->cloud_name);

        }

        return view('home', compact('folders', 'parent_id', 'files', 'urls'));
    }
    public function upload() {

        $disk = Storage::disk('gcs');

        $file      = Input::file('file');
        $title     = $file->getClientOriginalName();
        $parent_id = Input::get('parent_id');

// $size      = $file->getSize();
// $mimeType  = $file->getMimeType();
// create a file
// return $file;
        $cloud_name = $disk->put('',$file);
        $file = new Files;
        $file->title = $title;
        $file->parent_id = $parent_id;
        $file->cloud_name = $cloud_name;
        $file->save(); 
        return redirect()->route('folder', ['parent_id' => $parent_id]);
// return $file->getPathName();


    }
}
