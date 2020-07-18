@extends('layouts.company_app')
@section('header')
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Tìm việc làm công nghệ thông tin - Hiepsiit.com</title>
    <!-- Bootstrap CDN -->

    <script type="text/javascript" src="{{asset('job/ckeditor/ckeditor.js')}}"></script>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <script>

        $(document).ready(function () {
            $('.js-example-basic-multiple').select2();
        });
    </script>
@endsection


    

<body>

@if(Session::has('message'))
    <script>
        $.alert({
            title: 'Thông báo',
            content: '{{Session::get('message')}}',
        });
    </script>
@endif




<div class="row top"></div>

@section('content')
 
        <div class="col-sm-9">
            <div class="panel  panel-primary">
                <div class="panel-heading"><b>Đăng Tuyển Dụng</b></div>
                <div class="panel-body" style="margin-left:30px;margin-right:40px">

                    <form action="{{route('editPostJob','/').'/'.$job->id}}" method="POST">
                        <input type="hidden" name="_token" value="{{@csrf_token()}}">
                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="email">Tên việc làm/ Vị trí chức danh:</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control " id="position" name="position" autofocus=""
                                       required=""
                                       placeholder="Nhập tên việc làm (hoặc) vị trí chức danh IT cần tuyển dụng"
                                       aria-required="true" value="{{$job->position}}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Chi tiết tuyển dụng:</label>
                            <div class="col-sm-8">
                             <textarea class="form-control ckeditor" rows="5" placeholder="" id="objective_job"
                                       name="detail" style="visibility: hidden; display: none;">
                                 {{$job->detail}}
							</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Chọn chức danh nghề nghiệp:</label>
                            <div class="col-sm-8">
                                <select class="js-example-basic-multiple" name="catejob[]" multiple="multiple"
                                        style="width:100%">

                                    @foreach($categories as $cate)
                                        @php
                                            $state=0
                                        @endphp
                                        @foreach(App\JobGroup::where('id_group',$cate->jobID)->get() as $catejob)
                                            @if($catejob->id_job == $job->id)
                                                <option value="{{$cate->jobID}}" selected>{{$cate->jobName}}</option>
                                                @php
                                                    $state=1
                                                @endphp
                                            @endif
                                        @endforeach
                                        @if($state==0)
                                            <option value="{{$cate->jobID}}">{{$cate->jobName}}</option>
                                        @endif
                                    @endforeach

                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Chọn nơi làm việc:</label>
                            <div class="col-sm-8">

                                <select class="js-example-basic-multiple" name="place[]" multiple="multiple"
                                        style="width:100%">

                                    @foreach($provinces as $pr)
                                        @php
                                            $state=0
                                        @endphp
                                        @foreach(App\JobRegion::where('id_region',$pr->region_id)->get() as $jobreg )
                                            @if($jobreg->id_job == $job->id)
                                                <option value="{{$pr->region_id}}"
                                                        selected>{{$pr->region_name}}</option>
                                                @php
                                                    $state=1
                                                @endphp
                                            @endif
                                        @endforeach
                                        @if($state==0)
                                            <option value="{{$pr->region_id}}">{{$pr->region_name}}</option>
                                        @endif
                                    @endforeach


                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Mức lương hàng tháng *:</label>
                            <div class="col-sm-8 form-inline">
                                <div class="fl_left width_530">
                                    <select name="salary_unit" id="job_salaryunit" class="form-control">
                                        @if($job->salary_unit == 'vnd')
                                            <option value="vnd" selected>VNĐ</option>
                                            <option value="usd">USD</option>
                                        @else
                                            <option value="vnd">VNĐ</option>
                                            <option value="usd" selected>USD</option>
                                        @endif

                                    </select>
                                    <span class="mar_leftright8 fl_left">Tối Thiểu <span class="red">*</span></span>
                                    <input style="width:120px;"  class="form-control" size="10" type="number" name="salary_from"
                                           id="salary_from"
                                           maxlength="12" value="1">
                                    <span class="mar_leftright8 fl_left">Tối Đa <span class="red">*</span></span>
                                    <input  style="width:120px;" class="form-control" size="10" type="number" name="salary_to" id="salary_to"
                                           maxlength="12"
                                           value="100">
                                    <div class="display_ads">
                                        <label>
                                            <input class="input_margin" type="checkbox" name="showsalary" value="0"
                                                   @if($job->showsalary =='1') checked="checked" @endif>
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
                                                                          @if(count(App\TypeofjobJob::where([['id_job',$job->id],['id_typeofjob','1']])->get()) >0 ) checked
                                                                          @endif id="chkResumeType_1"
                                                                          value="1">Nhân viên chính thức</label>
                                    <label class="checkbox-inline"><input type="checkbox" name="typeofjob[]"
                                                                          @if(count(App\TypeofjobJob::where([['id_job',$job->id],['id_typeofjob','2']])->get()) >0 ) checked
                                                                          @endif id="chkResumeType_2"
                                                                          value="2">Thời vụ/ Nghề tự do </label>
                                </div>
                                <div class="form-group">
                                    <label class="checkbox-inline"><input type="checkbox" name="typeofjob[]"
                                                                          @if(count(App\TypeofjobJob::where([['id_job',$job->id],['id_typeofjob','3']])->get()) >0 ) checked
                                                                          @endif id="chkResumeType_3"
                                                                          value="3">Bán thời gian</label>
                                    <label class="checkbox-inline"> <input type="checkbox" name="typeofjob[]"
                                                                           @if(count(App\TypeofjobJob::where([['id_job',$job->id],['id_typeofjob','4']])->get()) >0 ) checked
                                                                           @endif id="chkResumeType_4"
                                                                           value="4">Thực tập</label>
                                </div>
                                <span id="error_resumetype"></span>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Kỹ năng làm việc:</label>
                            <div class="col-sm-8">
                                

                                <select class="js-example-basic-multiple" name="skill[]" multiple="multiple"
                                        style="width:100%">

                                    @foreach($skill as $s)
                                        @php
                                            $state=0
                                        @endphp
                                        @foreach(App\Job_Skill::where('id_skill',$s->id)->get() as $jobskill )
                                            @if($jobskill->id_job == $job->id)
                                                <option value="{{$s->id}}"
                                                        selected>{{$s->skill_name}}</option>
                                                @php
                                                    $state=1
                                                @endphp
                                            @endif
                                        @endforeach
                                        @if($state==0)
                                            <option value="{{$s->id}}">{{$s->skill_name}}</option>
                                        @endif
                                    @endforeach


                                </select>      
                                       Yêu cầu
                                người ứng tuyển phải biết (Ví dụ: ASPX, C#, Java..) mỗi kỹ năng nhập vào cách nhau dấu
                                <b>","</b>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-sm-4 " for="pwd">Hạn nộp hồ sơ:</label>
                            <div class="col-sm-8">
                                <input type='date' name="enddate" class="form-control" id="enddate"
                                       value="{{(new DateTime($job->enddate))->format('Y-m-d')}}"/>
                            </div>
                        </div>
                        <div class="row "><h1 class="w3-large"><b>Phúc lợi</b></h1></div>
                        <div class="col-sm-12 col-lg-12 col-md-12"> 
                                
                                    @foreach($benefits as $bn)

                                        @php
                                            $state=0
                                        @endphp
                                       
                                        @foreach(App\BenefitJob::where('id_benefit',$bn->id)->get() as $bj )
                                        
                                            @if($bj->id_job == $job->id)
                                           
                                            <div class="col-sm-6 col-lg-6 col-md-6"> 
                                                <label class="benefit-lb">
                                                    <input type="checkbox" class="input_margin" id="benefit[]_ID_2"
                                                           name="benefit[]" value="{{$bn->id}}" checked>
                                                    <span><i class="fa fa-medkit {{$bn->icon}}"></i> {{$bn->value}}</span>
                                                </label>
                                            </div>
                                           
                                                @php
                                                    $state=1
                                                @endphp
                                            @endif
                                           
                                        @endforeach
                                        
                                        @if($state==0)
                                        
                                        <div class="col-sm-6 col-lg-6 col-md-6"> 
                                            <label class="benefit-lb">
                                                <input type="checkbox" class="input_margin" id="benefit[]_ID_2"
                                                       name="benefit[]" value="{{$bn->id}}">
                                                <span><i class="fa fa-medkit {{$bn->icon}}"></i> {{$bn->value}}</span>
                                            </label>
                                        </div>
                                        
                                      
                                        @endif
                                        
                                    @endforeach
                                
                                
                                    

                                
                          

                        </div>
                        <!-- Thông tin chung -->
                        <div class="row "><h1 class="w3-large"><b>Yêu cầu chung</b></h1></div>
                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Giới tính *:</label>
                            <div class="col-sm-8  form-inline ">

                                <input type="radio" name="gender" id="rdi_unsex" value="0"
                                       @if($job->gender=='0') checked @endif>Nam/Nữ
                                <input type="radio" name="gender" id="rdi_unsex" value="1"
                                       @if($job->gender=='1') checked @endif>Nam
                                <input type="radio" name="gender" id="rdi_unsex" value="2"
                                       @if($job->gender=='2') checked @endif>Nữ


                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Tuổi:</label>
                            <div class="col-sm-8 form-inline ">
                                <input class="form-control" size="10" type="number" name="age_from" id="age_from"
                                       maxlength="12"
                                       value="{{$job->age_from}}">&nbsp;&nbsp;Đến
                                <input class="form-control" size="10" type="number" name="age_to" id="age_to"
                                       maxlength="12" value="{{$job->age_to}}">


                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Kinh nghiệm *:</label>
                            <div class="col-sm-8 form-inline ">
                                <select class="form-control" name="experience" id="JOB_ISEXPERIENCE">
                                    <option value="0" @if($job->experience=='0') selected @endif >Chọn Kinh nghiệm
                                    </option>
                                    <option value="1" @if($job->experience=='1') selected @endif>Không yêu cầu kinh
                                        nghiệm
                                    </option>
                                    <option value="2" @if($job->experience=='2') selected @endif>Có kinh nghiệm</option>
                                    <option value="3" @if($job->experience=='3') selected @endif>Chưa có kinh nghiệm
                                    </option>
                                </select>


                                <span id="error_resumetype"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Cấp bậc *:</label>
                            <div class="col-sm-8 form-inline ">
                                <select class="form-control" name="level" id="LEVEL_ID">
                                    <option value="0" @if($job->level=='0') selected @endif>Chọn Cấp bậc</option>
                                    <option value="1" @if($job->level=='1') selected @endif>Sinh viên/ Thực tập sinh
                                    </option>
                                    <option value="2" @if($job->level=='2') selected @endif>Mới tốt nghiệp</option>
                                    <option value="3" @if($job->level=='3') selected @endif>Nhân viên</option>
                                    <option value="4" @if($job->level=='4') selected @endif>Trưởng nhóm / Giám sát
                                    </option>
                                    <option value="5" @if($job->level=='5') selected @endif>Quản lý</option>
                                    <option value="6" @if($job->level=='6') selected @endif>Phó Giám đốc</option>
                                    <option value="7" @if($job->level=='7') selected @endif>Giám đốc</option>
                                    <option value="8" @if($job->level=='8') selected @endif>Tổng giám đốc</option>
                                    <option value="9" @if($job->level=='9') selected @endif>Chủ tịch / Phó Chủ tịch
                                    </option>
                                </select>
                                <span id="error_resumetype"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Bằng cấp:</label>
                            <div class="col-sm-8 ">
                                <select class="form-control" name="degree" id="DEGREE_ID">
                                    <option value="0" @if($job->degree=='0') selected @endif>Không yêu cầu bằng cấp
                                    </option>
                                    <option value="1" @if($job->degree=='1') selected @endif>Trung học</option>
                                    <option value="2" @if($job->degree=='2') selected @endif>Trung cấp</option>
                                    <option value="3" @if($job->degree=='3') selected @endif>Cao đẳng</option>
                                    <option value="4" @if($job->degree=='4') selected @endif>Đại học</option>
                                    <option value="5" @if($job->degree=='5') selected @endif>Sau đại học</option>
                                    <option value="6" @if($job->degree=='6') selected @endif>Khác</option>
                                </select>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-sm-4" for="pwd">Yêu cầu hồ sơ:</label>
                            <div class="col-sm-8 ">
                                <ul class="list-group" style="list-style: none">

                                    @foreach($languages as $lang)
                                        @php
                                            $state=0
                                        @endphp
                                        @foreach(App\LanguageJob::where('id_language',$lang->id)->get() as $lj )
                                            @if($lj->id_job == $job->id)
                                                <li>
                                                    <div class="col">
                                                        <label>
                                                            <input type="checkbox" class="input_margin chk_lang_req"
                                                                   id="language_require_1" name="language[]"
                                                                   value="{{$lang->id}}" checked>
                                                            <span>{{$lang->value}}</span>
                                                        </label>
                                                    </div>
                                                </li>
                                                @php
                                                    $state=1
                                                @endphp
                                            @endif
                                        @endforeach
                                        @if($state==0)
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
                                        @endif
                                    @endforeach

                                </ul>

                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-warning">Tiếp tục và Xem lại thông tin</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>


@endsection