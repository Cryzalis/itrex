@extends('app')

@section('content')
<div class="row">

	@foreach($posts as $post)
		<div class="col-md-3 portfolio-item">
			<h3>{{$post->title}}</h3>
			<div class="col-lg-12">
				<a href="/postimage/{{$post->id}}">
			    <img class="img-responsive" src="/{{$imgSmall}}{{$post->image}}" alt="{{$post->title}}">
			</a>
			</div>
			
		</div>
	@endforeach
    
</div>
<hr>
<!-- Pagination -->
{{ $posts->links() }}
<!-- endPagination -->
@stop