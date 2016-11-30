@extends('app')

@section('content')
	<div class="row">
		<h3>{{$post->title}}</h3>
	</div>
	<div class="row">
		<img src="/uploads/images/original/{{$post->image}}" style="max-width:100%; height:auto;">
	</div>
	<div class="row">
		<p>{{$post->description}}</p>
	</div>
@stop


