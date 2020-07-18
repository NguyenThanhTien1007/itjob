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
					<div class="BackGr col-xs-12">
						<ul class="headertab2">
							<li class="active"><a href="">Danh sách thông báo của bạn</a></li>
						</ul>
						<form name="frmJobsaved" id="frmJobsaved" method="post" action="">
							<input type="hidden" name="jobsaved_id" id="jobsaved_id" value="0">
							<div id="tabs-jobsaved" class="col-xs-12 tabwidget-content">
								<div class="col-xs-12 header-tbl">
									<div class="col-xs-3 align_center col-mb-1">Tên thông báo</div>
									<div class="col-xs-3 align_center col-mb-2">Ngày thông báo</div>
									<div class="col-xs-3 align_center col-mb-3">Công ty</div>
									<div class="col-xs-3 align_center col-mb-4">Liên hệ/SĐT</div>
									
								</div>

								@foreach($announcement as $my)
								<div class="col-xs-12 jobsaved ">
									<form name="frmJobsaved" id="frmJobsaved" action="{{route('submitjob')}}" method="POST">
										<input type="hidden" name="_token" value="{{csrf_token()}}">
										<input type="hidden" name="txtjob_id" value="{{$my->job_id}}">
										<div class="col-xs-3 align_center col-mb-1">{{$my->position}}</div>
										<div class="col-xs-3 align_center col-mb-2">{{$my->datetime}}</div>
										<div class="col-xs-3 align_center col-mb-3">{{$my->company_name}}</div>
										<div class="col-xs-3 align_center col-mb-3">{{$my->phone}}</div>

											
									</form>
								</div>

							</div>
							@endforeach

					</div>
				</div>
				</form>
			</div>
		</div>

	</div>





</section>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
@endsection