<!DOCTYPE html>
<html>

<!doctype html>


<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>HiepsiIt</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{asset('assets/images/icon.ico')}}" rel="shortcut icon" />

    <link rel="stylesheet" href="{{asset('assets/css/icon.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/plugins.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/font-awesome.min.css')}}">

    <script src="{{asset('assets/js/vendor/jquery-1.11.2.min.js')}}"></script>
    <script src="{{asset('assets/js/vendor/bootstrap.min.js')}}"></script>
    <script src="{{asset('assets/js/menu.js')}}"></script>
    



    <!-- Font Awesome -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-metro.css">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.12/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.12/dist/js/select2.min.js"></script>

    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

    <!-- cv2 -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,400italic,300italic,300,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- FontAwesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.1.0/js/all.js" integrity="sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="{{asset('assets/css/orbit-1.css')}}">
    <script type="text/javascript" src="{{asset('assets/ckeditor/ckeditor.js')}}"> </script>
    <link rel="stylesheet" href="{{asset('assets/css/w3c.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/mystyle.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/jobstyle.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/responsive.css')}}">

    <script>
        $(document).ready(function() {
            $("#hideshow").click(function() {
                $('#leftmenu').toggle('show');
            });
        });

        // check not mobile
        $(window).on('resize', function() {
            if ($(this).width() > 800)
                $('#leftmenu').show();
            $('#mySearch').hide();

        });



        $(document).ready(function() {
            $('.js-example-basic-multiple').select2();
        });
        $(document).ready(function() {
            $('#checkemailshowerror').hide();
            $('#inputEmail').on('input', function() {
                //alert($('#inputEmail').val());
                $.ajax({
                    url: 'sign-up/' + $('#inputEmail').val(),
                    type: 'GET',
                    success: function(result) {
                        console.log(result.message);
                        if (result.status == 'notOk') {
                            $('#checkemailshowerror').html(' <div class="alert alert-danger">' + result.message + '</div>');
                            $('#checkemailshowerror').show();
                            $('#inputEmail').focus();
                        } else
                            $('#checkemailshowerror').hide();
                    }
                });
            });

        });

        $(document).ready(function() {
            $("#hideshow").click(function() {
                $('#leftmenu').toggle('show');
            });
        });

        // check not mobile
        $(window).on('resize', function() {
            if ($(this).width() > 800)
                $('#leftmenu').show();
            $('#mySearch').hide();

        });



        $(document).ready(function() {
            $('.js-example-basic-multiple').select2();
        });
    </script>




    @yield('header')
</head>

