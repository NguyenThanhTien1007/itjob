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
					<li class="active"><a href="">Lịch Sử Tìm Kiếm Hồ Sơ</a></li>
					
				</ul>
				<p>Mục “Lịch sử tìm kiếm” sẽ tự động lưu trữ 100 kết quả tìm kiếm mới nhất của bạn trong vòng 7 ngày. Để xem lại kết quả tìm kiếm trước đây, nhấn vào tên kết quả tìm kiếm trong lịch sử tìm kiếm của bạn. </p>
				<form name="frmJobsaved" id="frmJobsaved" method="post" action="">
				<input type="hidden" name="jobsaved_id" id="jobsaved_id" value="0">
				<div id="tabs-jobsaved" class="col-xs-12 tabwidget-content">
					<div class="col-xs-12 header-tbl">
						<div class="col-xs-4 align_center col-mb-1">Tìm</div>
						<div class="col-xs-6 align_center col-mb-2">Kết quả tìm kiếm</div>
						<div class="col-xs-2 align_center col-mb-3">Ngày</div>
				
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