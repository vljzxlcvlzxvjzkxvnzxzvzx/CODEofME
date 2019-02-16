<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/4/2018
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login-Register | E-Shopper</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<!-- Code bắt lỗi form -->
<script>
    $(document).ready(function () {
        $('#btnLogin').on('click', function () {
            var ok = true;
            $('#thongbao').html('Checking login info...');
            $.post('Thanhvien/dangnhap', {
                    username: $('#log_username').val(),
                    password: $('#log_password').val()
                }, function (data) {
                    if ($('#log_username').val() == '' || $('#log_username').val() == undefined) {
                        $('#err_username_log').html('Vui lòng nhập email');
                        $('#log_username').css('border', 'solid 1px red');
                        $('#thongbao').html('');
                        ok = false;
                    }
                    if ($('#log_password').val() == '' || $('#log_password').val() == undefined) {
                        $('#err_password_log').html('Vui lòng nhập mật khẩu');
                        $('#log_password').css('border', 'solid 1px red');
                        $('#thongbao').html('');
                        ok = false;
                    }
                    if (ok) {
                        if (data === 'ok') {
                            window.location.href = "/";
                        } else {
                            $('#thongbao').html('Login failed!');
                        }
                    }
                }).fail(function (xhr, textStatus, errorThrown) {
            });
        });
        $('#log_form').on('keyup', function () {
            if ($('#log_username').val() != '') {
                $('#err_username_log').html('');
                $('#thongbao').html('');
                $('#log_username').css('border', 'solid 2px green');
            }
            if ($('#log_password').val() != '') {
                $('#err_password_log').html('');
                $('#thongbao').html('');
                $('#log_password').css('border', 'solid 2px green');
            }
        });
        $('#btnRegister').on('click', function () {
            $.ajax({
                url: "Thanhvien/kiemtraemail",
                success: function (data) {
                    var _check = true;
                    var dsEmail = data.split('-');
                    if (dsEmail.indexOf($('#reg_email').val()) > -1) {
                        $('#err_email_reg').html('Tài khoản đã tồn tại');
                        $('#reg_email').css('border', 'solid 1px red');
                        _check = false;
                    }
                    if ($('#reg_name').val() == '' || $('#reg_name').val() == undefined) {
                        $('#err_name_reg').html('Vui lòng nhập tên bạn');
                        $('#reg_name').css('border', 'solid 1px red');
                        _check = false;
                    }
                    if ($('#reg_add').val() == '' || $('#reg_add').val() == undefined) {
                        $('#err_add_reg').html('Vui lòng nhập địa chỉ');
                        $('#reg_add').css('border', 'solid 1px red');
                        _check = false;
                    }
                    if ($('#reg_email').val() == '' || $('#reg_email').val() == undefined) {
                        $('#err_email_reg').html('Vui lòng nhập email');
                        $('#reg_email').css('border', 'solid 1px red');
                        _check = false;
                    }
                    if ($('#reg_password').val() == '' || $('#reg_password').val() == undefined) {
                        $('#err_password_reg').html('Vui lòng nhập mật khẩu');
                        $('#reg_password').css('border', 'solid 1px red');
                        _check = false;
                    }
                    if ($('#reg_confirmpassword').val() == '' || $('#reg_confirmpassword').val() == undefined) {
                        $('#err_confirmpassword_reg').html('Vui lòng xác nhận mật khẩu');
                        $('#reg_confirmpassword').css('border', 'solid 1px red');
                        _check = false;
                    }
                    if ($('#reg_confirmpassword').val() != $('#reg_password').val()) {
                        $('#err_confirmpassword_reg').html('Mật khẩu không trùng khớp');
                        $('#reg_confirmpassword').css('border', 'solid 1px red');
                        _check = false;
                    }
                    if (_check) {
                        $('#reg_form').submit();
                    }
                }
            });
        });
        $('#reg_form').on('keyup', function () {
            if ($('#reg_name').val() != '') {
                $('#err_name_reg').html('');
                $('#reg_name').css('border', 'solid 2px green');
            }
            if ($('#reg_username').val() != '') {
                $('#err_username_reg').html('');
                $('#reg_username').css('border', 'solid 2px green');
            }
            if ($('#reg_email').val() != '') {
                $('#err_email_reg').html('');
                $('#reg_email').css('border', 'solid 2px green');
            }
            if ($('#reg_add').val() != '') {
                $('#err_add_reg').html('');
                $('#reg_add').css('border', 'solid 2px green');
            }
            if ($('#reg_password').val() != '') {
                $('#err_password_reg').html('');
                $('#reg_password').css('border', 'solid 2px green');
            }
            if ($('#reg_confirmpassword').val() != '') {
                $('#err_confirmpassword_reg').html('');
                $('#reg_confirmpassword').css('border', 'solid 2px green');
            }
        });
    });
