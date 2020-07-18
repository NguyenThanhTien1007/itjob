@extends('layouts.company')
@section('header')

@endsection

@section('content')

<!-- EndNav -->
<section id="business" class="container">
	
<!-- Information -->
	<div class="row margin-left container"  style="margin-top:30px">
    <div class="row">
    <div class="col-md-12 ">
         
	<div class="FontsizeAllMy CB-Profile">
			<div class="BackGr col-xs-12">
				<ul class="headertab2">
					<li class="active"><a href="">Hồ Sơ Ứng Tuyển</a></li>
					
				</ul>
				<form name="frmJobsaved" id="frmJobsaved" method="post" action="">
				<input type="hidden" name="jobsaved_id" id="jobsaved_id" value="0">
				<div id="tabs-jobsaved" class="col-xs-12 tabwidget-content">
					<div class="col-xs-12 header-tbl">
						<div class="col-xs-3 align_center col-mb-1">Tên ứng viên</div>
						<div class="col-xs-3 align_center col-mb-1">Tên việc làm</div>
						<div class="col-xs-3 align_center col-mb-3">Ngày nộp</div>
						<div class="col-xs-3 align_center col-mb-3">Thông báo</div>
					</div>
					@foreach($list_candidate as $li)
								<div class="col-xs-12 jobsaved ">
								<form name="frmJobsaved" id="frmJobsaved" action="{{route('quanlyungtuyen',Auth::user()->id)}}" method="POST">
								<input type="hidden" name="_token" value="{{csrf_token()}}">
								<input type="hidden" name="txtjob_id" value="{{$li->job_id}}">
								<input type="hidden" name="txtcompany_id" value="{{$li->id_company}}">
								<input type="hidden" name="txtuser_id" value="{{$li->user_id}}">
									<div class="col-xs-3 align_center col-mb-1">{{$li->full_name}}</div>
									<div class="col-xs-3 align_center col-mb-2">{{$li->position}}</div>
									<div class="col-xs-3 align_center col-mb-3">{{$li->datetime}}</div>
									<div class="col-xs-3 align_center col-mb-3">
								
									<button type="submit" class="btn btn-lg btn-primary">Gửi thông báo</button>
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