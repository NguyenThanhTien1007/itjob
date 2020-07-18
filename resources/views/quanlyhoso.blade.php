@extends('layouts.cv_app')
@section('header')

@endsection

@section('content')

<!-- EndNav -->
<section id="business" class="container">

	<!-- Information -->
	<div class="row margin-left container" style="margin-top:30px">
		<div class="row">
			<div class="col-md-4 menu_right">

				<div class="col-xs-12 statisticfast">
					<div class="info-box-number">0</div>
					<div class="info-box-text"><a href="">Nhà tuyển dụng xem hồ sơ</a></div>
				</div>
				<div class=" col-xs-12 statisticfast">
					<div class="info-box-number">0</div>
					<div class="info-box-text"><a href="">Nhà tuyển dụng được cài đặt hạn chế xem hồ sơ</a></div>
				</div>
				<div class=" col-xs-12 statisticfast">
					<div class="info-box-number"> {{$countjobsave}}</div>
					<div class="info-box-text"><a href="">Việc làm đã lưu</a></div>
				</div>
				<div class=" col-xs-12 statisticfast">
					<div class="info-box-number">{{$countjobsubmit}}</div>
					<div class="info-box-text"><a href="">Việc làm đã nộp</a></div>
				</div>

			</div>
			<div class="col-xs-12 col-md-8 ">
				<div class=" col-xs-12 top-infoProfile">
					<header>Hồ sơ </header>
					<div class="col-xs-12 col-md-3  avatar2">
						<img @if($cv->count()>0) src="{{asset('upload/avatars/'.$cv->images)}}" @else src="{{asset('public/upload/avatars/'.$user->avatar)}}" @endif class="w3-bar-item w3-circle" >
						<div class="btnEditProfile">
							<a href="{{route('profile', Auth::user()->id)}}" class="w3-pink w3-hover-blue-gray">Chỉnh sửa hồ sơ</a></div>
					</div>
					<div class="col-xs-12 col-md-9 infoProfile">
						<h4>{{$cv->full_name}}</h4>
						<p>Chưa có kinh nghiệm</p>
						<p>Cấp bậc mong muốn: Chưa cập nhật</p>
						<p>Mức lương: Chưa cập nhật</p>
						<p>Mức độ hoàn thành: <span class="col_f5841f">Chưa Hoàn Tất</span></p>

					</div>
					<div class="col-xs-12 bottom-infoProfile">
						<div class="statusCV">
							<div class="col-xs-12 col-sm-6  kindCV">
								@if($template_job->count()>0)
								<img src="{{asset('assets/images/'.$template_job->link)}}" class="img-responsive img-template">
								@endif
								@if($template_job->count()>0)
								<p>Ngày cập nhật: <span class="update_date">13/10/2019</span> <span class="refesh-resume"><a title="Cập nhật hồ sơ" href="javascript:;" class="ac_refesh" rel="8865663"><i class="fa fa-refresh"></i></a></span></p>
								<p class="link"><a id="btn_view_cbprofile" href="#{{$template_job->address}}" data-toggle="modal">Xem hồ sơ</a><span>
										|</span><a href="#template_cv" data-toggle="modal">Đổi mẫu CV</a>
									<span></span></p>
								@endif
								@if($template_job->count()==0)
								<p>Ngày cập nhật: <span class="update_date">13/10/2019</span> <span class="refesh-resume"><a title="Cập nhật hồ sơ" href="javascript:;" class="ac_refesh" rel="8865663"><i class="fa fa-refresh"></i></a></span></p>
								<p class="link"><a id="btn_view_cbprofile" href="#">Xem hồ sơ</a><span>
										|</span><a href="#template_cv" data-toggle="modal">Đổi mẫu CV</a>
									<span></span></p>
								@endif
							</div>
							<div class="col-xs-12 col-sm-6  statusSearch">
								<div class="switch-inline"><strong>Cho phép tìm kiếm hồ sơ </strong>
									<div class="edit-switch"><label class="el-switch">
											<input name="cv_searchable" id="cv_searchable_8865663" type="checkbox" value="8865663" disabled="disabled"><span class="el-switch-style"></span></label></div>
								</div>
								<p>Bạn có thể cho phép nhà tuyển dụng tìm kiếm hồ sơ hoặc hồ sơ đính kèm </p>
								<div class="switch-inline"><strong>Nhận thông báo việc làm</strong>
									<div class="edit-switch"><label class="el-switch"><input type="checkbox" name="cv_jobalert_8865663" id="cv_jobalert_8865663" value="8865663" disabled="disabled" onclick="updateCvJobalert(this);"><span class="el-switch-style"></span></label></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	</div>

	<div class="modal fade" id="template_cv" role="dialog">
		<div class="modal-dialog modal-lg">
			<form action="{{route('template_cv',Auth::user()->id)}}" method="POST" id="tem_cv" name="tem_cv">
				<input type="hidden" name="_token" value="{{@csrf_token()}}">
				<input type="hidden" name="cv_id" value="@if($cv->count()>0) {{$cv->cv_id}} @endif">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Mẫu CV</h4>
					</div>

					<div class="modal-body" style="margin-left:50px;margin-right:40px">
						<p>
							@if(count($errors->postSkillerror)>0)
							<div style="color:red">
								@foreach($errors->postSkillerror->all() as $err)
								{{$err}} <br>
								@endforeach
							</div>
							@endif
							<div class="form-group row">

								@foreach($template as $tem)
								<div class="col-sm-4" style="margin-right: 10px;">
									<img src="{{asset('assets/images/'.$tem->link)}}" alt="Alps" style="width:250px;height:320px">
									<center><input type="radio" value="{{$tem->id}}" name="template_cv" id="template_cv"></center>
								</div>

								@endforeach
							</div>


						</p>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn navbar-default">Lưu mẫu CV</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!-- CV1 -->

	<div class="modal fade" id="viewCV" role="dialog">

		<div class="modal-dialog modal-lg">
			<input type="hidden" name="_token" value="{{csrf_token()}}">
			<input type="hidden" name="cv_id" value="@if($cv->count()>0) {{$cv->cv_id}} @endif">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">CV
					</h4>
				</div>
				<input type="hidden" name="_token" value="{{csrf_token()}}">
				<article class="resume-wrapper text-center position-relative">

					<div class="resume-wrapper-inner mx-auto text-left bg-white shadow-lg">

						<div class="row primary-info1">
							<div class="col-md-4 col-sm-4 col-xs-4">
								<img style="margin-left: -15px;" src="{{asset('upload/avatars/'.$cv->images)}}" alt="image profile">
							</div>
							<div class="col-md-8 col-sm-8 col-xs-8 ">
								<div class="primary-info1">
									<h1 class="name mt-0 mb-1 text-white text-uppercase text-uppercase">{{$cv->full_name}}</h1>
									<div class="title mb-3">{{$careerinfo->resumetitle}}</div>
									<ul class="list-unstyled">
										<li class="mb-2"><a><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i>{{$cv->email}}</a></li>
										<li><a><i class="fas fa-mobile-alt fa-fw mr-2" data-fa-transform="grow-6"></i>{{$cv->phone}}</a></li>
									</ul>
								</div>
							</div>
						</div>

						<div class="resume-body ">
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
									{{$careerobj->content}}
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
														<p class="mb-0"><strong>Ngày tốt nghiệp: </strong>@if($education->degree_id !='0')
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
										<h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Kỹ năng</h2>
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
			</div>
		</div>
	</div>
	</div>
	<!-- CV2 -->
	<div class="modal fade" id="viewCV1" role="dialog">


		<div class="modal-dialog modal-lg">
			<input type="hidden" name="_token" value="{{csrf_token()}}">
			<input type="hidden" name="cv_id" value="@if($cv->count()>0) {{$cv->cv_id}} @endif">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">CV
					</h4>
				</div>
				<div class="wrapper">
					<div class="sidebar-wrapper">
						<div class="profile-container">
							<img style="margin-left: -15px;" src="{{asset('upload/avatars/tt.png')}}" alt="image profile">
							<h1 class="container-block-title">{{$cv->full_name}}</h1>
							<h3 class="tagline">Full Stack Developer</h3>
						</div>
						<!--//profile-container-->

						<div class="contact-container container-block">
							<ul class="list-unstyled contact-list">
								<li class="email"><i class="fas fa-envelope"></i><a href="mailto: yourname@email.com">{{$cv->email}}</a></li>
								<li class="phone"><i class="fas fa-phone"></i><a href="tel:0965076770">{{$cv->phone}}</a></li>
								<li class="facebook"><i class="fab fa-twitter"></i><a href="https://www.facebook.com/profile.php?id=100010190858025" target="_blank">@Facebook</a></li>
							</ul>
						</div>
						<!--//contact-container-->
						<div class="education-container container-block">
							<h2 class="container-block-title">Education</h2>
							@forelse($educations as $education)
							<article class="resume-timeline-item">
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
									<p class="mb-0"><strong>Ngày tốt nghiệp: </strong>@if($education->degree_id !='0')
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

							<!--//item-->
						</div>
						<!--//education-container-->

						<div class="languages-container container-block">
							<h2 class="container-block-title">Languages</h2>
							<ul class="list-unstyled interests-list">
								<li>VietNamese <span class="lang-desc">(Native)</span></li>
								<li>Englist <span class="lang-desc">(Professional)</span></li>
							</ul>
						</div>
						<!--//interests-->

						<div class="interests-container container-block">
							<h2 class="container-block-title">Interests</h2>
							<ul class="list-unstyled interests-list">
								<li>FootBall</li>
								<li>Swimming</li>
								<li>Game</li>
							</ul>
						</div>
						<!--//interests-->

					</div>
					<!--//sidebar-wrapper-->

					<div class="main-wrapper">

						<section class="section summary-section">
							<h2 class="section-title"><span class="icon-holder"><i class="fas fa-user"></i></span>Education</h2>
							<div class="summary">
								@forelse($educations as $education)
								<article class="resume-timeline-item">
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
										<p class="mb-0"><strong>Ngày tốt nghiệp: </strong>@if($education->degree_id !='0')
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
							<!--//summary-->
						</section>
						<!--//section-->

						<section class="section experiences-section">
							<h2 class="section-title"><span class="icon-holder"><i class="fas fa-briefcase"></i></span>Experiences</h2>
							@forelse($experiences as $experience)
							<div class="item">
								<div class="meta">
									<div class="upper-row">
										<h3 class="job-title">{{$experience->title}}</h3>
										<div class="time">{{$experience->start_day}} - {{$experience->end_day}}</div>
									</div>
									<!--//upper-row-->
									<div class="company">{{$experience->company}}</div>
								</div>
								<!--//meta-->
								<div class="details">
									{{$experience->content}}
								</div>
								<!--//details-->
							</div>
							@empty
							<p>Chưa có kinh nghiệm</p>
							@endforelse




						</section>
						<!--//section-->

						<section class="section projects-section">
							<h2 class="section-title"><span class="icon-holder"><i class="fas fa-archive"></i></span>Projects</h2>
							<div class="item">
								<span class="project-title"><a href="#hook">ASP.NET</a></span> - <span class="project-tagline">building a website to sell mobile phones.</span>

							</div>
							<!--//item-->
							<div class="item">
								<span class="project-title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-web-development-agencies-devstudio/" target="_blank">React Native</a></span> -
								<span class="project-tagline">building milk tea sales application. </span>
							</div>
							<!--//item-->
							<div class="item">
								<span class="project-title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-startups-tempo/" target="_blank">Dreamweaver</a></span> - <span class="project-tagline">Website design about the world wonder</span>
							</div>
							<!--//item-->
							<div class="item">
								<span class="project-title"><a href="hhttp://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-mobile-apps-atom/" target="_blank">Android</a></span> - <span class="project-tagline">building phone sales application. </span>
							</div>
							<!--//item-->
						</section>
						<!--//section-->

						<section class="skills-section section">
							<h2 class="section-title"><span class="icon-holder"><i class="fas fa-rocket"></i></span>Skills &amp; Proficiency</h2>
							<div class="skillset">
								
							
							
								@forelse($skills as $skill)
								<div class="item">
									<h3 class="level-title">{{$skill->title}} </h3>
									<div class="progress level-bar">
									<div class="progress-bar theme-progress-bar-dark" role="progressbar" style="width: {{$skill->level}}%" aria-valuenow="{{$skill->level}}" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
								@empty
								<li class="mb-2">Không có kỹ năng</li>
								@endforelse
							

							</div>
						</section>
						<!--//skills-section-->

					</div>
					<!--//main-body-->
				</div>
			</div>
		</div>
		<!-- CV3 -->
		<div class="modal fade" id="viewCV2" role="dialog">


			<div class="modal-dialog modal-lg">
				<input type="hidden" name="_token" value="{{csrf_token()}}">
				<input type="hidden" name="cv_id" value="@if($cv->count()>0) {{$cv->cv_id}} @endif">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">CV
						</h4>
					</div>
					<div class="wrapper">
						<div class="sidebar-wrapper">
							<div class="profile-container">
								<img style="margin-left: -15px;" src="{{asset('upload/avatars/tt.png')}}" alt="image profile">
								<h1 class="container-block-title">Nguyen Ba Tu</h1>
								<h3 class="tagline">Full Stack Developer</h3>
							</div>
							<!--//profile-container-->

							<div class="contact-container container-block">
								<ul class="list-unstyled contact-list">
									<li class="email"><i class="fas fa-envelope"></i><a href="mailto: yourname@email.com">Nbt17397@gmail.com</a></li>
									<li class="phone"><i class="fas fa-phone"></i><a href="tel:0965076770">0965076770</a></li>
									<li class="facebook"><i class="fab fa-twitter"></i><a href="https://www.facebook.com/profile.php?id=100010190858025" target="_blank">@Facebook</a></li>
								</ul>
							</div>
							<!--//contact-container-->
							<div class="education-container container-block">
								<h2 class="container-block-title">Education</h2>
								<div class="item">
									<h4 class="degree">Student</h4>
									<h5 class="meta">Phuoc Vinh HighSchool</h5>
									<div class="time">2012 - 2015</div>
								</div>
								<!--//item-->
								<div class="item">
									<h4 class="degree">Student</h4>
									</h4>
									<h5 class="meta">Thu Dau Mot University</h5>
									<div class="time">2016 - 2020</div>
								</div>
								<!--//item-->
							</div>
							<!--//education-container-->

							<div class="languages-container container-block">
								<h2 class="container-block-title">Languages</h2>
								<ul class="list-unstyled interests-list">
									<li>VietNamese <span class="lang-desc">(Native)</span></li>
									<li>Englist <span class="lang-desc">(Professional)</span></li>
								</ul>
							</div>
							<!--//interests-->

							<div class="interests-container container-block">
								<h2 class="container-block-title">Interests</h2>
								<ul class="list-unstyled interests-list">
									<li>FootBall</li>
									<li>Swimming</li>
									<li>Game</li>
								</ul>
							</div>
							<!--//interests-->

						</div>
						<!--//sidebar-wrapper-->

						<div class="main-wrapper">

							<section class="section summary-section">
								<h2 class="section-title"><span class="icon-holder"><i class="fas fa-user"></i></span>Education</h2>
								<div class="summary">
									<li class="job-title">2013 - 2016 : Binh Duong HighSchool</li>
									<li class="job-title">2016 - 2020 : Thu Dau Mot Univercity</li>
								</div>
								<!--//summary-->
							</section>
							<!--//section-->

							<section class="section experiences-section">
								<h2 class="section-title"><span class="icon-holder"><i class="fas fa-briefcase"></i></span>Experiences</h2>

								<div class="item">
									<div class="meta">
										<div class="upper-row">
											<h3 class="job-title">Interns</h3>
											<div class="time">6/2019 - 9/2019</div>
										</div>
										<!--//upper-row-->
										<div class="company">ISC Quang Trung , TPHCM</div>
									</div>
									<!--//meta-->
									<div class="details">
										<p>Developer Website use Java</p>
										<p>On-job training with the leading project leaders in the IT field</p>
										<p>Equip Experience + knowledge + skills to get ready to work for real IT projects. </p>
									</div>
									<!--//details-->
								</div>
								<!--//item-->



							</section>
							<!--//section-->

							<section class="section projects-section">
								<h2 class="section-title"><span class="icon-holder"><i class="fas fa-archive"></i></span>Projects</h2>
								<div class="item">
									<span class="project-title"><a href="#hook">ASP.NET</a></span> - <span class="project-tagline">building a website to sell mobile phones.</span>

								</div>
								<!--//item-->
								<div class="item">
									<span class="project-title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-web-development-agencies-devstudio/" target="_blank">React Native</a></span> -
									<span class="project-tagline">building milk tea sales application. </span>
								</div>
								<!--//item-->
								<div class="item">
									<span class="project-title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-startups-tempo/" target="_blank">Dreamweaver</a></span> - <span class="project-tagline">Website design about the world wonder</span>
								</div>
								<!--//item-->
								<div class="item">
									<span class="project-title"><a href="hhttp://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-mobile-apps-atom/" target="_blank">Android</a></span> - <span class="project-tagline">building phone sales application. </span>
								</div>
								<!--//item-->
							</section>
							<!--//section-->

							<section class="skills-section section">
								<h2 class="section-title"><span class="icon-holder"><i class="fas fa-rocket"></i></span>Skills &amp; Proficiency</h2>
								<div class="skillset">
									<div class="item">
										<h3 class="level-title">Java </h3>
										<div class="progress level-bar">
											<div class="progress-bar theme-progress-bar" role="progressbar" style="width: 85%" aria-valuenow="99" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
									<!--//item-->

									<div class="item">
										<h3 class="level-title">Javascript &amp; ReactJs</h3>
										<div class="progress level-bar">
											<div class="progress-bar theme-progress-bar" role="progressbar" style="width: 98%" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
									<!--//item-->

									<div class="item">
										<h3 class="level-title">C# &amp; .NET </h3>
										<div class="progress level-bar">
											<div class="progress-bar theme-progress-bar" role="progressbar" style="width: 70%" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
									<!--//item-->

									<div class="item">
										<h3 class="level-title">HTML5 &amp; CSS</h3>
										<div class="progress level-bar">
											<div class="progress-bar theme-progress-bar" role="progressbar" style="width: 75%" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
									<!--//item-->


									<div class="item">
										<h3 class="level-title"> Photoshop</h3>
										<div class="progress level-bar">
											<div class="progress-bar theme-progress-bar" role="progressbar" style="width: 50%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
									<!--//item-->

								</div>
							</section>
							<!--//skills-section-->

						</div>
						<!--//main-body-->
					</div>
				</div>
			</div>
		</div>
	</div>

	<br>
	@endsection