<body>
    <!-- Search_mobile -->
    <div class="modal fade" id="mySearch" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header login_modal_header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h6 class="modal-title" id="myModalLabel">Tìm Kiếm Việc Làm</h6>
                </div>
                <div class="modal-body">

                    <div class="form-group">
                        <input type="text" id="search" placeholder="Vui lòng từ khóa cần tìm" value="" class="form-control login-field">

                    </div>

                    <Button class="btn btn-success modal-login-btn">Tìm kiếm</Button>

                </div>


                <div class="clearfix"></div>


                <div class="clearfix"></div>
                <div class="modal-footer login_modal_footer">
                </div>
            </div>
        </div>
    </div>
    <!-- End Search_mobile  -->
    <!--Login_mobile  -->
    <div class="modal left fade" id="myLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span>&times;</span></button>
                    <span class="lablelogin">Đăng Nhập </span>
                </div>
                <div class="modal-body">
                    <form id="loginform" class="form-horizontal" role="form" action="{{route('login')}}" method="POST">
                        @if(Session::has('message'))
                        <div class="alert alert-danger">
                            {{Session::get('message')}}
                        </div>
                        @endif
                        <input type="hidden" name="_token" value="{{@csrf_token()}}">
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="login-username" type="text" class="form-control " name="username" value="" placeholder="Vui lòng nhập tài khoản">
                        </div>

                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="login-password" type="password" class="form-control " name="password" placeholder="mật khẩu">
                        </div>



                        <div class="input-group">
                            <div class="checkbox">
                                <label>
                                    <input id="login-remember" type="checkbox" name="remember" value="1"> Nhớ mật khẩu
                                </label>
                            </div>
                        </div>


                        <div style="margin-top:10px" class="form-group">
                            <!-- Button -->

                            <div class="col-sm-12 controls">
                                <button type="submit" class="btn success">Đăng Nhập</button>

                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-12 control">
                                <div class="modal-footer">
                                    Bạn chưa có tài khoản!
                                    <a href="#" data-toggle="modal" data-target="#myRegister">
                                        Đăng ký tại đây
                                    </a>
                                </div>
                            </div>
                        </div>
                        <h6 align="center">Đăng Nhập Với...</h6>
                        <div class="modal-footer">

                        </div>
                        <div>
                            <a href='#' class=" btnother facebook"> <i class="fa fa-facebook modal-icons paddingother"></i></a>
                            <a href='#' class="btnother  twitter"> <i class="fa fa-twitter modal-icons paddingother"></i> </a>
                            <a href='#' class="btnother google"> <i class="fa fa-google-plus modal-icons paddingother"></i> </a>

                            <a href='#' class="btnother linkedin"> <i class="fa fa-linkedin modal-icons paddingother"></i> </a>


                        </div>

                    </form>


                </div>

            </div><!-- modal-content -->
        </div><!-- modal-dialog -->
    </div><!-- modal login -->


    <div class="row w3-pink ">
        <div id="searchjob" style="margin-top:60px;">
            <nav>
                <div style="padding-left:80px">
                    <ul class="nav navbar-nav nav-stacked">

                        <li><a href="{{route('quanlyhoso',Auth::user()->id)}}" class="w3-hover-blue-gray"><i class="fa fa-cubes w3-margin-right"></i>Quản lý hồ sơ</a></li>
                        <li><a href="{{route('profile',Auth::user()->id)}}" class="w3-hover-blue-gray active"> <span class="glyphicon glyphicon-user w3-margin-right"></span>Hồ sơ của tôi</a></li>
                        <li><a href="{{route('vieclamcuatoi',Auth::user()->id)}}" class="w3-hover-blue-gray"><i class="fa fa-briefcase w3-margin-right"></i>Việc làm của tôi</a></li>
                        <li><a type="hidden" href="{{route('thongbaovieclam',Auth::user()->id)}}" class="w3-hover-blue-gray"><i class="fa fa-bell w3-margin-right"></i>Thông báo việc làm</a></li>
                        <li style="display: none;"><a type="hidden" href="{{route('nhatuyendungxemhoso')}}" class="w3-hover-blue-gray"><span class="glyphicon glyphicon-eye-open w3-margin-right"></span>Nhà tuyển dụng xem hồ sơ </a></li>
                        <li><a href="{{route('changepassword',Auth::user()->id)}}" class="w3-hover-blue-gray"><i class="fa fa-cog w3-margin-right"></i>Đổi mật khẩu </a></li>
                       


                    </ul>
                </div>
            </nav>
        </div>
    </div>

    @yield('content')
    <!--End Login_mobile  -->
    <!-- Modal Register -->
    <div class="modal left fade" id="myRegister" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <span class="lableloginregister">Đăng Ký Thành Viên </span>
                </div>

                <div class="modal-body">

                    <div class="container">

                        <form class="form-signin" action="{{route('register')}}" method="POST">
                            @if(count($errors)>0)
                            <div class="alert alert-danger">
                                @foreach($errors->all() as $err)
                                {{$err}} <br>
                                @endforeach
                            </div>
                            @endif
                            <input type="hidden" name="_token" value="{{@csrf_token()}}">

                            <div id="signupalert" style="display:none" class="alert alert-danger">
                                <p>Error:</p>
                                <span></span>
                            </div>



                            <div class="form-group">
                                <label for="inputHoTen">Họ Tên</label>
                                <input name="hoten" value="{{old('hoten')}}" type="text" id="inputHoTen" class="form-control" placeholder="Họ Tên" min="10" max="50" required autofocus>

                            </div>
                            <div class="form-group">
                                <label for="inputtEmail">Email</label>
                                <input name="username" value="{{old('username')}}" type="email" id="inputtEmail" class="form-control" placeholder="Địa chỉ Email" required>

                            </div>
                            <div class="form-group">
                                <label for="inputtPassword">Mật khẩu</label>
                                <input name="password" type="password" id="inputtPassword" class="form-control" placeholder="Mật khẩu" required>

                            </div>
                            <div class="form-group">
                                <label for="inputrePassword">Xác nhận mật khẩu</label>
                                <input name="repassword" type="password" id="inputrePassword" class="form-control" placeholder="Xác nhận mật khẩu" required>

                            </div>
                            <div class="form-group">
                                <select style="border-radius: 50px; height: 3rem;margin-bottom: 10px;" name="candidate">
                                    <center>
                                        <option selected value="0">Người ứng tuyển</option>
                                        <option value="1">Nhà tuyển dụng</option>
                                    </center>
                                </select>
                            </div>



                            <div class="form-group">
                                <!-- Button -->
                                <div class="col-md-offset-3 col-md-9">

                                    <button id="btn-signup" type="submit" class="btn btn-success modal-login-btn"><i class="icon-hand-right"></i> &nbsp Đăng Ký</button>

                                </div>
                            </div>
                            <h6 align="center">Đăng Ký Với...</h6>
                            <div class="modal-footer">

                            </div>
                            <div>
                                <a href='#' class=" btnother facebook"> <i class="fa fa-facebook modal-icons paddingother"></i></a>
                                <a href='#' class="btnother  twitter"> <i class="fa fa-twitter modal-icons paddingother"></i> </a>
                                <a href='#' class="btnother google"> <i class="fa fa-google-plus modal-icons paddingother"></i> </a>

                                <a href='#' class="btnother linkedin"> <i class="fa fa-linkedin modal-icons paddingother"></i> </a>


                            </div>



                        </form>
                    </div>
                </div>

            </div><!-- modal-content -->
        </div><!-- modal-dialog -->
    </div><!-- modal Register -->
    <!--Login full-->
    <div class="modal fade" id="loginFull" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header login_modal_header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h2 class="modal-title" id="myModalLabel">Đăng nhập</h2>
                </div>
                <form id="loginform" class="form-horizontal" role="form" action="{{route('login')}}" method="POST">
                    @if(Session::has('message'))
                    <div class="alert alert-danger">
                        {{Session::get('message')}}
                    </div>
                    @endif
                    <input type="hidden" name="_token" value="{{@csrf_token()}}">
                    <div class="modal-body login-modal">
                        <div class="clearfix"></div>
                        <div id='social-icons-conatainer'>
                            <div class='modal-body-left'>
                                <div class="form-group">
                                    <input type="text" id="username" name="username" placeholder="Vui lòng nhập tài khoản" value="" class="form-control login-field">
                                    <i class="fa fa-user login-field-icon"></i>
                                </div>

                                <div class="form-group">
                                    <input type="password" id="login-pass" name="password" placeholder="Vui lòng nhập mật khẩu" value="" class="form-control login-field">
                                    <i class="fa fa-lock login-field-icon"></i>
                                </div>
                                <div class="input-group">
                                    <div class="checkbox">
                                        <label>
                                            <input id="login-remember" type="checkbox" name="remember" value="1"> Nhớ mật khẩu
                                        </label>
                                    </div>
                                </div>
                                <br>
                                <button class="btn btn-success modal-login-btn">Đăng nhập</button>

                            </div>

                            <div class='modal-body-right'>
                                <div class="modal-social-icons">
                                    <a href='#' class="btn btn-default facebook"> <i class="fa fa-facebook modal-icons"></i> Đăng nhập với Facebook </a>
                                    <a href='#' class="btn btn-default twitter"> <i class="fa fa-twitter modal-icons"></i> Đăng nhập với Twitter </a>
                                    <a href='#' class="btn btn-default google"> <i class="fa fa-google-plus modal-icons"></i> Đăng nhập với Google </a>
                                    <a href='#' class="btn btn-default linkedin"> <i class="fa fa-linkedin modal-icons"></i> Đăng nhập với Linkedin </a>
                                </div>
                            </div>
                            <div id='center-line'> Hoặc </div>
                        </div>
                        <div class="clearfix"></div>

                        <div class="form-group modal-register-btn">
                            <a class="btn warning" href="#"> Quên mật khẩu?</a><a class="btn default" href="#"> Đăng ký thành viên mới</a>
                        </div>
                    </div>
                </form>
                <div class="clearfix"></div>
                <div class="modal-footer login_modal_footer">
                </div>
            </div>
        </div>
    </div>
    <!--End login full -->

    <!--End Search -->
    <!-- Register full-->
    <div class="modal fade" id="loginReFull" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header login_modal_header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h2 class="modal-title" id="myModalLabel">Đăng Ký Thành Viên</h2>
                </div>

                <form class="form-signin" action="{{route('register')}}" method="POST">
                    @if(count($errors)>0)
                    <div class="alert alert-danger">
                        @foreach($errors->all() as $err)
                        {{$err}} <br>
                        @endforeach
                    </div>
                    @endif
                    <input type="hidden" name="_token" value="{{@csrf_token()}}">
                    <div class="modal-body login-modal">
                        <div class="clearfix"></div>
                        <div id='social-icons-conatainer'>
                            <div class='modal-body-left'>
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>


                                <div class="form-group">
                                    <label for="inputHoTen">Họ Tên</label>
                                    <input name="hoten" value="{{old('hoten')}}" type="text" id="inputHoTen" class="form-control" placeholder="Họ Tên" min="10" max="50" required autofocus>

                                </div>
                                <div class="form-group">
                                    <label for="inputtEmail">Email</label>
                                    <input name="username" value="{{old('username')}}" type="email" id="inputtEmail" class="form-control" placeholder="Địa chỉ Email" required>

                                </div>
                                <div class="form-group">
                                    <label for="inputtPassword">Mật khẩu</label>
                                    <input name="password" type="password" id="inputtPassword" class="form-control" placeholder="Mật khẩu" required>

                                </div>
                                <div class="form-group">
                                    <label for="inputrePassword">Xác nhận mật khẩu</label>
                                    <input name="repassword" type="password" id="inputrePassword" class="form-control" placeholder="Xác nhận mật khẩu" required>

                                </div>
                                <div class="form-group">
                                    <select style="border-radius: 50px; height: 3rem" name="candidate">
                                        <center>
                                            <option selected value="0">Người ứng tuyển</option>
                                            <option value="1">Nhà tuyển dụng</option>
                                        </center>
                                    </select>
                                </div>
                                <div class="input-group">
                                    <div class="checkbox">
                                        <label>
                                            <input id="login-remember" type="checkbox" name="remember" value="1" /> Nhớ mật khẩu
                                        </label>
                                    </div>
                                </div>

                                <button class="btn btn-success modal-login-btn" type="submit">Đăng Ký</button>

                            </div>

                            <div class='modal-body-right'>
                                <div class="modal-social-icons">
                                    <a href='#' class="btn btn-default facebook"> <i class="fa fa-facebook modal-icons"></i> Đăng ký với Facebook </a>
                                    <a href='#' class="btn btn-default twitter"> <i class="fa fa-twitter modal-icons"></i> Đăng ký với Twitter </a>
                                    <a href='#' class="btn btn-default google"> <i class="fa fa-google-plus modal-icons"></i> Đăng ký với Google </a>
                                    <a href='#' class="btn btn-default linkedin"> <i class="fa fa-linkedin modal-icons"></i> Đăng ký với Linkedin </a>
                                    <a class="btn warning" href="#" style="margin-top:220px;width:100%;height: 40px;color: white;"> Đăng Nhập</a>

                                </div>
                            </div>
                            <div id='center-line'> Hoặc </div>
                        </div>
                    </div>
                </form>
                <div class="clearfix"></div>

                <div class="form-group modal-register-btn">
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="modal-footer login_modal_footer">
            </div>
        </div>

    </div>
    </div>
    </div>
    <!-- End Register full-->
    <!-- container -->

    <header class="navbar-fixed-top">

        <nav id='cssmenu'>

            <div class="logo">
                <div class="icondangnhap">

                    <a href="#" data-toggle="modal" data-target="#myLogin"><img src="assets/images/dangnhap.png"></a>

                    <a class="register col-xs-121 " href="#" data-toggle="modal" data-target="#myRegister"><img src="assets/images/dangky.png"></a>


                </div>
                </form>

            </div>



            <div id="head-mobile"></div>
            <div class="button"></div>
            <ul style="float: right">
                <li><a href="{{route('index')}}"><i class="fa fa-home"></i></a></li>
                <li><a href="{{route('findjob')}}">Tìm việc làm</a>

                </li>

                <li><a href="{{route('cvlist')}}">Danh sách ứng viên</a></li>
                @if(Auth::check())
                <li><a href='#'> Chào, {{Auth::user()->name}}</a>
                    <ul style="display: none;">
                        <li><a href="{{route('quanlyhoso',Auth::user()->id)}}" class="w3-hover-blue-gray"><i class="fa fa-cubes w3-margin-right"></i>Quản lý hồ sơ</a></li>
                        <li><a href="{{route('profile',Auth::user()->id)}}" class="w3-hover-blue-gray active"> <span class="glyphicon glyphicon-user w3-margin-right"></span>Hồ sơ của tôi</a></li>
                        <li><a  href="{{route('vieclamcuatoi',Auth::user()->id)}}" class="w3-hover-blue-gray"><i class="fa fa-briefcase w3-margin-right"></i>Việc làm của tôi</a></li>
                        <li><a type="hidden" href="{{route('thongbaovieclam',Auth::user()->id)}}" class="w3-hover-blue-gray"><i class="fa fa-bell w3-margin-right"></i>Thông báo việc làm</a></li>
                        <li style="display: none;"><a type="hidden" href="{{route('nhatuyendungxemhoso')}}" class="w3-hover-blue-gray"><span class="glyphicon glyphicon-eye-open w3-margin-right"></span>Nhà tuyển dụng xem hồ sơ </a></li>
                        <li><a href="{{route('changepassword',Auth::user()->id)}}" class="w3-hover-blue-gray"><i class="fa fa-cog w3-margin-right"></i>Đổi mật khẩu </a></li>
                        <li><a href="{{route('logout')}}"><i class="glyphicon glyphicon-log-out w3-margin-right"></i>Đăng xuất</a></li>

                    </ul>
                </li>
                @else
                <li><a href="#" data-toggle="modal" data-target="#loginFull"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
                <li><a href="#" data-toggle="modal" data-target="#loginReFull"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
                @endif
             
                <li class="w3-pink"> <a href='#'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ứng Viên&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    <ul>
                        <li class="w3-hover-brown"><a href="#loginFull" data-toggle="modal" data-target="#loginFull"><i class="glyphicon glyphicon-log-in w3-margin-right"></i> Đăng nhập</a></li>
                        @if(Auth::check())
                        <li class="w3-hover-brown"><a href="{{route('profile',Auth::user()->id)}}"><i class="glyphicon glyphicon-pencil  w3-margin-right"></i> Tạo hồ sơ</a></li>
                        @else
                        <li class="w3-hover-brown"><a href="#loginFull"><i class="glyphicon glyphicon-pencil  w3-margin-right"></i> Tạo hồ sơ</a></li>
                        @endif
                        <li class="w3-hover-brown"><a href="{{route('findjobs')}}"><i class="glyphicon glyphicon-search  w3-margin-right"></i> Tìm kiếm việc làm</a></li>

                    </ul>

                </li>
            </ul>
        </nav>
    </header>


    <!-- Sections -->


</body>
<br>
<footer>
    <section id="footer-menu" class="footer-menu" style="padding:10px;">
        <div class="container">

            <ul class="nav navbar-nav navbar-left">
                <li><a href="http://hiepsiit.com">Hiệp sĩ IT</a></li>
                <li><a href="http://learning.hiepsiit.com">Học tập</a></li>
                <li><a href="http://qna.hiepsiit.com">Hỏi Đáp</a></li>
                <li><a href="https://sharecode.hiepsiit.com">Chia sẻ mã nguồn</a></li>
                <li><a href="https://sharefile.hiepsiit.com">Chia sẻ file</a></li>
            </ul>


        </div>

    </section>
</footer>
<script>
    $(document).ready(function() {
        $(".nav-tabs a").click(function() {
            $(this).tab('show');
        });
    });
</script>
<!-- login -->



</html>
<!--Search-->

<!--End Search -->