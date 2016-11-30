@extends('app')

@section('content')
	<div class="row">
		@if (count($errors) > 0)
		    <div class="alert alert-danger">
		        <ul>
		            @foreach ($errors->all() as $error)
		                <li>{{ $error }}</li>
		            @endforeach
		        </ul>
		    </div>
		@endif
		@if (Session::has('message'))
	   		<div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
	</div>
	@foreach($posts as $post)
		<ul class="media-list">
		  <li class="media" style="margin-bottom:5px; border:1px solid #333;border-radius:5px; padding:10px;">
		    <div class="media-left">
		      <a href="#">
		        <img class="media-object" src="/uploads/images/small/{{$post->image}}" alt="{{$post->title}}">
		      </a>
		    </div>
		    <div class="media-body ">
		    	<form action="/update" method="post" style="margin:5px">
		    		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		    		<input name="id" type="hidden" value="{{$post->id}}" >
		    		<div class="checkbox">
					  <label><input name="published" type="checkbox" 
					  	@if ($post->published == 1)
							checked
						@endif
						><b>Published</b></label>
					</div>
		    		<div class="form-group">
					  <label for="title">Title:</label>
					  <input type="text" class="form-control" id="title" name="title" value="{{$post->title}}">
					</div>
					<div class="form-group">
					  <label for="description">Description:</label>
					  <textarea class="form-control" rows="5" id="description" name="description">{{$post->description}}</textarea>
					</div>
					<button  type="submit" class="btn btn-default">Update</button>
		    	</form>
		    	<form action="/deleteimage" method="post" style="margin:5px">
		    		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		    		<input name="id" type="hidden" value="{{$post->id}}" >
		    		<button  type="submit" class="btn btn-default">Delete&nbsp</button>
		    	</form>
		    </div>
		  </li>
		</ul>
	@endforeach
<hr>
<!-- Pagination -->
{{ $posts->links() }}
@stop


