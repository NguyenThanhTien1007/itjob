@extends('layouts.company_info')
@section('header')

@endsection

@section('content')

		<div class="col-sm-9">
			<div class="panel  panel-primary">
				<div class="panel-heading"><b>Chỉnh sửa thông tin công ty</b></div>
				<div class="panel-body" >
				
					<form action="{{route('thongtincongty',Auth::user()->id)}}" method="POST">
						<input type="hidden" name="_token" value="{{@csrf_token()}}">
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email">Tên công ty:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control " value="{{$company_info->company_name}}" id="company_name" name="company_name" autofocus="" required="" placeholder="Nhập tên công ty" aria-required="true">
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email" >Tổng số nhân viên:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control " value="{{$company_info->number_of_employees}}" id="number" name="number" autofocus="" required="" placeholder="Nhập tổng số nhân viên" aria-required="true">
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Loại hình hoạt động:</label>
							<div class="col-sm-8 form-inline ">
								<select class="form-control" name="typeof" id="typeof">
									<option value="0">Cá nhân</option>
									<option value="1">Công ty TNHH</option>
									<option value="2">Công ty cổ phần</option>
									<option value="3">Nhà nước</option>
								</select>
								<span id="error_resumetype"></span>
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email">Website công ty:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control " value="{{$company_info->website}}" id="website" name="website" autofocus="" required="" placeholder="" aria-required="true">
							</div>
						</div>
						
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email">Phone:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control " value="{{$company_info->company_phone}}" id="phone" name="phone" autofocus="" required="" placeholder="" aria-required="true">
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email">Logo:</label>
							<div class="col-sm-8">
							<input type="file" class="width_202 browserfile" name="logo"  value="{{$company_info->logo}}"  style="height: auto; padding: 0" placeholder="" aria-required="true">
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Giới thiệu công ty:</label>
							<div class="col-sm-8">
								<textarea class="form-control ckeditor" rows="5" placeholder=""  id="introduce" name="introduce" >
									{{$company_info->introduce}}
							</textarea>
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Thông điệp từ công ty:</label>
							<div class="col-sm-8">
								<textarea class="form-control ckeditor" rows="5" placeholder=""   id="message" name="message" >
								{{$company_info->message}}
							</textarea>
							</div>
						</div>
						</div>
						<div class="form-group row">
                            <div class="col-sm-offset-4 col-sm-10">
							<center>	<button type="submit" class="btn btn-warning">Cập nhật</button>
								<button style="display: none;" type="reset" class="btn btn-warning">Xem lại</button><center>
                            </div>
						</div>
					</form>
				</div>
			</div>
		</div>






@endsection