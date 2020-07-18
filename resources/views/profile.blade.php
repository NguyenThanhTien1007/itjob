@extends('layouts.cv_app')
 @section('header')
  @endsection
   @section('content') <!-- EndNav -->
  <section id="business" class="container">

    <!-- Information -->
    <div class="row margin-left container" style="margin-top:30px">
      <div class="row">
        <div class="col-sm-8">
          <div class="panel  panel-warning">
            <div class="panel-heading">
              <h5>&nbsp;</h5>
            </div>
            <div class="panel-body">
              <div class="w3-container">
                <p>
                  <div class="profile-photo-container">
                    <div class="EntityPhoto-circle-8">
                      <img id="img_mem_avatar" width="160" height="160" @if($cv->count()>0) src="{{asset('upload/avatars/'.$cv->images)}}"
                      @else ($cv->count()=0) src="{{asset('public/upload/avatars/'.$user->avatars)}}" @endif class="profile-photo-edit" alt="profile-image">
                    </div>
                    @if($cv->count()>0)
                    <form action="{{route('cv-upload-image-profile')}}" method="post" enctype="multipart/form-data">
                      <input type="hidden" name="_token" value="{{csrf_token()}}">
                      <div class="upload-photo">
                        <label class="fileContainer"><i class="fa fa-edit"></i><input type="file" class="file" id="fileAvatar" name="fileAvatar"></label>
                      </div>
                      <input type="hidden" name="cv_id" value="@if($cv->count()>0) {{$cv->cv_id}} @endif">
                      <button type="submit" class="btn btn-primary">Upload</button>
                    </form>

                    @endif
                  </div>
                </p>
              </div>

            </div>
          </div>
          <!-- Thông tin cá nhân -->
          <div class="panel  panel-warning" id="personal_info">
            <div class="panel-heading">
              <h5><i class="fa fa-user w3-margin-right"></i>Thông tin cá nhân </h5>
            </div>
            <div class="panel-body">
              <div class="w3-container">
                <ul class="w3-ul ">
                  <li class="w3-bar">

                    <div class="w3-bar-item">
                      <p style="line-height:30px">
                        <span class="w3-large "><b>Họ và Tên:</b> @if($cv->count()>0) {{ucwords($cv->full_name)}} @else {{ucwords($user->name)}} @endif</span><br /><b>Ngày
                          sinh:</b>@if($cv->count()>0) {{$cv->birthday}} @endif<br /><b> Điện thoại:</b>
                        @if($cv->count()>0) {{$cv->phone}} @endif<br /><b>Email:</b>@if($cv->count()>0) {{$cv->email}} @endif<br /><b>Tình trạng hôn nhân:</b>@if($cv->count()>0) @if($cv->maritalstatus==1) Đã kết hôn @else Độc thân @endif @endif
                        <br /><b>Tỉnh:</b>@if($cv->count()>0) {{$cv->region_name}} @endif<br /><b>Địa chỉ:</b>@if($cv->count()>0) {{$cv->address}} @endif
                      </p> <button type="button" class="btn btn-default" data-toggle="modal" data-target="#person_info">Chỉnh sửa</button>
                    </div>

                  </li>

                </ul>
              </div>
            </div>
          </div>
          <!-- Editing Personal info -->
          <div class="modal fade" id="person_info" role="dialog">
            <div class="modal-dialog modal-lg">
              <form action="{{route('cv-information')}}" method="post">
                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Thông tin cá nhân</h4>
                  </div>
                  <input type="hidden" name="_token" value="{{csrf_token()}}">
                  <input type="hidden" name="userid" value="{{$user->id}}">
                  <div class="modal-body " style="margin-right:100px; margin-left:50px">
                    <p>
                      @if(count($errors->postInforerror)>0)
                      <div style="color:red">
                        @foreach($errors->postInforerror->all() as $err)
                        {{$err}} <br>
                        @endforeach
                      </div>
                      @endif
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Họ và Tên:</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="txtFullName" placeholder="Họ và Tên" name="txtFullname" value="@if($cv->count()>0){{$cv->full_name}}@else{{$user->name}}@endif">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-4 col-form-label">Giới tính *</label>
                        <div class="col-sm-8">
                          <div class="form-group">
                            <label class="radio-inline"> <input type="radio" id="gender_m" value="0" name="gender" @if($cv->count()>0) @if($cv->gender==0) checked @endif @else checked @endif >Nam</label>
                            <label class="radio-inline"><input type="radio" id="gender_f" value="1" name="gender" @if($cv->count()>0) @if($cv->gender==1) checked @endif @endif >Nữ</label>

                          </div>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Ngày sinh:</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control hasDatepicker" id="txtBirthDay" name="txtBirthday" placeholder="Ngày sinh" value="@if($cv->count()>0){{$cv->birthday}}@endif">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Số điện thoại (*):</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="txtPhone" name="txtPhone" placeholder="Số điện thoại của bạn" value="@if($cv->count()>0){{$cv->phone}}@endif">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Email (*):</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="txtEmail" name="txtEmail" placeholder="Email của bạn" readonly value="{{$user->username}}">
                          <div class="clearall mar_top2 note">Email hiển thị trên CV là email đăng nhập </div>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Quốc tịch:</label>
                        <div class="col-sm-8">
                          <select name="slnationality" id="slnationality" class="form-control valid">
                            @foreach($nationals as $national)
                            <option value="{{$national->nation_id}}" @if($cv->count()>0) @if($cv->id_nationality == $national->nation_id) selected @endif @endif>{{$national->nation_name}}</option>
                            @endforeach
                          </select>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Tình trạng hôn nhân:</label>
                        <div class="col-sm-8">
                          <select class="form-control valid" name="slMarritial">
                            <option value="1" @if($cv->count()>0) @if($cv->maritalstatus==1) selected @endif @endif>Đã kết hôn</option>
                            <option value="0" @if($cv->count()>0) @if($cv->maritalstatus==0) selected @endif @endif>Độc thân</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Tỉnh / Thành phố *:</label>
                        <div class="col-sm-8">
                          <select name="slcity" id="slcity" class="form-control" title="Vui lòng chọn thành phố / tỉnh thành">
                            @foreach($vns as $vn)
                            <option value="{{$vn->region_id}}" @if($cv->count()>0) @if($cv->id_location == $vn->region_id) selected @endif @endif>{{$vn->region_name}}</option>
                            @endforeach
                          </select>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Địa chỉ *:</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" name="txtAddress" id="txtAddress" value="@if($cv->count()>0){{$cv->address}}@endif">
                        </div>
                      </div>
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn navbar-default">Lưu thông tin cá nhân</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Bỏ qua</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <!-- End Edit Infor--!>
         <!-- Muc tiêu nghề nghiệp -->
          <div class="panel  panel-warning" id="career_goals">
            <div class="panel-heading">
              <h5><i class="fa fa-flag w3-margin-right"></i>Mục tiêu nghề nghiệp *</h5>
            </div>
            <div class="panel-body">
              <div class="w3-container">
                <ul class="w3-ul">
                  <li class="w3-bar">
                    <p> @if($careerobj->count()>0) {!!$careerobj->content!!} @endif</p>
                    @if($cv->count()>0)<button type="button" class="btn btn-default" data-toggle="modal" data-target="#target_job">Chỉnh
                      sửa</button>@endif
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <!-- Edit Job Target-->
          <div class="modal fade" id="target_job" role="dialog">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Mục tiêu nghề nghiệp</h4>
                </div>
                <form method="post" action="{{route('cv-careerobj')}}">
                  <input type="hidden" name="_token" value="{{csrf_token()}}">
                  <input type="hidden" name="cv_id" value="@if($cv->count()>0) {{$cv->cv_id}} @endif">
                  @if(count($errors)>0)
                  <div style="color:red">
                    @foreach($errors->all() as $err)
                    {{$err}} <br>
                    @endforeach
                  </div>
                  @endif
                  <div class="modal-body" style=" margin-left:50px">
                    <p>
                      <div class="form-group row">
                        <textarea class="form-control ckeditor" rows="5" placeholder="" id="objective_job" name="objective_job" style="visibility: hidden; display: none;">@if($careerobj->count()>0) {!! $careerobj->content !!} @endif
		</textarea>
                        <div class="clearall mar_top2 note">Vui lòng nhập tối đa không quá 2000 ký tự</div>
                      </div>
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn navbar-default">Lưu mục tiêu nghề
                      nghiệp</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <!-- End Job Target--!>
         
        <!-- Thông tin công việc -->
          <div class="panel  panel-warning" id="job_info">
            <div class="panel-heading">
              <h5><i class="fa fa-briefcase w3-margin-right"></i>Thông tin công việc</h5>
            </div>
            <div class="panel-body">
              <div class="w3-container">
                <ul class="w3-ul">
                  <li class="w3-bar">

                    <div class="w3-bar-item">
                      <p style="line-height:30px">
                        Tiêu đề hồ sơ: @if($careerinfo->count()>0) {{$careerinfo->resumetitle}} @endif
                        <br />
                        Cấp bậc mong muốn: @if($careerinfo->count()>0) {{$careerinfo->position_want}} @endif
                        <br />
                        Mức lương: @if($careerinfo->count()>0) @if($careerinfo->salarykind=='ltt') {{'Thỏa thuận'}} @else {{number_format($careerinfo->salaryfrom).' - '.number_format($careerinfo->salaryto).' ('.$careerinfo->salarykind.')'}} @endif @endif
                        <br />
                        Hình thức làm việc:
                        @if($careerinfo->count()>0)
                        @if($careerinfo->fulltime=='1')
                        {{'- Nhân viên chính thức '}}
                        @endif
                        @if($careerinfo->parttime=='1')
                        {{'- Bán thời gian '}}
                        @endif
                        @if($careerinfo->freelancer=='1')
                        {{'- Thời vụ/ Nghề tự do '}}
                        @endif
                        @if($careerinfo->internship=='1')
                        {{'- Thực tập '}}
                        @endif
                        @endif
                        <br />
                        Nơi làm việc: @if($careerinfo->count()>0) {{$careerinfo->region_name}} @endif
                      </p>
                      @if($cv->count()>0)<button type="button" class="btn btn-default" data-toggle="modal" data-target="#job_information">Chỉnh sửa</button>@endif
                    </div>

                  </li>
                </ul>
              </div>
            </div>
          </div>
          <!-- Editing Job inforamtion -->
          <div class="modal fade" id="job_information" role="dialog">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Thông tin công việc</h4>
                </div>
                <form class="form-horizontal" action="{{route('cv-careerinfo')}}" method="post">
                  <input type="hidden" name="_token" value="{{csrf_token()}}">
                  <input type="hidden" name="cv_id" value="@if($cv->count()>0) {{$cv->cv_id}} @endif">
                  @if(count($errors->postCareerInfoerror)>0)
                  <div style="color:red">
                    @foreach($errors->postCareerInfoerror->all() as $err)
                    {{$err}} <br>
                    @endforeach
                  </div>
                  @endif
                  <div class="modal-body">
                    <p>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Tiêu đề hồ sơ *:</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="txttitle" placeholder="Nhập tiêu đề hồ sơ" name="txttitle" value="@if($careerinfo->count()>0){{$careerinfo->resumetitle}}@endif">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Vị trí muốn làm*:</label>
                        <div class="col-sm-8">
                          <select class="form-control" name="level_id" id="level_id">
                            <option value="Sinh viên/ Thực tập sinh" @if($careerinfo->count()>0) @if($careerinfo->position_want=='Sinh viên/ Thực tập sinh') selected @endif @endif>Sinh viên/ Thực tập sinh</option>
                            <option value="Mới tốt nghiệp" @if($careerinfo->count()>0) @if($careerinfo->position_want=='Mới tốt nghiệp') selected @endif @endif>Mới tốt nghiệp</option>
                            <option value="Nhân viên" @if($careerinfo->count()>0) @if($careerinfo->position_want=='Nhân viên') selected @endif @endif>Nhân viên</option>
                            <option value="Trưởng nhóm / Giám sát" @if($careerinfo->count()>0) @if($careerinfo->position_want=='Trưởng nhóm / Giám sát') selected @endif @endif>Trưởng nhóm / Giám sát</option>
                            <option value="Quản lý" @if($careerinfo->count()>0) @if($careerinfo->position_want=='Quản lý') selected @endif @endif>Quản lý</option>
                            <option value="Phó Giám đốc" @if($careerinfo->count()>0) @if($careerinfo->position_want=='Phó Giám đốc') selected @endif @endif>Phó Giám đốc</option>
                            <option value="Giám đốc" @if($careerinfo->count()>0) @if($careerinfo->position_want=='Giám đốc') selected @endif @endif>Giám đốc</option>
                            <option value="Tổng giám đốc" @if($careerinfo->count()>0) @if($careerinfo->position_want=='Tổng giám đốc') selected @endif @endif>Tổng giám đốc</option>
                            <option value="Chủ tịch / Phó Chủ tịch" @if($careerinfo->count()>0) @if($careerinfo->position_want=='Chủ tịch / Phó Chủ tịch') selected @endif @endif>Chủ tịch / Phó Chủ tịch</option>

                          </select>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Mức lương mong muốn *:</label>
                        <div class="col-sm-8 form-inline">
                          <select name="salary_unit" id="salary_unit" class="form-control" style="float: left; width: 140px">
                            <option value="ltt" @if($careerinfo->count()>0) @if($careerinfo->salarykind=='ltt') selected @endif @endif>Thỏa thuận</option>
                            <option value="vnđ" @if($careerinfo->count()>0) @if($careerinfo->salarykind=='vnd') selected @endif @endif>VNĐ</option>
                            <option value="usd" @if($careerinfo->count()>0) @if($careerinfo->salarykind=='usd') selected @endif @endif>USD</option>
                          </select>
                          <span style="float: left; width: 45px; margin-left: 10px; padding-top:7px">Từ</span>
                          <input type="text" size="12" name="salary_from" id="salary_from" maxlength="14" class="form-control" style="float: left; width: 130px" @if($careerinfo->count()>0)
                          @if($careerinfo->salarykind=='ltt') {{'readonly'}}
                          @else {{'value='.$careerinfo->salaryfrom}}
                          @endif
                          @else {{'readonly'}}
                          @endif>
                          <span style="float: left; width: 48px; margin-left: 10px; padding-top:7px">Đến </span>
                          <input type="text" size="12" name="salary_to" id="salary_to" maxlength="14" class="form-control" style="width: 130px" @if($careerinfo->count()>0)
                          @if($careerinfo->salarykind=='ltt') {{'readonly'}}
                          @else {{'value='.$careerinfo->salaryto}}
                          @endif
                          @else {{'readonly'}}
                          @endif>
                          <div id="error_salary"></div>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Hình thức làm việc *:</label>
                        <div class="col-sm-8">
                          <div class="col-sm-8 htlv">
                            <div class="form-group">
                              <label class="checkbox-inline"><input type="checkbox" name="chkResumeType_1" id="chkResumeType_1" value="1" @if($careerinfo->count()>0) @if($careerinfo->fulltime=='1') checked @endif @else checked @endif>Nhân viên chính thức</label>
                              <label class="checkbox-inline"><input type="checkbox" name="chkResumeType_2" id="chkResumeType_2" value="1" @if($careerinfo->count()>0) @if($careerinfo->freelancer=='1') checked @endif @else checked @endif>Thời vụ/ Nghề tự do </label>
                            </div>
                            <div class="form-group">
                              <label class="checkbox-inline"><input type="checkbox" name="chkResumeType_3" id="chkResumeType_3" value="1" @if($careerinfo->count()>0) @if($careerinfo->parttime=='1') checked @endif @else checked @endif>Bán thời gian</label>
                              <label class="checkbox-inline"> <input type="checkbox" name="chkResumeType_4" id="chkResumeType_4" value="1" @if($careerinfo->count()>0) @if($careerinfo->internship=='1') checked @endif @else checked @endif>Thực tập</label>
                            </div>
                            <span id="error_resumetype"></span>
                          </div>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Nơi làm việc *:</label>
                        <div class="col-sm-8">
                          <select name="LOCATION_ID" id="select_location_id_3" class="form-control required " style="width: 240px">
                            @foreach($vns as $vn)
                            <option value="{{$vn->region_id}}" @if($cv->count()>0) @if($careerinfo->count()>0) @if($careerinfo->location_id == $vn->region_id) selected @endif @endif @endif>{{$vn->region_name}}</option>
                            @endforeach
                          </select>
                        </div>
                      </div>
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn navbar-default">Lưu Thông tin công việc</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <!-- End Editing Job information -->

          <!-- Kinh nghiệm làm việc -->
          <div class="panel  panel-warning" id="em_experience">
            <div class="panel-heading">
              <h5><i class="fa fa-briefcase w3-margin-right"></i>Kinh nghiệm làm việc @if($cv->count()>0)<button type="button" class="btn navbar-default" data-toggle="modal" data-target="#experience" style="float:right;color:#FFF">Thêm mới</button>@endif</h5>
            </div>
            <div class="panel-body">
              <div class="w3-container">
                <ul class="w3-ul">

                  @if($cv->count()>0)
                  @if($experiences->count()>0)
                  @foreach($experiences as $experience)
                  <li class="w3-bar" style="border-bottom: 1px solid #ccc;">
                    <div style="display: inline-block;float: left;">
                      <p>
                        {{$experience->start_day}} - {{$experience->end_day}} : {{$experience->title}} tại {{$experience->company}}.
                      </p>
                      <p>Mô tả công việc: {{$experience->content}}</p>
                    </div>
                    <p style="display: inline-block;float: right;">
                      <button class="btn btn-success" data-toggle="modal" data-target="#experience_edit" data-id="{{$experience->id}}" data-titleex="{{$experience->title}}" data-company="{{$experience->company}}" data-startday="{{$experience->start_day}}" data-endday="{{$experience->end_day}}" data-content="{{$experience->content}}">Sửa</button><br><br>
                      <button class="btn btn-danger" data-toggle="modal" data-target="#delete" data-cate="experience" data-id="{{$experience->id}}">Xóa</button>
                    </p>
                  </li>
                  @endforeach
                  @endif
                  @endif

                </ul>
              </div>
            </div>
          </div>

          <!-- Edit experience -->
          <div class="modal fade" id="experience" role="dialog">
            <div class="modal-dialog modal-lg">
              <form method="post" action="{{route('cv-experience')}}">
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <input type="hidden" name="cv_id" value="@if($cv->count()>0) {{$cv->cv_id}} @endif">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Kinh nghiệm làm việc</h4>
                  </div>

                  <div class="modal-body" style="margin-left:50px;margin-right:40px">
                    <p>
                      @if(count($errors)>0)
                      <div style="color:red">
                        @foreach($errors->all() as $err)
                        {{$err}} <br>
                        @endforeach
                      </div>
                      @endif
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Vị trí / Chức danh *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtTitleExp" placeholder="Vị trí / Chức danh bạn đã làm" name="txtTitleExp">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Tên công ty *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtCompany" placeholder="Tên tổ chức bạn đã làm việc" name="txtCompany">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class=" col-sm-3 col-form-label">Thời gian làm việc *:</label>
                        <div class=" col-sm-9 form-inline">
                          <input type="text" name="start_day" class="form-control" style="float: left; width: 90px" />
                          <span style="float: left; width: 40px; margin-left: 10px; padding-top:7px">Đến </span>
                          <input type="text" name="end_day" class="form-control" style="float: left; width: 90px" id="yearto" readonly />
                          <label class="checkbox-inline" style="margin-left: 15px; padding-top:7px"> <input type="checkbox" name="cboExperCurrent" value="1" class="chk-exper-current" id="checknow" checked>Hiện nay</label>
                          <span class="error_rexp_start"></span>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Mô tả công việc *:</label>
                        <div class="col-sm-9">
                          <textarea name="rexp_workdesc" rows="3" class="form-control" placeholder="Vui lòng nhập tối đa không quá 500 ký tự"></textarea>
                        </div>
                      </div>
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn navbar-default">Lưu kinh nghiệm làm việc</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                  </div>
                </div>
              </form>
            </div>
          </div>

          <div class="modal fade" id="experience_edit" role="dialog">
            <div class="modal-dialog modal-lg">
              <form method="post" action="{{route('cv-experience-update')}}">
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <input type="hidden" name="cv_id" id="id">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Kinh nghiệm làm việc - Chỉnh Sửa</h4>
                  </div>

                  <div class="modal-body" style="margin-left:50px;margin-right:40px">
                    <p>
                      @if(count($errors)>0)
                      <div style="color:red">
                        @foreach($errors->all() as $err)
                        {{$err}} <br>
                        @endforeach
                      </div>
                      @endif
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Vị trí / Chức danh *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtTitleExp" placeholder="Vị trí / Chức danh bạn đã làm" name="txtTitleExp">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Tên công ty *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtCompany" placeholder="Tên tổ chức bạn đã làm việc" name="txtCompany">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class=" col-sm-3 col-form-label">Thời gian làm việc *:</label>
                        <div class=" col-sm-9 form-inline">
                          <input type="text" name="start_day" id="yearfrom" class="form-control" style="float: left; width: 90px" />
                          <span style="float: left; width: 40px; margin-left: 10px; padding-top:7px">Đến </span>
                          <input type="text" name="end_day" class="form-control" style="float: left; width: 90px" id="yearto1" />
                          <label class="checkbox-inline" style="margin-left: 15px; padding-top:7px"> <input type="checkbox" name="cboExperCurrent" value="1" class="chk-exper-current" id="checknow1">Hiện nay</label>
                          <span class="error_rexp_start"></span>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Mô tả công việc *:</label>
                        <div class="col-sm-9">
                          <textarea name="rexp_workdesc" rows="3" id="rexp_workdesc" class="form-control" placeholder="Vui lòng nhập tối đa không quá 500 ký tự"></textarea>
                        </div>
                      </div>
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn navbar-default">Lưu kinh nghiệm làm việc</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <!--End edit experience-->

          <!--Học vấn -->
          <div class="panel  panel-warning" id="education">
            <div class="panel-heading">
              <h5><i class="fa fa-list w3-margin-right"></i>Học vấn * @if($cv->count()>0)<button type="button" class="btn navbar-default" data-toggle="modal" data-target="#certified" style="float:right;color:#FFF">Thêm mới</button>@endif</h5>
            </div>
            <div class="panel-body">
              <div class="w3-container">
                <ul class="w3-ul">
                  @if($cv->count()>0)
                  @if($educations->count()>0)
                  @foreach($educations as $education)
                  <li class="w3-bar" style="border-bottom: 1px solid #ccc;">
                    <div style="display: inline-block;float: left;">
                      <p>Trường/Khóa học: {{$education->course}}</p>
                      <p>Bằng cấp:
                        @if($education->degree_id=='0')
                        Chưa tốt nghiệp
                        @endif
                        @if($education->degree_id=='1')
                        Trung học
                        @endif
                        @if($education->degree_id=='2')
                        Trung cấp
                        @endif
                        @if($education->degree_id=='3')
                        Cao đẳng
                        @endif
                        @if($education->degree_id=='4')
                        Đại học
                        @endif
                        @if($education->degree_id=='5')
                        Sau đại học
                        @endif
                        @if($education->degree_id=='6')
                        Khác
                        @endif
                      </p>
                      <p>
                        @if($education->degree_id!='0')
                        Ngày tốt nghiệp:
                        {{$education->date}}
                        @endif
                      </p>
                      <p>Mô tả: {{$education->description}}</p>
                    </div>
                    <p style="display: inline-block;float: right;">
                      <button class="btn btn-success" data-toggle="modal" data-target="#certified_edit" data-course="{{$education->course}}" data-degree="{{$education->degree_id}}" data-id="{{$education->id}}" data-date="{{$education->date}}" data-description="{{$education->description}}">Sửa</button><br><br>
                      <button class="btn btn-danger" data-toggle="modal" data-target="#delete" data-cate="education" data-id="{{$education->id}}">Xóa</button>
                    </p>
                  </li>
                  @endforeach
                  @endif
                  @endif
                </ul>
              </div>
            </div>
          </div>
          <!-- Thêm học vấn -->
          <div class="modal fade" id="certified" role="dialog">
            <div class="modal-dialog modal-lg">
              <form action="{{route('cv-education')}}" method="post">
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <input type="hidden" name="cv_id" value="@if($cv->count()>0) {{$cv->cv_id}} @endif">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Quá Trình Học Vấn</h4>
                  </div>

                  <div class="modal-body" style="margin-left:50px;margin-right:40px">
                    <p>
                      @if(count($errors->postEducationerror)>0)
                      <div style="color:red">
                        @foreach($errors->postEducationerror->all() as $err)
                        {{$err}} <br>
                        @endforeach
                      </div>
                      @endif
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Trường / khóa học *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtCourse" placeholder="Trường / khóa học đã học" name="txtTitleExp">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Bằng cấp *:</label>
                        <div class="col-xs-12 col-sm-9 form-inline">
                          <select name="redu_degree" class="form-control" id="redu_degree" style="float: left; width: 175px">
                            <option value="0">Chưa tốt nghiệp</option>
                            <option value="1">Trung học</option>
                            <option value="2">Trung cấp</option>
                            <option value="3">Cao đẳng</option>
                            <option value="4">Đại học</option>
                            <option value="5">Sau đại học</option>
                            <option value="6">Khác</option>

                          </select>
                          <span style="float: left; width: 105px; margin-left: 13px; padding-top:7px">Tốt nghiệp</span>

                          <input type="text" name="redu_year" id="redu_year" class="form-control" style="float: left; width: 102px" readonly>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Mô tả chi tiết :</label>
                        <div class="col-sm-9">
                          <textarea name="txtDesCourse" rows="3" class="form-control" placeholder="Vui lòng nhập tối đa không quá 1.000 ký tự"></textarea>
                        </div>
                      </div>
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn navbar-default">Lưu học vấn</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                  </div>
                </div>
              </form>
            </div>
          </div>

          <div class="modal fade" id="certified_edit" role="dialog">
            <div class="modal-dialog modal-lg">
              <form action="{{route('cv-education-update')}}" method="post">
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <input type="hidden" name="cv_id" id="id">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Quá Trình Học Vấn - Chỉnh sửa</h4>
                  </div>

                  <div class="modal-body" style="margin-left:50px;margin-right:40px">
                    <p>
                      @if(count($errors->postEducationerror)>0)
                      <div style="color:red">
                        @foreach($errors->postEducationerror->all() as $err)
                        {{$err}} <br>
                        @endforeach
                      </div>
                      @endif
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Trường / khóa học *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtCourse" placeholder="Trường / khóa học đã học" name="txtTitleExp">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Bằng cấp *:</label>
                        <div class="col-xs-12 col-sm-9 form-inline">
                          <select name="redu_degree" class="form-control" id="redu_degree1" style="float: left; width: 175px">
                            <option value="0">Chưa tốt nghiệp</option>
                            <option value="1">Trung học</option>
                            <option value="2">Trung cấp</option>
                            <option value="3">Cao đẳng</option>
                            <option value="4">Đại học</option>
                            <option value="5">Sau đại học</option>
                            <option value="6">Khác</option>

                          </select>
                          <span style="float: left; width: 105px; margin-left: 13px; padding-top:7px">Tốt nghiệp</span>

                          <input type="text" name="redu_year" id="redu_year1" class="form-control" style="float: left; width: 102px" readonly>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Mô tả chi tiết :</label>
                        <div class="col-sm-9">
                          <textarea id="txtEduDescript" name="txtDesCourse" rows="3" class="form-control" placeholder="Vui lòng nhập tối đa không quá 1.000 ký tự"></textarea>
                        </div>
                      </div>
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn navbar-default">Lưu học vấn</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <!-- End học vấn -->
          <!--Kỹ năng chuyên môn -->
          <div class="panel  panel-warning" id="advanced_skill">
            <div class="panel-heading">
              <h5><i class="fa fa-list-ul w3-margin-right"></i>Kỹ năng chuyên môn * @if($cv->count()>0)<button type="button" class="btn navbar-default" data-toggle="modal" data-target="#skill" style="float:right;color:#FFF">Thêm
                  mới</button>@endif</h5>
            </div>
            <div class="panel-body">
              <div class="w3-container">
                <ul class="w3-ul">
                  @if($cv->count()>0)
                  @if($skills->count()>0)
                  @foreach($skills as $skill)
                  <li class="w3-bar" style="border-bottom: 1px solid #ccc;">
                    <div style="display: inline-block;float: left;">
                      <p>
                        Kỹ năng: {{$skill->title}}
                      </p>
                      <p>Mức độ: {{$skill->level}}/100</p>
                      <p>Mô tả: {{$skill->description}}</p>
                    </div>
                    <p style="display: inline-block;float: right;">
                      <button class="btn btn-success" data-toggle="modal" data-target="#skill_edit" data-id="{{$skill->id}}" data-titleskill="{{$skill->title}}" data-level="{{$skill->level}}" data-description="{{$skill->description}}">Sửa</button><br><br>
                      <button class="btn btn-danger" data-toggle="modal" data-target="#delete" data-cate="skill" data-id="{{$skill->id}}">Xóa</button>
                    </p>
                  </li>
                  @endforeach
                  @endif
                  @endif
                </ul>
              </div>
            </div>
          </div>
          <!-- Thêm kỹ năng chuyên môn -->
          <div class="modal fade" id="skill" role="dialog">
            <div class="modal-dialog modal-lg">
              <form action="{{route('cv-skill')}}" method="post">
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <input type="hidden" name="cv_id" value="@if($cv->count()>0) {{$cv->cv_id}} @endif">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Thêm kỹ năng chuyên môn</h4>
                  </div>

                  <div class="modal-body" style="margin-left:50px;margin-right:40px">
                    <p>
                      @if(count($errors->postSkillerror)>0)
                      <div style="color:red">
                        @foreach($errors->postSkillerror->all() as $err)
                        {{$err}} <br>
                        @endforeach
                      </div>
                      @endif
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Nhập kỹ năng, chuyên môn *:</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="txtSkill" placeholder="Nhập kỹ năng, chuyên môn" name="txtTitleSkill">
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Mô tả chi tiết :</label>
                        <div class="col-sm-8">
                          <textarea name="txtSkillDes" rows="3" class="form-control" placeholder="Vui lòng nhập không quá 150 ký tự"></textarea>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Mức độ :</label>
                        <div class="col-sm-8">
                          <div class="slider-wrapper green">
                            <input name="txtLevelSkill" class="input-range" data-slider-id='ex1Slider' type="text" data-slider-min="0" data-slider-tooltip="always" data-slider-max="100" data-slider-step="1" data-slider-value="14" />
                          </div>
                        </div>
                      </div>
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn navbar-default">Lưu kỹ năng</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                  </div>
                </div>
              </form>
            </div>
          </div>

          <div class="modal fade" id="skill_edit" role="dialog">
            <div class="modal-dialog modal-lg">
              <form action="{{route('cv-skill-update')}}" method="post">
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <input type="hidden" name="cv_id" id="id">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Kỹ năng chuyên môn - Chỉnh sửa</h4>
                  </div>

                  <div class="modal-body" style="margin-left:50px;margin-right:40px">
                    <p>
                      @if(count($errors->postSkillerror)>0)
                      <div style="color:red">
                        @foreach($errors->postSkillerror->all() as $err)
                        {{$err}} <br>
                        @endforeach
                      </div>
                      @endif
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Nhập kỹ năng, chuyên môn *:</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="txtSkill" placeholder="Nhập kỹ năng, chuyên môn" name="txtTitleSkill">
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Mô tả chi tiết :</label>
                        <div class="col-sm-8">
                          <textarea id="txtSkillDes" name="txtSkillDes" rows="3" class="form-control" placeholder="Vui lòng nhập không quá 150 ký tự"></textarea>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Mức độ :</label>
                        <div class="col-sm-8">
                          <div class="slider-wrapper green">
                            <input id="txtLevelSkill" name="txtLevelSkill" class="input-range" data-slider-id='ex1Slider' type="text" data-slider-min="0" data-slider-tooltip="always" data-slider-max="100" data-slider-step="1" data-slider-value="14" />
                          </div>
                        </div>
                      </div>
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn navbar-default">Lưu kỹ năng</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <!-- End Kỹ năng chuyên môn -->
          <!-- Thêm người tham khảo-->
          <div class="modal fade" id="reference" role="dialog">
            <div class="modal-dialog modal-lg">
              <form action="{{route('cv-reference')}}" method="post">
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <input type="hidden" name="cv_id" value="@if($cv->count()>0) {{$cv->cv_id}} @endif">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Thêm Tin Người Tham Thảo
                    </h4>
                  </div>
                  <div class="modal-body" style="margin-left:80px;margin-right:60px">
                    <p>
                      @if(count($errors->postReferenceerror)>0)
                      <div style="color:red">
                        @foreach($errors->postReferenceerror->all() as $err)
                        {{$err}} <br>
                        @endforeach
                      </div>
                      @endif
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Họ & tên *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtNameRefer" placeholder="Nhập tên người tham khảo" name="txtNameRefer">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Chức vụ *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtPosition" placeholder="Nhập chức vụ người tham khảo" name="txtPosition">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Công ty *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtCompany" placeholder="Nhập nơi người tham khảo đang làm việc" name="txtCompany">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Điện thoại *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtPhone" placeholder="Số điện thoại của người tham khảo" name="txtPhone">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Email *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtEmail" placeholder="Email của người tham khảo" name="txtEmail">
                        </div>
                      </div>
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn navbar-default">Lưu người tham khảo</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                  </div>
                </div>
              </form>
            </div>
          </div>

          <div class="modal fade" id="reference_edit" role="dialog">
            <div class="modal-dialog modal-lg">
              <form action="{{route('cv-reference-update')}}" method="post">
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <input type="hidden" name="cv_id" id="id">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Người Tham Thảo - Chỉnh sửa
                    </h4>
                  </div>
                  <div class="modal-body" style="margin-left:80px;margin-right:60px">
                    <p>
                      @if(count($errors->postReferenceerror)>0)
                      <div style="color:red">
                        @foreach($errors->postReferenceerror->all() as $err)
                        {{$err}} <br>
                        @endforeach
                      </div>
                      @endif
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Họ & tên *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtNameRefer" placeholder="Nhập tên người tham khảo" name="txtNameRefer">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Chức vụ *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtPosition" placeholder="Nhập chức vụ người tham khảo" name="txtPosition">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Công ty *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtCompany" placeholder="Nhập nơi người tham khảo đang làm việc" name="txtCompany">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Điện thoại *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtPhone" placeholder="Số điện thoại của người tham khảo" name="txtPhone">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Email *:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="txtEmail" placeholder="Email của người tham khảo" name="txtEmail">
                        </div>
                      </div>
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn navbar-default">Lưu người tham khảo</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <!-- End người tham khảo-->
          <!--Người tham khỏa -->
          <div class="panel  panel-warning">
            <div class="panel-heading">
              <h5><i class="fa fa-book w3-margin-right"></i>Người tham khảo (Không bắt buộc) @if($cv->count()>0)<button type="button" class="btn navbar-default" data-toggle="modal" data-target="#reference" style="float:right;color:#FFF">Thêm mới</button>@endif</h5>
            </div>
            <div class="panel-body">
              <div class="w3-container">
                <ul class="w3-ul">
                  @if($cv->count()>0)
                  @if($references->count()>0)
                  @foreach($references as $reference)
                  <li class="w3-bar" style="border-bottom: 1px solid #ccc;">
                    <div style="display: inline-block;float: left;">
                      <p><strong>{{$reference->name}}</strong></p>
                      <p>
                        {{$reference->position}} tại {{$reference->company}}
                      </p>
                      <p>Điện thoại: {{$reference->phone}}</p>
                      <p>Email: {{$reference->email}}</p>
                    </div>
                    <p style="display: inline-block;float: right;">
                      <button class="btn btn-success" data-toggle="modal" data-target="#reference_edit" data-id="{{$reference->id}}" data-name="{{$reference->name}}" data-position="{{$reference->position}}" data-company="{{$reference->company}}" data-phone="{{$reference->phone}}" data-email="{{$reference->email}}">Sửa</button><br><br>
                      <button class="btn btn-danger" data-toggle="modal" data-target="#delete" data-cate="reference" data-id="{{$reference->id}}">Xóa</button>
                    </p>
                    @endforeach
                    @endif
                    @endif
                </ul>
              </div>
            </div>
          </div>

        </div>


        <div class="col-sm-4 ">
          <div style="margin-right:20px" class="w3-card-2 w3-margin-bottom">
            <div class="w3-bar-block w3-light-grey active">
              <a href="#personal_info" class="w3-bar-item w3-button">Thông tin cá nhân</a>
              <a href="#career_goals" class="w3-bar-item w3-button">Mục tiêu nghề nghiệp</a>
              <a href="#job_info" class="w3-bar-item w3-button">Thông tin công việc</a>
              <a href="#em_experience" class="w3-bar-item w3-button">Kinh nghiệm làm việc</a>
              <a href="#education" class="w3-bar-item w3-button">Học vấn</a>
              <a href="#advanced_skill" class="w3-bar-item w3-button">Kỹ năng chuyên môn</a>
              <a href="#references" class="w3-bar-item w3-button">Người tham khảo</a>
            </div>
          </div>
        </div>
      </div>
    </div>

  </section>
  <script type="text/javascript">
    $('#checknow').change(function() {
        $('#yearto').val('');
        $('#yearto').attr('readonly', this.checked);
    });

    $('#checknow1').change(function() {
        $('#yearto1').val('');
        $('#yearto1').attr('readonly', this.checked);
    });

    $('#salary_unit').change(function() {
        if ($(this).val() == 'ltt') {
            $('#salary_from').val('');
            $('#salary_from').attr('readonly', true);
            $('#salary_to').val('');
            $('#salary_to').attr('readonly', true);
        } else {
            $('#salary_from').attr('readonly', false);
            $('#salary_to').attr('readonly', false);
        }
    });

    $('#redu_degree').change(function() {
        if ($(this).val() == '0') {
            $('#redu_year').val('');
            $('#redu_year').attr('readonly', true);
        } else {
            $('#redu_year').attr('readonly', false);
        }
    });

    $('#redu_degree1').change(function() {
        if ($(this).val() == '0') {
            $('#redu_year1').val('');
            $('#redu_year1').attr('readonly', true);
        } else {
            $('#redu_year1').attr('readonly', false);
        }
    });

    @if(count($errors -> postInforerror) > 0)
    $('#person_info').modal('show');
    @endif

    @if(count($errors -> postCareerInfoerror) > 0)
    $('#job_information').modal('show');
    @endif

    @if(count($errors -> postEducationerror) > 0)
    $('#certified').modal('show');
    @endif

    @if(count($errors -> postReferenceerror) > 0)
    $('#reference').modal('show');
    @endif

    @if(count($errors -> postSkillerror) > 0)
    $('#skill').modal('show');
    @endif

    $('#experience_edit').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget);
        var id = button.data('id');
        var title = button.data('titleex');
        var company = button.data('company');
        var start_day = button.data('startday');
        var end_day = button.data('endday');
        var content = button.data('content');
        var model = $(this);
        model.find('#id').val(id);
        model.find('#txtTitleExp').val(title);
        model.find('#txtCompany').val(company);
        model.find('#yearfrom').val(start_day);
        if (end_day == 'Hiện tại') {
            model.find('#yearto1').val('');
            model.find('#checknow1').attr('checked', true);
            model.find('#yearto1').attr('readonly', true);

        } else {
            model.find('#yearto1').val(end_day);
            model.find('#checknow1').attr('checked', false);
            model.find('#yearto1').attr('readonly', false);
        }
        model.find('#rexp_workdesc').val(content);
    });

    $('#certified_edit').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget);
        var id = button.data('id');
        var course = button.data('course');
        var degree = button.data('degree');
        var date = button.data('date');
        var description = button.data('description');
        var model = $(this);
        model.find('#id').val(id);
        model.find('#txtCourse').val(course);
        model.find('#redu_degree1').val(degree);
        if (degree == '0') {
            model.find('#redu_year1').val('');
            model.find('#redu_year1').attr('readonly', true);

        } else {
            model.find('#redu_year1').val(date);
            model.find('#redu_year1').attr('readonly', false);
        }
        model.find('#txtEduDescript').val(description);
    });

    $('#skill_edit').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget);
        var id = button.data('id');
        var title = button.data('titleskill');
        var level = button.data('level');
        var description = button.data('description');
        var model = $(this);
        model.find('#id').val(id);
        model.find('#txtSkill').val(title);
        model.find('#txtLevelSkill').attr('data-slider-value',level);
        model.find('#txtSkillDes').val(description);
    });

    $('#reference_edit').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget);
        var id = button.data('id');
        var name = button.data('name');
        var position = button.data('position');
        var company = button.data('company');
        var phone = button.data('phone');
        var email = button.data('email');
        var model = $(this);
        model.find('#id').val(id);
        model.find('#txtNameRefer').val(name);
        model.find('#txtPosition').val(position);
        model.find('#txtCompany').val(company);
        model.find('#txtPhone').val(phone);
        model.find('#txtEmail').val(email);
    });

    $('#delete').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget);
        var cate = button.data('cate');
        var id = button.data('id');
        var model = $(this);
        model.find('#id').val(id);
        if (cate == 'experience')
            model.find('#confirmDelete').attr('action', '{{route('cv-experience-delete')}}');
        if (cate == 'education')
            model.find('#confirmDelete').attr('action', '{{route('cv-education-delete')}}');
        if (cate == 'reference')
            model.find('#confirmDelete').attr('action', '{{route('cv-reference-delete')}}');
        if (cate == 'skill')
            model.find('#confirmDelete').attr('action', '{{route('cv-skill-delete')}}');
    })
    
    /*Toggle pink nav*/
    $('#toggle-icon').on('click',function(event){
        var x = document.getElementById("pink-nav");
        if (x.className === "nav navbar-nav") {
            x.className += " responsive";
        } else {
            x.className = "nav navbar-nav";
        }
    })
</script>

  <br>
  @endsection