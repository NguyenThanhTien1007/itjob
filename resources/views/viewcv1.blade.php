<!DOCTYPE html>
<html lang="en">

<head>
	<title>Pillar - Bootstrap 4 Resume/CV Template for Developers</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="favicon.ico">
	<!-- Google Font -->



	<link rel="stylesheet" href="{{asset('assets/css/style.css')}}">
	<link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
	<article class="resume-wrapper text-center position-relative">
		@if(Auth::check())<div class="text-left mb-2"><a href="{{route('profile',Auth::user()->id)}}" class="btn btn-primary">Quay lại</a></div>@endif
		<div class="resume-wrapper-inner mx-auto text-left bg-white shadow-lg">
			<header class="resume-header1 pt-4 pt-md-0">
				<div class="media flex-column flex-md-row">
					<img class="mr-3 img-fluid picture mx-auto" src="{{asset('upload/avatars/'.$cv->images)}}" alt="image profile">
					<div class="media-body p-4 d-flex flex-column flex-md-row mx-auto mx-lg-0">
						<div class="primary-info">
							<h1 class="name mt-0 mb-1 text-white text-uppercase text-uppercase">{{$cv->full_name}}</h1>
							<div class="title mb-3">{{$careerinfo->resumetitle}}</div>
							<ul class="list-unstyled">
								<li class="mb-2"><a><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i>{{$cv->email}}</a></li>
								<li><a><i class="fas fa-mobile-alt fa-fw mr-2" data-fa-transform="grow-6"></i>{{$cv->phone}}</a></li>
							</ul>
						</div>
					</div>
				</div>
			</header>
			<div class="resume-body p-5">
				<section class="resume-section summary-section mb-5">
					<h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Thông tin cá nhân</h2>
					<div class="resume-section-content">
						<p class="mb-0"><strong>Giới tính: </strong>@if($cv->gender==0) Nam @else Nữ @endif</p>
						<p class="mb-0"><strong>Ngày sinh: </strong>{{$cv->birthday}}</p>
						<p class="mb-0"><strong>Quốc tịch: </strong>{{$cv->nation_name}}</p>
						<p class="mb-0"><strong>Tình trạng hôn nhân: </strong>@if($cv->maritalstatus==1) Đã kết hôn @else Độc thân @endif</p>
						<p class="mb-0"><strong>Tỉnh: </strong>{{$cv->region_name}}</p>
						<p class="mb-0"><strong>Địa chỉ: </strong>{{$cv->address}}</p>
					</div>
				</section>

				<section class="resume-section summary-section mb-5">
					<h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Mục tiêu nghề nghiệp</h2>
					<div class="resume-section-content">
						<p class="mb-0">{{$careerobj->content}}</p>
					</div>
				</section>

				<section class="resume-section summary-section mb-5">
					<h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Thông tin công việc</h2>
					<div class="resume-section-content">
						<p class="mb-0"><strong>Vị trí muốn làm: </strong>{{$careerinfo->position_want}}</p>
						<p class="mb-0"><strong>Mức lương mong muốn: </strong>@if($careerinfo->salarykind=='ltt') {{'Thỏa thuận'}} @else {{number_format($careerinfo->salaryfrom).' - '.number_format($careerinfo->salaryto).' ('.$careerinfo->salarykind.')'}} @endif</p>
						<p class="mb-0"><strong>Hình thức làm việc: </strong>@if($careerinfo->count()>0)
							@if($careerinfo->fulltime=='1')
							{{'- Nhân viên chính thức '}}
							@endif
							@if($careerinfo->parttime=='1')
							{{'- Bán thời gian '}}
							@endif
							@if($careerinfo->freelancer=='1')
							{{'- Thời vụ/ Nghề tự do '}}
							@endif
							@if($careerinfo->internship=='1')
							{{'- Thực tập '}}
							@endif
							@endif</p>
						<p class="mb-0"><strong>Nơi làm việc: </strong>{{$careerinfo->region_name}}</p>
					</div>
				</section>
				<!--//summary-section-->
				<div class="row">
					<div class="col-lg-7">
						<section class="resume-section experience-section mb-5">
							<h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Kinh nghiệm làm việc
							</h2>
							<div class="resume-section-content">
								<div class="resume-timeline position-relative">
									@forelse($experiences as $experience)
									<article class="resume-timeline-item position-relative pb-5">
										<div class="resume-timeline-item-header mb-2">
											<div class="d-flex flex-column flex-md-row">
												<h3 class="resume-position-title font-weight-bold mb-1">{{$experience->title}}
												</h3>
											</div>
											<!--//row-->
											<div class="resume-company-name">{{$experience->company}}</div>
											<div class="resume-position-time">{{$experience->start_day}} - {{$experience->end_day}}</div>
										</div>
										<!--//resume-timeline-item-header-->
										<div class="resume-timeline-item-desc">
											<p>{{$experience->content}}</p>
										</div>
										<!--//resume-timeline-item-desc-->
									</article>
									@empty
									<p>Chưa có kinh nghiệm</p>
									@endforelse
								</div>
								<!--//resume-timeline-->
							</div>
						</section>

						<section class="resume-section experience-section mb-5">
							<h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Học vấn
							</h2>
							<div class="resume-section-content">
								<div class="resume-timeline position-relative">
									@forelse($educations as $education)
									<article class="resume-timeline-item position-relative pb-5">
										<div class="resume-timeline-item-header mb-2">
											<div class="d-flex flex-column flex-md-row">
												<h3 class="resume-position-title font-weight-bold mb-1">{{$education->course}}
												</h3>
											</div>
											<!--//row-->
											<div class="resume-company-name">
												@if($education->degree_id=='0')
												Chưa tốt nghiệp
												@endif
												@if($education->degree_id=='1')
												Trung học
												@endif
												@if($education->degree_id=='2')
												Trung cấp
												@endif
												@if($education->degree_id=='3')
												Cao đẳng
												@endif
												@if($education->degree_id=='4')
												Đại học
												@endif
												@if($education->degree_id=='5')
												Sau đại học
												@endif
												@if($education->degree_id=='6')
												Khác
												@endif
											</div>
										</div>
										<!--//resume-timeline-item-header-->
										<div class="resume-timeline-item-desc">
											<p class="mb-0"><strong>Ngày tốt nghiệp: </strong>@if($education->degree_id!='0')
												{{$education->date}}
												@else Chưa tốt nghiệp
												@endif</p>
											<p class="mb-0"><strong>Mô tả: </strong>{{$education->description}}</p>
										</div>
										<!--//resume-timeline-item-desc-->
									</article>
									@empty
									<p>Chưa có học vấn</p>
									@endforelse
								</div>
								<!--//resume-timeline-->
							</div>
						</section>
						<!--//experience-section-->
					</div>
					<div class="col-lg-5">
						<section class="resume-section skills-section mb-5">
							<h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Kĩ năng</h2>
							<div class="resume-section-content">
								<div class="resume-skill-item">
									<ul class="list-unstyled mb-4">
										@forelse($skills as $skill)
										<li class="mb-2">
											<div class="resume-skill-name">{{$skill->title}}</div>
											<div class="progress resume-progress">
												<div class="progress-bar theme-progress-bar-dark" role="progressbar" style="width: {{$skill->level}}%" aria-valuenow="{{$skill->level}}" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</li>
										@empty
										<li class="mb-2">Không có kỹ năng</li>
										@endforelse
									</ul>
								</div>
								<!--//resume-skill-item-->
							</div>
							<!--resume-section-content-->
						</section>
						<!--//skills-section-->
						<section class="resume-section language-section mb-5">
							<h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Ngôn ngữ</h2>
							<div class="resume-section-content">
								<ul class="list-unstyled resume-lang-list">
									<li class="mb-2"><span class="resume-lang-name font-weight-bold">English</span>
										<small class="text-muted font-weight-normal">(Native)</small></li>
									<li class="mb-2 align-middle"><span class="resume-lang-name font-weight-bold">French</span> <small class="text-muted font-weight-normal">(Professional)</small></li>
									<li><span class="resume-lang-name font-weight-bold">Spanish</span> <small class="text-muted font-weight-normal">(Professional)</small></li>
								</ul>
							</div>
						</section>
						<!--//language-section-->
						<section class="resume-section education-section mb-5">
							<h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Người tham khảo</h2>
							<div class="resume-section-content">
								<ul class="list-unstyled">
									@forelse($references as $reference)
									<li class="mb-2">
										<div class="resume-degree font-weight-bold">{{$reference->name}}</div>
										<div class="resume-degree-org">Công ty: {{$reference->company}}</div>
										<div class="resume-degree-org">Chức vụ: {{$reference->position}}</div>
										<div class="resume-degree-org">Số điện thoại: {{$reference->phone}}</div>
										<div class="resume-degree-org">Email: {{$reference->email}}</div>
									</li>
									@empty
									<li class="mb-2">Không có người tham khảo</li>
									@endforelse
								</ul>
							</div>
						</section>
						<!--//education-section-->
					</div>
				</div>
				<!--//row-->
			</div>
			<!--//resume-body-->
		</div>
	</article>
</body>

</html>