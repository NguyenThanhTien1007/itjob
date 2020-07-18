@extends('layouts.company_app')
@section('header')
@endsection

@section('content')









<div class="col-sm-9">
           <div class="panel  panel-primary">
      		<div class="panel-heading"><b>Việc Làm Hết Hạn </b></div>
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
            @foreach($countjob_expiredpost as $count )
					  <tr >
						<td>{{$count->position}}</td>
						<td>{{$count->created_at}}</td>
						<td>{{$count->enddate}}</td>
            <td><a href="{{route('editPostJob',$count->id)}}" style="text-transform:capitalize;" class="w3-bar-item w3-button active" >
            <button type="button" class="btn navbar-default" style="color:#FFF">Cập nhật</button></a></td>
						<td><input type="checkbox" checked data-toggle="toggle" data-on="Ẩn" data-off="Đăng"></td>
						</tr>
					 <tr>
             @endforeach
						
					</tbody>
          </table>
		  <div style="text-align: center;">{{$countjob_expiredpost->links()}} </div>
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