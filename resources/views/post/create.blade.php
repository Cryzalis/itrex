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
	<form action="{{ URL::to('upload') }}" method="post"  enctype="multipart/form-data">
	  <input type="hidden" name="_token" value="{{ csrf_token() }}">
	  <div class="form-group">
	    <input name="title" type="text" class="form-control" placeholder="Title">
	  </div>
	  <div class="form-group">
	    <input name="description" type="text" class="form-control" placeholder="Description">
	  </div>
	  <div class="form-group">
	    <input name="image" type="file" id="image" class="form-control">
	  </div>
	  <button type="submit" class="btn btn-default">Submit</button>
	</form>
</div>
@stop


