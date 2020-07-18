@extends('layouts.cv_app')
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
					<li class="active"><a href="">Nhà tuyển dụng xem hồ sơ</a></li>
				</ul>
				<form name="frmJobsaved" id="frmJobsaved" method="post" action="">
				<input type="hidden" name="jobsaved_id" id="jobsaved_id" value="0">
				<div id="tabs-jobsaved" class="col-xs-12 tabwidget-content">
				<div class="col-xs-12 header-tbl">
						<div class="col-xs-8 align_center col-mb-1">Tên công ty</div>
						<div class="col-xs-2 align_center col-mb-2">Lượt xem</div>
						<div class="col-xs-2 align_center col-mb-3">Ngày xem</div>
					</div>
										<div class="col-xs-12 record-tbl">
						<p>Không tìm thấy dữ liệu phù hợp</p>
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