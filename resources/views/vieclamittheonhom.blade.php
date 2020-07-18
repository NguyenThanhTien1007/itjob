@extends('layouts.app')
@section('header')

@endsection

@section('content')

<center>
    <!-- Sections -->
    <!-- Nav -->
    </nav>




    <!-- EndNav -->
    <section id="business">

    <div class="container" style="margin-top:50px">
      <!-- search -->

      <div class="row largeshowbox" style="margin-top: 30px;">
        <div class="portfolio-wrapper text-left  panel-default" style="width:100%">

          <form action="{{route('findjob')}}" method="post">
            <input type="hidden" name="_token" value="{{csrf_token()}}">
            <div class="row w3-panel">
              <br>
              <div class="col-sm-8 job-margin-top">
                <input type="text" class="form-control input-lg" name="txtinputlg" placeholder="Nhập vào chức danh hoặc vị trí.." autofocus="" required="" aria-required="true" value="" style="width:100%">
              </div>

              <div class="col-sm-4 job-margin-top">
                <button type="submit" class="btn btn-warning btn-lg btn-block form-control input-lg" style="width:100%">
                  <span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;Tìm việc làm</button>
              </div>
            </div>
          </form>
        </div>

      </div>

      <br>

            <!-- end search -->
      

            <div class="row">
            <div class="col-sm-8">
              <div class="largeshowbox  text-left w3-white panel-default">
              <h5 class="panel-heading  panel-default">Việc làm ({{count($job_group)}})</h5>
                @foreach($job_group as $new)
                <div class="row">
                <label name="job_id" class="hidden">{{$new->id}}</label>
                  <a href="{{route('thongtincongviec',$new->id)}}">
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
                                     <label class="job_skill">   {{ $skill }}&nbsp; </label>
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
                      <li class="alert-warning"><a href="#">Quay lại trang trước <i class="fa fa-angle-double-right"></i></a></li>
                    </ul>
                  </div>
                  <div class="col-sm-6 ">
                    <ul class="pager w3-right-align w3-margin-right w3-margin-top">
                      <li><a href="#"></a></li>
                      
                    </ul>
                  </div>
                </div>
              </div>
            </div>
               
        
                <!-- column left-->
                <div class="col-sm-4">
          <div class="largeshowbox" style="margin-top: 0px">
            <div class="row">
              <h6><b>Lọc kết quả theo Địa Điểm</b></h6>
              <div class="w3-panel">
                <form id="formAddress" action="{{route('postaddress')}}" method="post">
                  <input type="hidden" name="_token" value="{{csrf_token()}}">
                  <ul class="filter2 scroll">

                    @foreach($address as $ad)

                    @if(isset($lst_search) && in_array('$ad->region_name',$lst_search) )
                    <li><input type="checkbox" checked onchange="document.getElementById('formAddress').submit()" value="{{$ad->region_name}}" name="address[]" id="address">{{$ad->region_name}}</li>
                    @else
                    <li><input type="checkbox" onchange="document.getElementById('formAddress').submit()" value="{{$ad->region_name}}" name="address[]" id="address">{{$ad->region_name}}</li>
                    @endif
                    @endforeach

                  </ul>
                </form>


                <h6><b>Lọc kết quả theo Kỹ Năng</b></h6>
                <form id="formSkill" action="{{route('postfindskill')}}" method="post">
                  <input type="hidden" name="_token" value="{{csrf_token()}}">
                  <ul class="scroll filter2">
                    @foreach($skill_job as $sk)
                    @if(isset($lst_search) && in_array('$sk->skill_name',$lst_search) )
                    <li><input type="checkbox" checked onchange="document.getElementById('formSkill').submit()" name="findskill[]" id="findskill" value="{{$sk->skill_name}}"   />{{$sk->skill_name}}</li>
                    @else
                    <li><input type="checkbox"  onchange="document.getElementById('formSkill').submit()" name="findskill[]" id="findskill" value="{{$sk->skill_name}}"   />{{$sk->skill_name}}</li>
                    @endif
                    @endforeach
                  </ul>
                </form>
              </div>

            </div>

          </div>
        </div>
      </div>

            <div class="clear"></div>
        </div> <!-- /container -->
    </section>

</center>
<br>
@endsection