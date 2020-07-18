@extends('layouts.company_info')
@section('header')

@endsection

@section('content')

<div class="col-sm-9">
			<div class="panel  panel-primary">
				<div class="panel-heading"><b>Đăng Tuyển Dụng</b></div>
				<div class="panel-body" >

					<form action="" method="POST">
						<input type="hidden" name="_token" value="{{@csrf_token()}}">
						<div class="row">
							<h3><b>Thông tin liên hệ</b></h3>

						</div>
						<br>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email">Họ tên:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control " id="position" name="position" autofocus="" required="" placeholder="Vui lòng nhập họ tên" aria-required="true">
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email">Chức vụ:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control " id="position" name="position" autofocus="" required="" placeholder="Vui lòng nhập chức vụ" aria-required="true">
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email">Email liên hệ:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control " id="position" name="position" autofocus="" required="" placeholder="Vui lòng nhập email" aria-required="true">
							</div>
						</div>
						
						<div class="row">
							<h3><b>Địa chỉ liên hệ</b></h3>

						</div>
						<br>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email">Địa chỉ:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control " id="position" name="position" autofocus="" required="" placeholder="Vui lòng nhập địa chỉ" aria-required="true">
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email">Quốc gia:</label>
							<div class="col-sm-8">
							<select class="select" name="Country" class="width_160" onchange="RefreshCitySer()">
	<option value="22">Bangladesh</option>
	<option value="14">Campuchia</option>
	<option value="4">Canada</option>
	<option value="25">Công Gô</option>
	<option value="20">Đài Loan</option>
	<option value="8">Hàn Quốc</option>
	<option value="13">Hoa Kỳ</option>
	<option value="24">Hồng Kông</option>
	<option value="169">Khác</option>
	<option value="19">Lào</option>
	<option value="9">Malaysia</option>
	<option value="21">Myanmar</option>
	<option value="2">Nhật Bản</option>
	<option value="17">Qatar</option>
	<option value="23">Quốc tế</option>
	<option value="10">Singapore</option>
	<option value="5">Trung Quốc</option>
	<option value="3">Úc</option>
	<option value="16">Ukraine</option>
	<option value="1" selected="selected">Việt Nam</option>
</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email">Tỉnh:</label>
							<div class="col-sm-8">
							<select class="select" name="Location" class="width_160">
	<option value="76">An Giang</option>
	<option value="64">Bà Rịa - Vũng Tàu</option>
	<option value="650">Bình Dương</option>
	<option value="651">Bình Phước</option>
	<option value="62">Bình Thuận</option>
	<option value="56">Bình Định</option>
	<option value="781">Bạc Liêu</option>
	<option value="281">Bắc Cạn</option>
	<option value="240">Bắc Giang</option>
	<option value="241">Bắc Ninh</option>
	<option value="75">Bến Tre</option>
	<option value="26">Cao Bằng</option>
	<option value="78">Cà Mau</option>
	<option value="71">Cần Thơ</option>
	<option value="50">Dak Lak</option>
	<option value="1042">Dak Nông</option>
	<option value="59">Gia Lai</option>
	<option value="19">Hà Giang</option>
	<option value="351">Hà Nam</option>
	<option value="4">Hà Nội</option>
	<option value="34">Hà Tây</option>
	<option value="39">Hà Tĩnh</option>
	<option value="18">Hòa Bình</option>
	<option value="321">Hưng Yên</option>
	<option value="320">Hải Dương</option>
	<option value="31">Hải Phòng</option>
	<option value="780">Hậu Giang</option>
	<option value="8" selected="selected">Hồ Chí Minh</option>
	<option value="1071">KV Bắc Trung Bộ</option>
	<option value="1070">KV Nam Trung Bộ</option>
	<option value="1072">KV Tây Nguyên</option>
	<option value="1069">KV Đông Nam Bộ</option>
	<option value="901">Khác</option>
	<option value="58">Khánh Hòa</option>
	<option value="77">Kiên Giang</option>
	<option value="60">Kon Tum</option>
	<option value="23">Lai Châu</option>
	<option value="72">Long An</option>
	<option value="20">Lào Cai</option>
	<option value="63">Lâm Đồng</option>
	<option value="25">Lạng Sơn</option>
	<option value="350">Nam Định</option>
	<option value="38">Nghệ An</option>
	<option value="30">Ninh Bình</option>
	<option value="68">Ninh Thuận</option>
	<option value="210">Phú Thọ</option>
	<option value="57">Phú Yên</option>
	<option value="52">Quảng Bình</option>
	<option value="510">Quảng Nam</option>
	<option value="55">Quảng Ngãi</option>
	<option value="33">Quảng Ninh</option>
	<option value="53">Quảng Trị</option>
	<option value="79">Sóc Trăng</option>
	<option value="22">Sơn La</option>
	<option value="37">Thanh Hóa</option>
	<option value="36">Thái Bình</option>
	<option value="280">Thái Nguyên</option>
	<option value="54">Thừa Thiên- Huế</option>
	<option value="73">Tiền Giang</option>
	<option value="1065">Toàn quốc</option>
	<option value="74">Trà Vinh</option>
	<option value="27">Tuyên Quang</option>
	<option value="66">Tây Ninh</option>
	<option value="70">Vĩnh Long</option>
	<option value="211">Vĩnh Phúc</option>
	<option value="29">Yên Bái</option>
	<option value="900">Điện Biên</option>
	<option value="511">Đà Nẵng</option>
	<option value="1064">Đồng Bằng Sông Cửu Long</option>
	<option value="61">Đồng Nai</option>
	<option value="67">Đồng Tháp</option>
</select>
							</div>
						</div>
						</div>
						<div class="form-group row">
                            <div class=" col-sm-12">
                               <center> <button type="submit" class="btn btn-warning">Cập nhật</button></center>
                            </div>
						</div>
					</form>
				</div>
			</div>
		</div>






@endsection