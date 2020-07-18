@extends('layouts.company_app')
@section('header')
@endsection

@section('content')








<div class="col-sm-9">
           <div class="panel  panel-primary">
      		<div class="panel-heading"><b>Việc Làm Đang Đăng</b></div>
      		<div class="panel-body" style="margin-left:30px;margin-right:40px">
				  <div class="w3-responsive ">                	
					<table class="table table-condensed">
					<thead>
					  <tr>
						<th>Vị trí tuyển dụng</th>
						<th>Ngày đăng</th>
						<th>Ngày kết thúc</th>
						<th>Cập nhật</th>
						<th>Ẩn</th>
					  </tr>
					</thead>
					<tbody>
		
			@foreach($countjobposting as $count )
			<form id="formShowOff{{$count->id}}" action="{{route('postshowoff', $count->id)}}" method="post">	
			<input type="hidden" name="_token" value="{{csrf_token()}}">
			<input type="hidden"id="show_off" name="show_off" value="{{$count->show_off}}">
					  <tr >
						<td>{{$count->position}}</td>
						<td>{{$count->created_at}}</td>
						<td>{{$count->enddate}}</td>
            <td><a href="{{route('editPostJob',$count->id)}}" style="text-transform:capitalize;margin-top: -5px;" class="w3-bar-item w3-button active" >
			<button type="button" class="btn navbar-default" style="color:#FFF">Cập nhật</button></a></td>
						@if($count->show_off==0)
						<td><input type="checkbox" style="margin-top: 10px;margin-left: 10px;"  onchange="document.getElementById('formShowOff{{$count->id}}').submit()"   data-toggle="toggle" data-on="Ẩn" data-off="Đăng"></td>
						
						@endif
						@if($count->show_off==1)
						<td><input type="checkbox" style="margin-top: 10px;margin-left: 10px;" onchange="document.getElementById('formShowOff{{$count->id}}').submit()"   checked data-toggle="toggle" data-on="Ẩn" data-off="Đăng"></td>
						@endif
						</tr>
						
			</form> 	
             @endforeach
			
					</tbody>
          </table>
		  <div style="text-align: center;">{{$countjobposting->links()}} </div>
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