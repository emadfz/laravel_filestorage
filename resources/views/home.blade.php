@extends('layouts.app')

@section('content')

    <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Folders</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
            @foreach($folders as $folder)
            <a href="{{route('folder', $folder->id)}}" style=" margin: 10px 10px 10px 10px " class="btn btn-sq-lg btn-info">
                <i class="glyphicon glyphicon-folder-open fa-5x"></i><br/>
                {{$folder->name}}
            </a>

            @endforeach
             <a href="#" style=" margin: 10px 10px 10px 10px " class="btn btn-sq-lg btn-warning">
                <i class="fa fa-plus fa-5x"></i><br/>
                New Folder
            </a>
            </div>
            <div class="row" style="margin-top: 50px;">

            @foreach($files as $file)
                <a href="{{$urls[$file->id]}}" style=" margin: 10px 10px 10px 10px " class="btn btn-sq-lg btn-primary">
                    <i class="fa fa-file fa-5x"></i><br/>
                    {{$file->title}}
                </a>
            @endforeach

            </div>
            <div class="row" style="margin-top: 50px;">
            <h3>Add File to this folder</h3>
                <form action="{{route('cloud')}}" method="POST"  enctype="multipart/form-data"  >
                    {{ csrf_field() }}
                    <input type="hidden" name="parent_id" value="{{$parent_id}}">
                    <input type="file" name="file" required=""> 
                    <input type="submit" value="submit"> 
                </form>
            </div>
            </div>
        </div>
    </section>
 



@endsection
