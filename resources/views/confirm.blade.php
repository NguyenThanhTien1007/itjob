@extends('layouts.company_app')
@section('header')

@endsection

@section('content')






		<div class="col-sm-7" style="text-align: right">
			<div class="panel  panel-primary">
				<div class="panel-heading" style="text-align: center;"><b>Xác Nhận Đăng Tuyển Dụng</b></div>
				<div class="panel-body" style="margin-left:70px;margin-right:40px">

					<form method="POST" action="{{route('confirm',Auth::user()->id)}}">
						<input type="hidden" name="_token" value="{{@csrf_token()}}">
						<input type="hidden" name="idjob" value="{{$postjob->id}}">
						<div class="form-group row">
							<label class="control-label col-sm-6" for="email">Tên việc làm/ Vị trí chức danh:</label>
							<div class="col-sm-6">
								{{$postjob->position}}
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-6" for="pwd">Chi tiết tuyển dụng:</label>
							<div class="col-sm-6">
								{{$postjob->detail}}
								</textarea>
							</div>
						</div>

						<div class="form-group row">
							<label class="control-label col-sm-6" for="pwd">Mức lương hàng tháng :</label>
							<div class="col-sm-6 form-inline">
								<div class="fl_left width_530">
									{{$postjob->salary_from}} {{$postjob->salary_unit}} đến {{$postjob->salary_to}} {{$postjob->salary_unit}}
								</div>
								<div id="error_salary"></div>
							</div>
						</div>


						<div class="form-group row">
							<label class="control-label col-sm-6 " for="pwd">Hạn nộp hồ sơ:</label>
							<div class="col-sm-6">
								{{$postjob->enddate}}
							</div>
						</div>


						<div class="form-group row">
							<div class="col-sm-offset-2 col-sm-10" style="">
								<button type="submit" class="btn btn-warning">Đăng
								</button>
								<form method="POST" action="{{route('savejob',Auth::user()->id)}}">
									<button type="submit" class="btn btn-warning">Lưu</button>
								</form>	
								
									<button type="submit" class="btn btn-warning">Hủy</button>
							
							</div>
						</div>
						


					</form>

				</div>
			</div>
		</div>

	</div>
</div>



@endsection