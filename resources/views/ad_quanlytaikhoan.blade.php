@extends('layouts.admin')
@section('header')
@endsection

@section('content')



<div class="col-sm-9">
           <div class="panel  panel-primary">
      		<div class="panel-heading"><b>Quản Lý Tài Khoản</b></div>
      		<div class="panel-body" style="margin-left:30px;margin-right:40px">
				  <div class="w3-responsive ">                	
					<table class="table table-condensed">
					<thead>
					  <tr>
						<th>Tên Tài Khoản </th>
						<th>Email</th>
						<th>Cập nhật</th>
						<th>Xóa</th>
						<th>Trạng thái</th>
					  </tr>
					</thead>
					<tbody>
		
			@foreach($list_user as $user )
			<form id="Deluser{{$user->id}}" action="{{route('deluser', $user->id)}}" method="post">
			<form id="formShowOff{{$user->id}}" action="{{route('postshowoff', $user->id)}}" method="post">	
			<input type="hidden" name="_token" value="{{csrf_token()}}">
			<input type="hidden"id="show_off" name="show_off" value="{{$user->show_off}}">
					  <tr >
					  <td>{{$user->name}}</td>
						<td>{{$user->username}}</td>
					
            <td><a href="{{route('changepassword',$user->id)}}" style="text-transform:capitalize;margin-top: -5px;" class="w3-bar-item w3-button active" >
			<button type="button" class="btn navbar-default" style="color:#FFF">Cập nhật</button></a></td>
			<td>
			<button type="submit" onchange="document.getElementById('Deluser{{$user->id}}').submit()"  class="btn navbar-default" style="color:#FFF">Xóa</button></td>
						@if($user->show_off==0)
						<td><input type="checkbox" style="margin-top: 10px;margin-left: 10px;"  onchange="document.getElementById('formShowOff{{$user->id}}').submit()"   data-toggle="toggle" data-on="Tạm dừng" data-off="Hoạt động"></td>
						
						@endif
						@if($user->show_off==1)
						<td><input type="checkbox" style="margin-top: 10px;margin-left: 10px;" onchange="document.getElementById('formShowOff{{$user->id}}').submit()"   checked data-toggle="toggle" data-on="Tạm dừng" data-off="Hoạt động"></td>
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