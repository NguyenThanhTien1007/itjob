@extends('job.layouts.app')
@section('header')
@endsection

@section('content')
<div class="row"></div>

<div class="row w3-pink nav-stacked">
  <div id="searchjob" style="margin-top:40px">
    
  </div>
</div>
<div class="row"></div>
<div class="row job-margin">
  <div class="w3-panel w3-card-4">
    <div class="row w3-margin">
      <span class="margin-right btn-lg w3-border-blacks">Việc làm đã lưu</span>
      
    </div>
    <div class="w3-responsive margin-left w3-margin-right">
      
      <table class="table table-condensed">
        <thead>
          <tr>
            <th>Tên công việc</th>
            <th>Địa điểm</th>
            <th>Ngày nộp</th>
            
          </tr>
        </thead>
        @foreach($myjob as $my)
        <tbody>
       
          <tr>
            <td>{{$my->position}}</td>
            <td>{{$my->region_name}}</td>
            <td>{{$my->datetime}}</td>
           
          </tr> 
        </tbody>
        @endforeach
      </table>
    </div>
  </div>
</div>
@endsection