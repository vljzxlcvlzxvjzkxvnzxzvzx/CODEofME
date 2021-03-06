<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Đổi mật khẩu</title>
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
</head>
<!-- Code bắt lỗi Jquery -->
<script>
	$(document).ready(function () {
		$('#changepassword_form').on('submit', function () {
			if ($('#changepassword_oldpassword').val() == '' || $('#changepassword_oldpassword').val() == undefined) {
				$('#err_changepassword_oldpassword').html('Vui lòng nhập mật khẩu cũ');
				$('#changepassword_oldpassword').css('border', 'solid 1px red');
				return false;
			}
			if ($('#changepassword_newpassword').val() == '' || $('#changepassword_newpassword').val() == undefined) {
				$('#err_changepassword_newpassword').html('Vui lòng nhập mật khẩu mới');
				$('#changepassword_newpassword').css('border', 'solid 1px red');
				return false;
			}
			if ($('#changepassword_confirmpassword').val() == '' || $('#changepassword_confirmpassword').val() == undefined) {
				$('#err_changepassword_confirmpassword').html('Vui lòng xác nhận mật khẩu');
				$('#changepassword_confirmpassword').css('border', 'solid 1px red');
				return false;
			}
			if ($('#changepassword_newpassword').val() != $('#changepassword_confirmpassword').val()) {
				$('#err_changepassword_confirmpassword').html('Mật khẩu không trùng khớp');
				$('#changepassword_confirmpassword').css('border', 'solid 1px red');
				return false;
			}
			return true;
		});
		$('#changepassword_form').on('keyup', function () {
			if ($('#changepassword_oldpassword').val() != '') {
				$('#err_changepassword_oldpassword').html('');
				$('#changepassword_oldpassword').css('border', 'solid 2px green');
			}
			if ($('#changepassword_newpassword').val() != '') {
				$('#err_changepassword_newpassword').html('');
				$('#changepassword_newpassword').css('border', 'solid 2px green');
			}
			if ($('#changepassword_confirmpassword').val() != '') {
				$('#err_changepassword_confirmpassword').html('');
				$('#changepassword_confirmpassword').css('border', 'solid 2px green');
			}
		})
	});
</script>

<body>
	<header id="header">
		<!--header-->
		<div class="header-middle">
			<!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="/"><img src="images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="/login_page"><i class="fa fa-lock"></i> Đăng nhập/Đăng kí</a></li>
								<li><a href="/forgotpassword_page"><i class="fa fa-lock"></i> Quên mật khẩu</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-middle-->

		<div class="header-bottom">
			<!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="/" class="active">Home</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-bottom-->
	</header>
	<!--/header-->

	<section id="form">
		<!--form-->
		<div class="container">
			<div class="col-sm-4 col-sm-offset-4">
				<div class="login-form">
					<!--login form-->
					<h2 style="text-align:center">Đổi mật khẩu</h2>
					<form id="changepassword_form" method="post">
						<input id="changepassword_oldpassword" name="changepassword_oldpassword" type="password" placeholder="Mật khẩu cũ" />
						<p style="color:red" id="err_changepassword_oldpassword"></p>

						<input id="changepassword_newpassword" name="changepassword_newpassword" type="password" placeholder="Mật khẩu mới" />
						<p style="color:red" id="err_changepassword_newpassword"></p>

						<input id="changepassword_confirmpassword" name="changepassword_confirmpassword" type="password" placeholder="Xác nhận lại mật khẩu mới" />
						<p style="color:red" id="err_changepassword_confirmpassword"></p>

						<button style="margin-left: 100px" type="submit" class="btn btn-default">Đổi mật khẩu</button>
					</form>
				</div>
				<!--/login form-->
			</div>
		</div>
	</section>
	<footer id="footer">
		<!--Footer-->

		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Service</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#">Online Help</a></li>
								<li><a href="#">Contact Us</a></li>
								<li><a href="#">Order Status</a></li>
								<li><a href="#">Change Location</a></li>
								<li><a href="#">FAQ’s</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Quock Shop</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#">T-Shirt</a></li>
								<li><a href="#">Mens</a></li>
								<li><a href="#">Womens</a></li>
								<li><a href="#">Gift Cards</a></li>
								<li><a href="#">Shoes</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Policies</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#">Terms of Use</a></li>
								<li><a href="#">Privecy Policy</a></li>
								<li><a href="#">Refund Policy</a></li>
								<li><a href="#">Billing System</a></li>
								<li><a href="#">Ticket System</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>About Shopper</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#">Company Information</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">Store Location</a></li>
								<li><a href="#">Affillate Program</a></li>
								<li><a href="#">Copyright</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>About Shopper</h2>
							<form action="#" class="searchform">
								<input type="text" placeholder="Your email address" />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>Get the most recent updates from <br />our site and be updated your self...</p>
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
					<p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
				</div>
			</div>
		</div>

	</footer>
	<!--/Footer-->
</body>

</html>