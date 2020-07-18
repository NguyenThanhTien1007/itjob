@extends('layouts.admin')
@section('header')
@endsection

@section('content')




<div class="col-sm-9">
           <div class="panel  panel-primary">
      		<div class="panel-heading"><b>Quản Lý Hồ Sơ</b></div>
      		<div class="panel-body" style="margin-left:30px;margin-right:40px">
				  <div class="w3-responsive ">                	
					<table class="table table-condensed">
					<thead>
					  <tr>
						<th>Họ Và Tên</th>
						<th>Ngày Sinh</th>
						<th>Điện thoại</th>
						<th>Cập nhật</th>
						<th>Xóa</th>
						<th>Ẩn/Đăng</th>
					  </tr>
					</thead>
					<tbody>
		
			@foreach($list_cv as $cv )
			<form id="DelCV{{$cv->cv_id}}" action="{{route('delcv', $cv->cv_id)}}" method="post">
			<form id="formShowOff{{$cv->cv_id}}" action="{{route('postshowoffcv_ad', $cv->cv_id)}}" method="post">	
			<input type="hidden" name="_token" value="{{csrf_token()}}">
			<input type="hidden"id="show_off" name="show_off" value="{{$cv->show_off}}">
					  <tr >
						<td>{{$cv->full_name}}</td>
						<td>{{$cv->birthday}}</td>
						<td>{{$cv->phone}}</td>
            <td><a href="{{route('profile',$cv->user_id)}}" style="text-transform:capitalize;margin-top: -5px;" class="w3-bar-item w3-button active" >
			<button type="button" class="btn navbar-default" style="color:#FFF">Cập nhật</button></a></td>
			<td>
			<button type="submit" onchange="document.getElementById('DelCV{{$cv->cv_id}}').submit()"  class="btn navbar-default" style="color:#FFF">Xóa</button></td>
						@if($cv->show_off==0)
						<td><input type="checkbox" style="margin-top: 10px;margin-left: 10px;"  onchange="document.getElementById('formShowOff{{$cv->cv_id}}').submit()"   data-toggle="toggle" data-on="Ẩn" data-off="Đăng"></td>
						
						@endif
						@if($cv->show_off==1)
						<td><input type="checkbox" style="margin-top: 10px;margin-left: 10px;" onchange="document.getElementById('formShowOff{{$cv->cv_id}}').submit()"   checked data-toggle="toggle" data-on="Ẩn" data-off="Đăng"></td>
						@endif
						</tr>
						
			</form> 	
			 @endforeach
					</form>
			
					</tbody>
          </table>
		  <div style="text-align: center;">{{$list_cv->links()}} </div>
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