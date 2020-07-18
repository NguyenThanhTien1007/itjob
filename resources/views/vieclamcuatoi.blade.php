@extends('layouts.cv_app')
@section('header')

@endsection

@section('content')

<!-- EndNav -->
<section id="business" class="container">

	<!-- Information -->
	<div class="row margin-left container" style="margin-top:30px">
		<div class="row">
			<div class="col-md-12 ">

				<div class="FontsizeAllMy CB-Profile">
					<div class="BackGr col-xs-12 col-md-12">

					<div class="active col-xs-6 col-md-3"><a href="{{route('vieclamcuatoi',Auth::user()->id)}}">Việc làm đã lưu</a></div>
						<div class="active col-xs-6 col-md-3"><a href="{{route('vieclamdanop',Auth::user()->id)}}">Việc làm đã nộp</a></div>


					
							<input type="hidden" name="jobsaved_id" id="jobsaved_id" value="0">
							<div id="tabs-jobsaved" class="col-xs-12 tabwidget-content">
								<div class="col-xs-12 header-tbl">
									<div class="col-xs-3 align_center col-mb-1">Tên công việc</div>
									<div class="col-xs-3 align_center col-mb-2">Địa điểm</div>
									<div class="col-xs-3 align_center col-mb-3">Ngày đăng</div>
									
								</div>
								@foreach($myjob as $my)
								<div class="col-xs-12 jobsaved ">
								<form name="frmJobsaved" id="frmJobsaved" action="{{route('submitjob')}}" method="POST">
								<input type="hidden" name="_token" value="{{csrf_token()}}">
								<input type="hidden" name="txtjob_id" value="{{$my->job_id}}">
									<div class="col-xs-3 align_center col-mb-1">{{$my->position}}</div>
									<div class="col-xs-3 align_center col-mb-2">{{$my->region_name}}</div>
									<div class="col-xs-3 align_center col-mb-3">{{$my->updated_at}}</div>
									<div class="col-xs-3 align_center col-mb-3">
								
									<button type="submit" class="btn btn-lg btn-primary">Nộp hồ sơ</button>
								</form>
									</div>
									
								</div>
								@endforeach

							</div>
					
					</div>
				</div>

			</div>





</section>

<br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>

@endsection