</script>

<body>
<header id="header"><!--header-->
    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="/"><img src="images/home/logo.png" alt=""/></a>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="/forgotpassword"><i class="fa fa-lock"></i> Quên mật khẩu</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="/">Home</a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->

<section id="form"><!--form-->
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-1">
                <div class="login-form"><!--login form-->
                    <h2>Đăng nhập vào tài khoản</h2>
                    <form id="log_form" method="post" action="#">
                        <input id="log_username" name="log_username" type="text" placeholder="Tên tài khoản"/>
                        <p style="color:red" id="err_username_log"></p>

                        <input id="log_password" name="log_password" type="password" placeholder="Mật khẩu"/>
                        <p style="color:red" id="err_password_log"></p>
                        <span>
								<input type="checkbox" class="checkbox">
								Giữ tôi luôn đăng nhập
							</span>
                    </form>
                    <p style="color: red" id="thongbao"></p>
                    <button id="btnLogin" style="margin-left:80px" type="submit" class="btn btn-default"><i
                            class="fa fa-sign-in"> Login</i></button>
                </div><!--/login form-->
            </div>
            <div class="col-sm-1">
                <h2 class="or">Hoặc</h2>
            </div>
            <div class="col-sm-4">
                <div class="signup-form"><!--sign up form-->
                    <h2>Đăng kí tài khoản mới!</h2>
                    <form id="reg_form" method="post" action="Thanhvien/dangkithanhvien">
                        <input id="reg_name" name="reg_name" type="text" placeholder="Họ tên người dùng"/>
                        <p style="color:red" id="err_name_reg"></p>

                        <input id="reg_email" name="reg_email" type="text" placeholder="Địa chỉ Email"/>
                        <p style="color:red" id="err_email_reg"></p>

                        <input id="reg_add" name="reg_add" type="text" placeholder="Địa chỉ"/>
                        <p style="color:red" id="err_add_reg"></p>

                        <input id="reg_password" name="reg_password" type="password" placeholder="Mật khẩu"/>
                        <p style="color:red" id="err_password_reg"></p>

                        <input id="reg_confirmpassword" name="reg_confirmpassword" type="password"
                               placeholder="Xác nhận mật khẩu"/>
                        <p style="color:red" id="err_confirmpassword_reg"></p>
                    </form>
                    <button id="btnRegister" style="margin-left:120px" type="submit" class="btn btn-default"><i
                            class="fa fa-user">Register</i></button>
                </div><!--/sign up form-->
            </div>
        </div>
    </div>
</section><!--/form-->


<footer id="footer"><!--Footer-->

    <div class="footer-widget">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Service</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="">Online Help</a></li>
                            <li><a href="">Contact Us</a></li>
                            <li><a href="">Order Status</a></li>
                            <li><a href="">Change Location</a></li>
                            <li><a href="">FAQ’s</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Quock Shop</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="">T-Shirt</a></li>
                            <li><a href="">Mens</a></li>
                            <li><a href="">Womens</a></li>
                            <li><a href="">Gift Cards</a></li>
                            <li><a href="">Shoes</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Policies</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="">Terms of Use</a></li>
                            <li><a href="">Privecy Policy</a></li>
                            <li><a href="">Refund Policy</a></li>
                            <li><a href="">Billing System</a></li>
                            <li><a href="">Ticket System</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>About Shopper</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="">Company Information</a></li>
                            <li><a href="">Careers</a></li>
                            <li><a href="">Store Location</a></li>
                            <li><a href="">Affillate Program</a></li>
                            <li><a href="">Copyright</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3 col-sm-offset-1">
                    <div class="single-widget">
                        <h2>About Shopper</h2>
                        <form action="#" class="searchform">
                            <input type="text" placeholder="Your email address"/>
                            <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i>
                            </button>
                            <p>Get the most recent updates from <br/>our site and be updated your self...</p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>
                <p class="pull-right">Designed by <span><a target="_blank"
                                                           href="http://www.themeum.com">Themeum</a></span></p>
            </div>
        </div>
    </div>

</footer><!--/Footer-->


<script src="js/jquery.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
</body>
</html>
