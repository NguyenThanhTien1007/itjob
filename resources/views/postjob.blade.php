@extends('layouts.company_app')
@section('header')

@endsection

@section('content')

<div class="col-sm-9">
			<div class="panel  panel-primary">
				<div class="panel-heading"><b>Đăng Tuyển Dụng</b></div>
				<div class="panel-body" style="margin-left:10px;margin-right:10px">

					<form action="{{route('postjob')}}" method="POST">
						<input type="hidden" name="_token" value="{{@csrf_token()}}">
						<div class="form-group row">
							<label class="control-label col-sm-4" for="email">Tên việc làm/ Vị trí chức danh:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control " id="position" name="position" autofocus="" required="" placeholder="Nhập tên việc làm (hoặc) vị trí chức danh IT cần tuyển dụng" aria-required="true">
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Chi tiết tuyển dụng:</label>
							<div class="col-sm-8">
								<textarea class="form-control ckeditor" rows="5" placeholder="" id="objective_job" name="detail" style="visibility: hidden; display: none;">
							</textarea>
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Chọn chức danh nghề nghiệp:</label>
							<div class="col-sm-8">
								<select class="js-example-basic-multiple" name="catejob[]" multiple="multiple" style="width:100%">

									@foreach($categories as $cate)
									<option value="{{$cate->jobID}}">{{$cate->jobName}}</option>
									@endforeach


								</select>
							</div>
						</div>

						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Chọn nơi làm việc:</label>
							<div class="col-sm-8">
								<select class="js-example-basic-multiple" name="place[]" multiple="multiple" style="width:100%">
									@foreach($provinces as $pr)
									<option value="{{$pr->region_id}}">{{$pr->region_name}}</option>
									@endforeach
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Mức lương hàng tháng *:</label>
							<div class="col-sm-8 form-inline">
								<div class="fl_left width_530">
									<select name="salary_unit" id="job_salaryunit" class="form-control">
										<option value="vnd">VNĐ</option>
										<option value="usd">USD</option>
									</select>
									<span class="mar_leftright8 fl_left">Tối Thiểu <span class="red">*</span></span>
									<input style="width:130px;" class="form-control" size="10" type="number" name="salary_from" id="salary_from" maxlength="12" value="1">
									<span class="mar_leftright8 fl_left">Tối Đa <span class="red">*</span></span>
									<input style="width:130px;" class="form-control" size="10" type="number" name="salary_to" id="salary_to" maxlength="12" value="100">
									<div class="display_ads">
										<label>
											<input class="input_margin" type="checkbox" name="showsalary" value="0" checked="checked">
											<span>"Hiển thị thông tin lương" trên vị trí đăng tuyển</span>
										</label>
										<div class="fl_left mar_top10">
											<p class="width_62 fl_left"><b>Lưu ý:</b></p>

											- 72% ứng viên chia sẻ rằng thông tin lương ảnh hưởng đến quyết định ứng
											tuyển của họ.
											<br>- Bạn có thể quyết định "hiển thị thông tin lương" để thu hút thêm nhiều
											hồ sơ ứng tuyển vào vị trí tuyển dụng.
											<p style="color:black ; font-weight: bold;">- Bạn nên nhập cả hai mức lương
												tối thiểu và tối đa cho vị trí cần đăng tuyển.</p>
										</div>
									</div>
									<div id="error_salary"></div>
								</div>
							</div>
						</div>
						<div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Hình thức làm việc *:</label>
                            <div class="col-sm-8  ">
                                <div class="form-group">


                                    <label class="checkbox-inline"><input type="checkbox" name="typeofjob[]"
                                                                          id="chkResumeType_1"
                                                                          value="1">Nhân viên chính thức</label>
                                    <label class="checkbox-inline"><input type="checkbox" name="typeofjob[]"
                                                                           id="chkResumeType_2"
                                                                          value="2">Thời vụ/ Nghề tự do </label>
                                </div>
                                <div class="form-group">
                                    <label class="checkbox-inline"><input type="checkbox" name="typeofjob[]"
                                                                          id="chkResumeType_3"
                                                                          value="3">Bán thời gian</label>
                                    <label class="checkbox-inline"> <input type="checkbox" name="typeofjob[]"
                                                                            id="chkResumeType_4"
                                                                           value="4">Thực tập</label>
                                </div>
                                <span id="error_resumetype"></span>
                            </div>
                        </div>

						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Chọn kỹ năng làm việc:</label>
							<div class="col-sm-8">
								<select class="js-example-basic-multiple" name="skill[]" multiple="multiple" style="width:100%">
									@foreach($skill as $skill)
									<option value="{{$skill->id}}">{{$skill->skill_name}}</option>
									@endforeach
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4 " for="pwd">Hạn nộp hồ sơ:</label>
							<div class="col-sm-8">
								<input type='date' name="enddate" class="form-control" id="enddate" />
							</div>


						</div>
						<div class="row">
						<div class="row "><h1 class="titlepostjob" ><b>Phúc lợi</b></h1></div>
                        <div class="col-sm-12 col-lg-12 col-md-12"> 
                                
                                    @foreach($benefits as $bn)

                                          
                                            
                                        
                                        <div class="col-sm-6 col-lg-6 col-md-6"> 
                                            <label class="benefit-lb">
                                                <input type="checkbox" class="input_margin" id="benefit[]_ID_2"
                                                       name="benefit[]" value="{{$bn->id}}">
                                                <span><i class="fa fa-medkit {{$bn->icon}}"></i> {{$bn->value}}</span>
                                            </label>
                                        </div>
                                        
                                      
                                  
                                        
                                    @endforeach
                                
                                
                                    

                                
                          

                        </div>
						<!-- Thông tin chung -->
						<div class="row ">
							<h1 class="titlepostjob"><b>Yêu cầu chung</b></h1>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Giới tính *:</label>
							<div class="col-sm-8  form-inline ">

								<input type="radio" name="gender" id="rdi_unsex" value="0" checked>Nam/Nữ
								<input type="radio" name="gender" id="rdi_unsex" value="1">Nam
								<input type="radio" name="gender" id="rdi_unsex" value="2">Nữ


							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Tuổi:</label>
							<div class="col-sm-8 form-inline ">
								<input class="form-control" size="10" type="number" name="age_from" id="age_from" maxlength="12" value="">&nbsp;&nbsp;Đến
								<input class="form-control" size="10" type="number" name="age_to" id="age_to" maxlength="12" value="">


							</div>
						</div>

						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Kinh nghiệm *:</label>
							<div class="col-sm-8 form-inline ">
								<select class="form-control" name="experience" id="JOB_ISEXPERIENCE">
									<option value="0">Chọn Kinh nghiệm</option>
									<option value="1">Không yêu cầu kinh nghiệm</option>
									<option value="2">Có kinh nghiệm</option>
									<option value="3">Chưa có kinh nghiệm</option>
								</select>
								<span id="error_resumetype"></span>
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Cấp bậc *:</label>
							<div class="col-sm-8 form-inline ">
								<select class="form-control" name="level" id="LEVEL_ID">
									<option value="0">Chọn Cấp bậc</option>
									<option value="1">Sinh viên/ Thực tập sinh</option>
									<option value="2">Mới tốt nghiệp</option>
									<option value="3">Nhân viên</option>
									<option value="4">Trưởng nhóm / Giám sát</option>
									<option value="5">Quản lý</option>
									<option value="6">Phó Giám đốc</option>
									<option value="7">Giám đốc</option>
									<option value="8">Tổng giám đốc</option>
									<option value="9">Chủ tịch / Phó Chủ tịch</option>
								</select>
								<span id="error_resumetype"></span>
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Bằng cấp:</label>
							<div class="col-sm-8 ">
								<select class="form-control" name="degree" id="DEGREE_ID">
									<option value="0">Không yêu cầu bằng cấp</option>
									<option value="1">Trung học</option>
									<option value="2">Trung cấp</option>
									<option value="3">Cao đẳng</option>
									<option value="4">Đại học</option>
									<option value="5">Sau đại học</option>
									<option value="6">Khác</option>
								</select>

							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-sm-4" for="pwd">Yêu cầu hồ sơ:</label>
							<div class="col-sm-8 ">
								<ul class="list-group" style="list-style: none">
								@foreach($languages as $lang)
                                        <li>
                                            <div class="col">
                                                <label>
                                                    <input type="checkbox" class="input_margin chk_lang_req"
                                                           id="language_require_1" name="language[]"
                                                           value="{{$lang->id}}">
                                                    <span>{{$lang->value}}</span>
                                                </label>
                                            </div>
                                        </li>
                                    @endforeach

								</ul>

							</div>
						</div>
						<div class="form-group row">
                            <div class="col-sm-offset-4 col-sm-10">
                                <button type="submit" class="btn btn-warning">Tiếp tục và Xem lại thông tin</button>
                            </div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>






@endsection