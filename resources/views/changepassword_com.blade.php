@extends('layouts.company')
@section('header')
<script>
	// check not mobile
	$(window).on('resize', function() {
		if ($(this).width() > 800) {
			$('#leftmenu').show();
			$('#searchjob').show();

		} else {
			$('#leftmenu').hide();
			$('#searchjob').hide();
		}
	});
</script>
@endsection

@section('content')
@if(Session::has('message')) <script>
	alert('{{Session::get('
		message ')}}');
</script> @endif


<div class="row"></div>
<div class="row job-margin">
	<div class="w3-panel w3-card-4">
		<div class="row w3-margin">
			<h2>Tài khoản<br /></h2>
			<div class="col-xs-12 form-group">
				<form id="frmPassowrd" action="{{route('changepassword',Auth::user()->id)}}" name="frmPassowrd" method="POST">
					<input type="hidden" name="_token" value="{{@csrf_token()}}">

					<div class="row form-group">
						<label class="col-xs-12 col-sm-2">Mật khẩu cũ</label>
						<div class="col-xs-12 col-sm-4">
							<input name="old_password" id="old_password" type="password" class="form-control" value="" maxlength="50" autofocus="" required="" placeholder="Nhập mật khẩu cũ">
						</div>
					</div>
					<div class="row form-group">
						<label class="col-xs-12 col-sm-2">Mật khẩu mới</label>
						<div class="col-xs-12 col-sm-4">
							<input name="new_password" id="new_password" type="password" class="form-control" maxlength="50" autofocus="" required="" placeholder="Nhập mật khẩu mới">
						</div>
					</div>
					<div class="row form-group">
						<label class="col-xs-12 col-sm-2">Xác nhận mật khẩu mới</label>
						<div class="col-xs-12 col-sm-4">
							<input name="confirm_password" id="confirm_password" type="password" class="form-control" maxlength="50" autofocus="" required="" placeholder="Xác nhận mật khẩu mới">
						</div>
					</div>
					<div class="row form-group">
						<label class="col-xs-12 col-sm-2">&nbsp;</label>
						<div class="col-xs-12 col-sm-4">
							<button class="btn btn-blue">Cập nhật</button>
							<button class="btn btn-default mar_left10" type="reset">Bỏ qua</button>
						</div>
					</div>
				</form>
				<hr>
				<form class="form-horizontal" action="" id="frmEmail" name="frmEmail" method="post">
					<input type="hidden" name="_token" value="{{@csrf_token()}}">
					<div class="row form-group">
						<label class="col-xs-12 col-sm-2" style="padding-top: 0">Email cũ</label>
						<div class="col-xs-12 col-sm-4">{{$changepassword->username}}</div>
					</div>
					<div class="row form-group">
						<label class="col-xs-12 col-sm-2">Email mới</label>
						<div class="col-xs-12 col-sm-4">
							<input type="text" name="new_email" id="new_email" class="required email form-control" value="" placeholder="Nhập email mới" maxlength="150">
						</div>
					</div>
					<div class="row form-group">
						<label class="col-xs-12 col-sm-2">&nbsp;</label>
						<div class="col-xs-12 col-sm-4">
							<button class="btn btn-blue">Cập nhật</button>
							<button class="btn btn-default mar_left10" type="reset">Bỏ qua</button>
						</div>
					</div>
				</form>

			</div>
		</div>

	</div>
</div>


@endsection