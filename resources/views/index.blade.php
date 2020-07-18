@extends('layouts.app')
@section('header')

@endsection

@section('content')
<style>
  .select2-container--default .select2-selection--multiple .select2-selection__rendered {
    box-sizing: border-box;
    list-style: none;
    margin: 0;
    padding: 8px 5px;
    width: 100%;
}
</style>
<center>
  <!-- Search -->
  <div class="row" style="background-image: linear-gradient(to bottom, rgba(0,0,0,0.4) 0%,rgba(0,0,0,0.4) 100%), url(assets/images/banner.jpg); background-repeat: no-repeat;background-size:cover ;  background-position: center; margin-top:20px;">
    <div class="transbox">
      <p>
      </p>
      <div class="table-responsive">
        <table width="100%" style="max-width:450px;" align="center">
          <form action="{{route('findjob')}}" method="post">
            <input type="hidden" name="_token" value="{{csrf_token()}}">
            <tbody>
              <tr>
                <td class="findjobtd">
                  <h3 class="findjoblabe">Tìm Việc Làm IT ngay!</h3>
                </td>
              </tr>
              <tr>
                <td class="findjobtd"><input type="text" class="form-control input-lg" name="txtinputlg" placeholder="Nhập vào chức danh hoặc vị trí.." autofocus="" required="" aria-required="true" value=""></td>
              </tr>
              <tr>
                <td class="findjobtd ">
                  <select class="js-example-basic-multiple" name="place[]" multiple="multiple" style="width:100%" autofocus="" required="" aria-required="true">
                    @foreach($provinces as $pr)
                    <option value="{{$pr->region_id}}">{{$pr->region_name}}</option>
                    @endforeach
                  </select>
                </td>
              </tr>
              <tr>
                <td class="findjobtd"><button type="submit" class="btn btn-warning btn-lg btn-block"> <span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;Tìm việc làm</button></td>
            </tbody>
          </form>

        </table>
      </div>
      <p></p>
    </div>
    <div style="margin-top:200px">
    </div>
  </div>
  <!-- EndSearch -->
  <!-- Nav -->
  <div class="row">
    <nav class="navbar btn-warning" style="margin-bottom:2px">
      <div class="container-fluid ">
        <ul class="nav navbar-nav">
        @if(Auth::check())
          <li class="active"><a href="{{route('thongbaovieclam',Auth::user()->id)}}"><i class="fa fa-envelope-o w3-margin-right"></i>Nhận thông báo việc làm</a></li> 
          <li class="dropdown"><a href="{{route('vieclamcuatoi', Auth::user()->id)}}" style="text-transform: capitalize;"><i class="fa fa-heart-o  w3-margin-right"></i> Việc làm đã lưu </a></li>
          @else
          <li class="dropdown"><a href="#loginFull" style="text-transform: capitalize;" data-toggle="modal"><i class=" fa-envelope-o w3-margin-right"></i> Nhận thông báo việc làm </a></li>
          <li class="dropdown"><a href="#loginFull" style="text-transform: capitalize;" data-toggle="modal"><i class="fa fa-heart-o  w3-margin-right"></i> Việc làm đã lưu </a></li>
          @endif
        </ul>
        <ul class="nav navbar-nav navbar-right">

          @if(Auth::check())
          <li><a class="btn btn-primary  w3-margin-right" href="{{route('quanlyhoso',Auth::user()->id)}}" data-toggle="modal"><i class="fa fa-cloud-upload"></i>&nbsp;Tạo hồ sơ ứng tuyển </a></li>
          @endif


        </ul>
      </div>
    </nav>

    <div class="row w3-white">

      <div class="container w3-margin ">
        @foreach($top_company as $top)
        <div class="col-xs-4 col-sm-2 col-md-2">

          <a href="#">
            <img src="{{asset('assets/images/'.$top->logo)}}" alt="Ngân Hàng Của Mọi Nhà">
            <p class="salesLogoDesc">{{$top->company_name}}</p>
          </a>

        </div>
        @endforeach
      </div>


      <!-- EndNav -->

      <section id="business">

        <div class="container">

          <div class="row">
            <div class="col-sm-8">
              <div class="largeshowbox  text-left w3-white panel-default">
                <h5 class="panel-heading  panel-default">Việc làm mới đăng</h5>
                @foreach($new_job as $new)
                <div class="row">
                  <label name="job_id" class="hidden">{{$new->id}}</label>
                  <a href="{{route('thongtincongviec',$new->id)}}" style="text-transform: capitalize;">
                    <div class="col-md-2 col-sm-2 col-xs-3"><img src="{{asset('assets/images/'.$new->logo)}}" class="filter1"></div>
                    <div class="col-md-6 col-sm-6 col-xs-9 text-left">


                      <div>
                        <b>
                          {{$new->position}}</b>
                        <p>{{$new->company_name}} </p>
                      </div>
                      <div>
                        <p> Lương:<i class="fa fa-dollar w3-margin-left"></i><span class="w3-text-red">{{$new->salary_from}}Triệu - {{$new->salary_to}}Triệu VND</span></p>
                        <p> Địa điểm:<i class="fa fa-map-marker"></i> {{$new->region_name}}</p>
                      </div>
                      <div><span class="w3-text-red"><b>Kỹ năng:</b></span>
                        @php
                        $values = explode(",",$new->skill_name);
                        @endphp
                        @foreach($values as $skill)
                        <label class="job_skill"> {{ $skill }}&nbsp; </label>
                        @endforeach
                      </div>
                    </div>


                  </a>

                </div>

                <hr class="top-job w3-margin-top">

                @endforeach

                <div class="row ">
                  <div class="col-sm-6">
                    <ul class="pager w3-margin-top">
                      <li class="alert-warning" style="display: none;"><a href="#">Xem việc làm mới cập nhật <i class="fa fa-angle-double-right"></i></a></li>
                    </ul>
                  </div>
                  <div class="col-sm-6 ">
                    <ul class="pager w3-right-align w3-margin-right w3-margin-top">
                      <li>{{$new_job->links()}} </li>
                    
                    </ul>
                  </div>
                </div>
              </div>
            </div>

            <!-- column left-->
            <div class="col-sm-4 col-md-4 ">
              <div class="largeshowbox   w3-white panel-default">
                <h5 class="panel-heading">
                  Nhà tuyển dụng hàng đầu
                </h5>
                <div class="row">
                  @foreach($top_company as $top)
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 item"><img src="{{asset('assets/images/'.$top->logo)}}"></div>
                  @endforeach



                </div>

              </div>
            </div>
          </div>
          <br>

          <div class="clear"></div>
          <div class="row largeshowbox">
            <div class="text-left " style="width:100%">

              <form action="{{route('email')}}" class="form-inline" method="POST">
              <input type="hidden" name="_token" value="{{csrf_token()}}">
                <div class="row w3-panel">

                  <div class="col-sm-4 w3-margin-top">
                    <i class="fa fa-envelope-o"></i> Nhận email thông báo việc làm phù hợp
                  </div>
                  <div class="col-sm-7">
                    <div class="col-sm-10">
                      <input type="text" class="form-control input-lg" name="txtemail" placeholder="Nhập email của bạn" autofocus="" required="" aria-required="true" value="" style="width: 100%">
                    </div>
                    <div class="col-sm-2 job-margin-top">
                      <button type="submit" class="btn btn-primary form-control input-lg">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil-square-o"></i>&nbsp;&nbsp;Tạo ngay&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
                    </div>
                  </div>

                </div>
              </form>
            </div>
          </div>
          <br>
          <div class="row largeshowbox">

            <div id="groupjob" class="portfolio-wrapper text-left  panel-default">
              <h5 class="panel-heading ">Phân nhóm việc làm IT đang tuyển dụng </h5>
              <div class="row w3-panel" style="width:100%">

                @foreach($number_job as $number)
                <div class="col-md-3 col-sm-6 col-xs-12 group">
                  <div class="job_group">
                    <a href="{{route('vieclamittheonhom',$number->jobID)}}">
                      <p>{{$number->jobName}}</p>
                    </a>
                    (<b>
                      <font color="#FF6600">{{$number->number}} việc làm</font>
                    </b>)
                    <p>&nbsp;</p>

                  </div>
                </div>

                @endforeach
              </div>
            </div>
            <!-- full -->
            <div id="groupjob_full" class="portfolio-wrapper text-left  panel-default">
              <h5 class="panel-heading ">Phân nhóm việc làm IT đang tuyển dụng </h5>
              <div class="row w3-panel" style="width:100%">

                @foreach($number_job_all as $number)
                <div class="col-md-3 col-sm-6 col-xs-12 group">
                  <div class="job_group">
                    <a href="{{route('vieclamittheonhom',$number->jobID)}}">
                      <p>{{$number->jobName}}</p>
                    </a>
                    (<b>
                      <font color="#FF6600">{{$number->number}} việc làm</font>
                    </b>)
                    <p>&nbsp;</p>

                  </div>
                </div>

                @endforeach
              </div>
            </div>
            <center><span class="alert-warning">
                <ul class="pager w3-margin-top">
                  <li class="alert-warning"><button onclick="myFunction()" style="padding: 5px;border-radius: 5%;">Xem Thêm nhóm việc làm IT <i class="fa fa-angle-double-right"></i></button></li>
                </ul>
              </span>
            </center>

          </div>

          <!-- ẩn hiện -->
          <script type="text/javascript">
            function myFunction() {
              var x = document.getElementById('groupjob_full');
              if (x.style.display === 'none') {
                x.style.display = 'block';
              } else {
                x.style.display = 'none';
              }
              var x = document.getElementById('groupjob');
              if (x.style.display === 'block') {
                x.style.display = 'none';
              } else {
                x.style.display = 'block';
              }
            }
          </script>
          <br>
          <div class="row largeshowbox">
            <div class="portfolio-wrapper text-left ">
              <h5 class="alert-success">
                <a href="#">Danh sách ứng viên<div style="float:right" align=right class="glyphicon glyphicon-chevron-right"></div></a>
              </h5>
             
              <div class="row w3-margin-left w3-margin-right p">
              @foreach($list_user as $users)
               
                
               
                
                  <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="w3-card-4" style="width:100%;margin-bottom: 10px;margin-left: -15px;">
                      
                      <h5 id="title_color{{$users->id}}" >{{$users->name}}</h5>
                     
                      <div class="w3-container ">
                        
                      <img src="{{asset('upload/avatars/'.$users->images)}}" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px; float: left">
                     <p>  {{$users->content}}</p>
                      <p>  
                        Email:{{$users->email}}<br>
                        SĐT:{{$users->phone}}
                        </p>
                        
                      </div>
                      <button class="w3-button w3-block w3-blue">+ Xem Chi tiết</button>
                    </div>
                  </div>
                  <script>
                  var colors = ['#CC9999', '#CC9966', '#9999CC', '#999900', '#6699CC', '#FF6666', '#CC6600', '#FF3300', '#9933CC', '#FF0000', '#0000FF'];
                  var random_color = colors[Math.floor(Math.random() * colors.length)];
                  document.getElementById('title_color{{$users->id}}').style.background = random_color;
                  document.getElementById('title_color{{$users->id}}').style.color = '#FFFFFF';
                </script>
                  @endforeach
               
              </div>

              <div class="w3-margin-left w3-margin-right">
                <center><span class="alert-warning">
                    <ul class="pager w3-margin-top">
                      <li class="alert-warning"><a href="{{route('cvlist')}}">Xem thêm các ứng viên IT<i class="fa fa-angle-double-right"></i></a></li>
                    </ul>
                  </span>
                </center>

              </div>
            </div>
          </div>
          <div class="clear"></div>
        </div> <!-- /container -->
      </section>

</center>
<br>
<!--Footer-->

@endsection