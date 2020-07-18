@extends('layouts.app')
@section('header')

@endsection

@section('content')

<!-- Sections -->

<section id="business">

    <div class="container" style="margin-top:80px">
        <div class="showbox">
            @if(Auth::check())
            <form class="form-horizontal" action="{{route('postmyjob')}}" method="POST">
                @endif
                <input type="hidden" name="_token" value="{{csrf_token()}}">

                @if(Auth::check())
                @if(Session::has('message')) <script>
                    alert('{{Session::get('
                        message ')}}');
                </script> @endif
                @endif
                <div class="row ">
                    @foreach($job_new as $job)
                    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 ">
                        <input type="hidden" class="form-control" id="txtJob" name="txtJob" value="@if($job->count()>0){{$job->id}}@else{{$user->name}}@endif">
                        @if(Auth::check())
                        <input type="hidden" class="form-control" id="txtUser" name="txtUser" value="@if($job->count()>0){{Auth::user()->id}}@else{{$user->name}}@endif">
                        @endif

                        <div class="col-md-2 col-sm-2 col-xs-3 col-lg-2 logocompany ">

                            <a href="#" target="_blank">
                                <img src="{{asset('assets/images/'.$job->logo)}}">
                            </a>

                        </div>


                        <div style="margin-bottom: 10px; " class="top-job-info col-md-6 col-sm-6 col-xs-8 col-lg-6">
                            <h1>{{$job->position}}</h1>
                            <p>{{$job->company_name}}</p>
                            <p>Nơi làm việc:{{$job->region_name}}</p>
                            <p>Lương: Từ {{$job->salary_from}} {{$job->salary_unit}} -> {{$job->salary_to}} {{$job->salary_unit}} Triệu đồng</p>
                        
                            @if(Auth::check())
                            <button type="submit"  class="btn btn-lg btn-primary">Nộp Đơn Ứng Tuyển</button>
                            @else
                            <a href="" data-toggle="modal" data-target="#loginFull" class="btn btn-lg btn-primary">Nộp Đơn Ứng Tuyển</a>
                            @endif
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-4 col-lg-4 btnApplyClick" style="margin-top: 30px; ">
                        <p>Hình thức làm việc:Toàn thời gian</p>
                        <p>Ngày bắt đầu tuyển:{{$job->create_at}}</p>
                        <p>Hạn nộp hồ sơ:{{$job->enddate}}</p>
                        </div>
                        <hr class="top-job">
                    </div>
                </div>




                <div class="row">

                    <div class="col-sm-8">
                        <div>
                            <h5 class="TitleJobNew text-left alert-success"><i class="fa fa-check-circle"></i> Phúc lợi</h5>

                            <div class="row list-benefits ">

                               
                                @foreach($benefits as $bn)

                                @php
                                $state=0
                                @endphp

                                @foreach(App\BenefitJob::where('id_benefit',$bn->id)->get() as $bj )

                                @if($bj->id_job == $job->id)

                                <div class="col-sm-6 col-lg-6 col-md-6">
                                    <label class="benefit-lb">
                                       
                                        <span><i class="fa fa-medkit {{$bn->icon}}"></i> {{$bn->value}}</span>
                                    </label>
                                </div>

                                @php
                                $state=1
                                @endphp
                                @endif

                                @endforeach

                              


                                

                                @endforeach

                            </div>
                            <h5 class="TitleJobNew text-left alert-success"><i class="fa fa-check-circle"></i> Mô tả công việc</h5>
                            <div class="row list-benefits ">

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="content_fck">
                                        {{$job->detail}}
                                    </div>
                                </div>


                            </div>
                            <h5 class="TitleJobNew text-left alert-success"><i class="fa fa-check-circle"></i> Yêu cầu công việc</h5>
                            <div class="row list-benefits ">

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="content_fck">
                                        <p>- Độ tuổi:{{$job->age_from}}->{{$job->age_to}} .
                                            <br>- Giới tính: {{$job->gender}}.
                                            <br>- Trình độ: {{$job->job_degree}}.
                                            <br>- {{$job->job_experience}} trong ngành.
                                            <br>- Ưu tiên UV có kinh nghiệm về {{$job->skill_name}}.
                                            <br>- Tính tình: Cầu toàn, điềm đạm, kỹ tính, chính xác, chú ý đến chi tiết.
                                            <br>- Làm việc với cường độ cao. Sử dụng máy tính văn phòng tốt.
                                            <br>- Làm việc độc lập và theo nhóm được.<br>- Làm việc tại: {{$job->region_name}} </p>
                                        <p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            Số lượng tuyển 2</p>
                                        <p>Ký hợp đồng thử việc 02 tháng, qua thử việc ký Hợp đồng không xác định thời hạn;</p>
                                    </div>
                                </div>


                            </div>
                            <h5 class="TitleJobNew text-left alert-success"><i class="fa fa-check-circle"></i> Thông tin khác</h5>
                            <div class="row list-benefits ">

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="content_fck">
                                        <ul>
                                            <li> - Độ tuổi: {{$job->age_from}}->{{$job->age_to}} </li>
                                            <li> - Hình thức: {{$job->rank_name}} </li>

                                        </ul>
                                    </div>
                                </div>


                            </div>
                            <h5 class="TitleJobNew text-left alert-success"><i class="fa fa-check-circle"></i>Kỹ năng</h5>
                            <div class="row list-benefits ">

                                <div class="col-md-12 col-sm-12 col-xs-12 w3-margin-bottom">
                                    <div class="content_fck">
                                        @php
                                        $values = explode(",",$job->skill_name);
                                        @endphp
                                        @foreach($values as $skill)
                                        <label class="job_skill"> {{ $skill }}&nbsp; </label>
                                        @endforeach
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                    <!-- column left-->
                    <div class="col-sm-4  ">
                        <div class="showbox">
                            <h5 class="alert-success text-left">Thông Tin Tuyển Dụng</h5>
                            <div class="row">

                                <div class="col-xs-12 boxtp info-career" style="padding-bottom: 20px;">

                                    <ul class="info" >
                                        <li class="col-xs-12">
                                            <b class="col-xs-12 col-sm-4 col-md-5">Nơi làm việc: </b>
                                            <span class="col-xs-12 col-sm-7 col-md-7">
                                                <a id="open_jobmap" href="javascript:void(0);" title="Click để xem địa chỉ công ty" style="font-size:20px;margin-right:5px;">
                                                    <i class="fa fa-map-marker"></i></a>
                                                <a href="">{{$job->region_name}}</a>
                                            </span>
                                        </li>
                                        <li class="col-xs-12">
                                            <b class="col-xs-12 col-sm-5 col-md-5">
                                                Cấp bậc</b>
                                            <span class="col-xs-12 col-sm-7 col-md-7">
                                                {{$job->rank_name}}

                                            </span>
                                        </li>
                                        <li class="col-xs-12">
                                            <b class="col-xs-12 col-sm-5 col-md-5">
                                                Lương
                                            </b>
                                            <span class="col-xs-12 col-sm-7 col-md-7">
                                                {{$job->salary_from}} {{$job->salary_unit}} -> {{$job->salary_to}} {{$job->salary_unit}}
                                            </span>
                                        </li>
                                        <li class="col-xs-12">
                                            <b class="col-xs-12 col-sm-5 col-md-5">
                                                Hết hạn nộp
                                            </b>
                                            <span class="col-xs-12 col-sm-7 col-md-7">
                                                {{$job->enddate}}
                                            </span>
                                        </li>
                                       </ul> </div> </div> </div> <br>

                                </div> <!-- /container -->
                                <div class="col-sm-4  ">
                                    <div class="showbox">
                                        <h5 class="alert-success text-left">Giới thiệu công ty</h5>
                                        <div class="row">

                                            <div class="col-xs-12 logo_c_right">
                                                <div class="col-md-5 col-sm-5 col-xs-5 col-lg-5">
                                                    <div class="align_center ">

                                                        <a href="" target="_blank">
                                                            <img src="{{asset('assets/images/'.$job->logo)}}">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col-md-7 col-sm-7 col-xs-7 col-lg-7">
                                                    <div class="tit_company"> {{$job->company_name}}</div>
                                                </div>

                                                <div class="clear"></div>
                                            </div>
                                            <br><br><br>
                                            <div class="contem_company">

                                                <p><i class="fa fa-map-marker fa-fw"></i> (HN) Số 7, Đường Bằng Lăng 1, Phường Việt Hưng, Quận Long Biên, Hà Nội.</p>
                                                <p><i class="fa fa-phone fa-fw"></i> Ms Minh</p>
                                                <p><i class="fa fa-internet-explorer fa-fw"></i> http://vinhomes.vn/</p>
                                                <p class="desc"> Vinhomes - Là hệ thống căn hộ và biệt thự dịch vụ cao cấp của Tập đoàn VinGroup. Vinhomes cung cấp đến khách hàng một tiêu chuẩn sống đẳng cấp vượt trội mới, đây là sự kết hợp hoàn chỉnh giữa bất động sản nhà ở và hệ thống dịch vụ tiêu chuẩn cao tại những khu đô thị quy mô hàng đầu Việt Nam mang đẳng cấp quốc tê do VinGroup đầu tư. Với các tiêu chí bao gồm: <a href="https://careerbuilder.vn/vi/nha-tuyen-dung/vinhomes.35A6E89C.html" class="viewmore">Xem thêm</a></p>
                                            </div>
                                        </div>
                                    </div>



                                </div>
                                @endforeach
            </form>
        </div>
</section>

@endsection