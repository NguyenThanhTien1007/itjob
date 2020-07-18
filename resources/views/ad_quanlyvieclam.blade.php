@extends('layouts.admin')
@section('header')
@endsection

@section('content')



<div class="col-sm-9">
           <div class="panel  panel-primary">
      		<div class="panel-heading"><b>Quản Lý Việc Làm</b></div>
      		<div class="panel-body" style="margin-left:30px;margin-right:40px">
				  <div class="w3-responsive ">                	
					<table class="table table-condensed">
					<thead>
					  <tr>
						<th>Vị trí </th>
						<th>Ngày Đăng</th>
						<th>Ngày Kết Thúc</th>
						<th>Cập nhật</th>
						<th>Xóa</th>
						<th>Ẩn/Đăng</th>
					  </tr>
					</thead>
					<tbody>
		
			@foreach($list_job as $job )
			<form id="Deljob{{$job->id}}" action="{{route('deljob', $job->id)}}" method="post">
			<form id="formShowOff{{$job->id}}" action="{{route('postshowoff', $job->id)}}" method="post">	
			<input type="hidden" name="_token" value="{{csrf_token()}}">
			<input type="hidden"id="show_off" name="show_off" value="{{$job->show_off}}">
					  <tr >
					  <td>{{$job->position}}</td>
						<td>{{$job->created_at}}</td>
						<td>{{$job->enddate}}</td>
            <td><a href="{{route('editPostJob',$job->id)}}" style="text-transform:capitalize;margin-top: -5px;" class="w3-bar-item w3-button active" >
			<button type="button" class="btn navbar-default" style="color:#FFF">Cập nhật</button></a></td>
			<td>
			<button type="submit" onchange="document.getElementById('Deljob{{$job->id}}').submit()"  class="btn navbar-default" style="color:#FFF">Xóa</button></td>
						@if($job->show_off==0)
						<td><input type="checkbox" style="margin-top: 10px;margin-left: 10px;"  onchange="document.getElementById('formShowOff{{$job->id}}').submit()"   data-toggle="toggle" data-on="Ẩn" data-off="Đăng"></td>
						
						@endif
						@if($job->show_off==1)
						<td><input type="checkbox" style="margin-top: 10px;margin-left: 10px;" onchange="document.getElementById('formShowOff{{$job->id}}').submit()"   checked data-toggle="toggle" data-on="Ẩn" data-off="Đăng"></td>
						@endif
						</tr>
						
			</form> 	
			 @endforeach
					</form>
			
					</tbody>
          </table>
		  
  			</div>
          
             </div>

   		 </div>
      </div>
	</div>     
 </div>
</div>    

<div class="btn-group-wrap">
	<div class="btn-group">

	</div>
	<div class="btn-group">

	</div>
</div>
</div>


@endsection