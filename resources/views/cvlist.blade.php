@extends('layouts.app')
@section('header')

@endsection

@section('content')




<!-- Sections -->
<br>
<section id="business">

  <div class="container " style="margin-top:50px">
    <!-- search -->
    <div class="row largeshowbox">
      <div class="portfolio-wrapper text-left  panel-default" style="width:100%">

        <form action="{{route('findcv')}}" method="POST">
          <input type="hidden" name="_token" value="{{csrf_token()}}">
          <div class="row w3-panel">

            <div class="col-sm-4 job-margin-top find ">
            <td class="findjobtd ">
              <select class="js-example-basic-multiple form-control input-lg" placeholder="Nhập vào kỹ năng .." name="skill[]" multiple="multiple" style="width:100%" >
                @foreach($skill as $skill)
                
                <option  class="form-control input-lg" placeholder="Nhập vào kỹ năng .." value="{{$skill->id}}">{{$skill->skill_name}} </option>
                @endforeach
              </select>
            </td>
            </div>
            <div class="col-sm-4 job-margin-top">
              <input type="text" class="form-control input-lg" name="txtnumber" placeholder="Nhập vào số năm kinh nghiệm" autofocus="" required="" aria-required="true" value="" style="width:100%">
            </div>

            <div class="col-sm-4 job-margin-top">
              <button type="submit" class="btn btn-primary btn-lg btn-block form-control input-lg " style="width:100%">
                <span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;Tìm ứng viên</button>
            </div>
          </div>
        </form>
      </div>

    </div>

    <br>

    <!-- end search -->

    <div class="row  w3-container">




      <div class="row  p">
        @foreach($list_user as $users)




        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="w3-card-4" style="width:100%;margin-bottom: 10px;margin-left: -15px;">

            <h5 id="title_color{{$users->id}}">{{$users->name}}</h5>

            <div class="w3-container ">

              <img src="{{asset('upload/avatars/'.$users->images)}}" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px; float: left">
              <p> {{$users->content}}</p>
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

      <div class="row">


        <ul class="pager  w3-margin-right w3-margin-top" style="text-align: right;">
          <li><a href="javascript:history.back()">Quay lại trang trước </a></li>

        </ul>

      </div>

    </div> <!-- /container -->
</section>


<br><br><br><br><br><br><br><br><br>
@endsection