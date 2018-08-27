<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | property User profile Page</title>
<style>
span#idcheck {
	color: black;
}
</style>
<script src="resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

	$(function() {

		$("#userid").keyup(function() {
			var userid = $(this).val();
			if (userid.length<3 || userid.length>11) {
				$('#idcheck').text('길이는 3~10사이입니다.');
				return false;
			}

			var sendData = {
				'userid' : userid
			};

			$.ajax({
				method : 'post',
				url : "duplicateCheck",
				data : JSON.stringify(sendData),
				dataType : 'json',
				contentType : 'application/json; charset=utf-8',
				success : function(r) {
					if (r == 1) {
						$('#idcheck').text('duplicated ID');
						$('#idcheck').css('color', 'red');
					} else {
						$('#idcheck').text('You can use Id');
						$('#idcheck').css('color', 'blue');
					}
				}
			});

		});

	});

	function formcheck() {

		var hobbytext = "";
        alert('ddd');
		$("input[class='hobby']:checkbox:checked").each(function(i) {
			hobbytext += $(this).val() + ", ";
		});

		$("#hobby2").val(hobbytext);

		var userid = $("#userid");
		var phone = $("#phone");

		if (userid.val().trim() == null) {
			alert("아이디 입력해주세요");
			return false;
		}
		if (phone.val().trim() == null) {
			alert("핸드폰 입력해주세요");
			return false;
		}

		var userpwd1 = $("#userpwd1");
		var userpwd2 = $("#userpwd2");

		if (userpwd1.val() != userpwd2.val()) {
			alert('password');
			userpwd1.select();
			
			return false;
		}
		

	}
</script>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">


<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/fontello.css">
<link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/icheck.min_all.css">
<link rel="stylesheet" href="assets/css/price-range.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/owl.transitions.css">
<link rel="stylesheet" href="assets/css/wizard.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body>

	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->

	<div class="header-connect">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-sm-8  col-xs-12">
					<div class="header-half header-call">
						<p>
							<span><i class="pe-7s-call"></i> +1 234 567 7890</span> <span><i
								class="pe-7s-mail"></i> your@company.com</span>
						</p>
					</div>
				</div>
				<div
					class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
					<div class="header-half header-social">
						<ul class="list-inline">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-vine"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--End top header -->

	<nav class="navbar navbar-default ">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><img
					src="assets/img/logo.png" alt=""></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse yamm" id="navigation">
				<div class="button navbar-right">
					<button class="navbar-btn nav-button wow bounceInRight login"
						onclick="location.href='logIn'" data-wow-delay="0.4s">Login</button>

				</div>
				<ul class="main-nav nav navbar-nav navbar-right">
					<li class="dropdown ymm-sw " data-wow-delay="0.1s"><a
						href="index.html" class="dropdown-toggle active"
						data-toggle="dropdown" data-hover="dropdown" data-delay="200">Home
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu navbar-nav">
							<li><a href="index-2.html">Home Style 2</a></li>
							<li><a href="index-3.html">Home Style 3</a></li>
							<li><a href="index-4.html">Home Style 4</a></li>
							<li><a href="index-5.html">Home Style 5</a></li>

						</ul></li>

					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="properties.html">Properties</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="property.html">Property</a></li>
					<li class="dropdown yamm-fw" data-wow-delay="0.1s"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="200">Template <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li>
								<div class="yamm-content">
									<div class="row">
										<div class="col-sm-3">
											<h5>Home pages</h5>
											<ul>
												<li><a href="index.html">Home Style 1</a></li>
												<li><a href="index-2.html">Home Style 2</a></li>
												<li><a href="index-3.html">Home Style 3</a></li>
												<li><a href="index-4.html">Home Style 4</a></li>
												<li><a href="index-5.html">Home Style 5</a></li>
											</ul>
										</div>
										<div class="col-sm-3">
											<h5>Pages and blog</h5>
											<ul>
												<li><a href="blog.html">Blog listing</a></li>
												<li><a href="single.html">Blog Post (full)</a></li>
												<li><a href="single-right.html">Blog Post (Right)</a></li>
												<li><a href="single-left.html">Blog Post (left)</a></li>
												<li><a href="contact.html">Contact style (1)</a></li>
												<li><a href="contact-3.html">Contact style (2)</a></li>
												<li><a href="contact_3.html">Contact style (3)</a></li>
												<li><a href="faq.html">FAQ page</a></li>
												<li><a href="404.html">404 page</a></li>
											</ul>
										</div>
										<div class="col-sm-3">
											<h5>Property</h5>
											<ul>
												<li><a href="property-1.html">Property pages style
														(1)</a></li>
												<li><a href="property-2.html">Property pages style
														(2)</a></li>
												<li><a href="property-3.html">Property pages style
														(3)</a></li>
											</ul>

											<h5>Properties list</h5>
											<ul>
												<li><a href="properties.html">Properties list style
														(1)</a></li>
												<li><a href="properties-2.html">Properties list
														style (2)</a></li>
												<li><a href="properties-3.html">Properties list
														style (3)</a></li>
											</ul>
										</div>
										<div class="col-sm-3">
											<h5>Property process</h5>
											<ul>
												<li><a href="submit-property.html">Submit - step 1</a>
												</li>
												<li><a href="submit-property.html">Submit - step 2</a>
												</li>
												<li><a href="submit-property.html">Submit - step 3</a>
												</li>
											</ul>
											<h5>User account</h5>
											<ul>
												<li><a href="register.html">Register / login</a></li>
												<li><a href="user-properties.html">Your properties</a>
												</li>
												<li><a href="submit-property.html">Submit property</a>
												</li>
												<li><a href="change-password.html">Change password</a>
												</li>
												<li><a href="user-profile.html">Your profile</a></li>
											</ul>
										</div>
									</div>
								
								</div> <!-- /.yamm-content -->
							</li>
						</ul></li>

					<li class="wow fadeInDown" data-wow-delay="0.4s"><a
						href="contact.html">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- End of nav bar -->

	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">
						Hello : <span class="orange strong">Kimaro kyoto</span>
					</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="content-area user-profiel"
		style="background-color: #FCFCFC;">
		&nbsp;
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1 profiel-container">
					<form action="memberSignIn" method="post" onsubmit="return formcheck()"
						enctype="multipart/form-data">
						<div class="profiel-header">
							<h3>
								<b>BUILD</b> YOUR PROFILE <br> <small>This
									information will let us know more about you.</small>
							</h3>
							<hr>
						</div>
						<div class="clear">
							<div class="col-sm-3 col-sm-offset-1">
								<div class="picture-container">
									<div class="picture">
										<img src="assets/img/avatar.png" class="picture-src"
											id="wizardPicturePreview" title="" /> <input type="file"
											id="wizard-picture" name="upload">
									</div>
									<h6>Choose Picture</h6>
								</div>
							</div>
							<div class="col-sm-3 padding-top-25">
								<div class="form-group">
									<label>ID <small>(required)</small></label> <input id="userid"
										name="userid" type="text" class="form-control"
										placeholder="Andrew...">
								</div>
								<div class="form-group">
									<label>First Name <small>(required)</small></label> <input
										name="firstname" type="text" class="form-control" id="firstname"
										placeholder="Smith...">
								</div>
								<div class="form-group">
									<label>Last Name <small>(required)</small></label> <input
										name="lastname" type="text" class="form-control">
								</div>
								<div class="form-group">
									<label>Email<small>(required)</small></label> <input id="email"
										name="email" type="email" class="form-control"
										placeholder="andrew@email.com">
								</div>
								<span id="idcheck"></span>
							</div>
							<div class="col-sm-3 padding-top-25">
								<div class="form-group">
									<label>Password <small>(required)</small></label> <input
										id="userpwd1" name="userpwd" type="password"
										class="form-control">
								</div>
								<div class="form-group">
									<label>Confirm password : <small>(required)</small></label> <input
										id="userpwd2" type="password" class="form-control">
								</div>
								<div class="form-group">
									<label>BirthDay<small>(required)</small></label> <input id="birthday"
										name="birthday" type="date" class="form-control">
								</div>
								<div class="form-group">
									<label>Phone<small>(required)</small></label> <input id="phone"
										name="phone" type="text" class="form-control" placeholder="+1 9090909090">
								</div>
							</div>
						</div>
													<br>
							<hr>
							<br>
							<div class="col-sm-5 col-sm-offset-1">
								<div class="form-group">
									<label>Postal code / Zip code</label> <input name="zipcode" type="text" placeholder="000365"
										class="form-control" >
								</div>
								<div class="form-group">
									<label>Country</label> <select name="country" class="select" id="country" style="padding-left: 10px;"><option data-title="Australia" value="Australia">Australia</option><option data-title="Austria" value="Austria">Austria</option><option data-title="Bahrain" value="Bahrain">Bahrain</option><option data-title="Belarus" value="Belarus">Belarus</option><option data-title="Belgium" value="Belgium">Belgium</option><option data-title="Bosnia &amp; Herzegovina" value="Bosnia">Bosnia Herzegovina</option><option data-title="Brunei" value="Brunei">Brunei</option><option data-title="Bulgaria" value="Bulgaria">Bulgaria</option>
            <option data-title="Canada" value="Canada">Canada</option><option data-title="China" value="China">China</option><option data-title="Croatia" value="Croatia">Croatia</option><option data-title="Cyprus" value="Cyprus">Cyprus</option><option data-title="Czech Republic" value="Czech Republic">Czech Republic</option><option data-title="Denmark" value="Denmark">Denmark</option><option data-title="Estonia" value="Estonia">Estonia</option><option data-title="Finland" value="Finland">Finland</option><option data-title="France" value="France">France</option><option data-title="Georgia" value="Georgia">Georgia</option>
            <option data-title="Germany" value="Germany">Germany</option><option data-title="Gibraltar" value="Gibraltar">Gibraltar</option><option data-title="Greece" value="Greece">Greece</option><option data-title="Guernsey" value="Guernsey">Guernsey</option><option data-title="Hong Kong SAR China" value="Hong Kong">Hong Kong SAR China</option><option data-title="Hungary" value="Hungary">Hungary</option><option data-title="Iceland" value="Iceland">Iceland</option><option data-title="India" value="India">India</option><option data-title="Indonesia" value="Indonesia">Indonesia</option><option data-title="Ireland" value="Ireland">Ireland</option>
            <option data-title="Israel" value="Israel">Israel</option><option data-title="Italy" value="Italy">Italy</option><option data-title="Japan" value="Japan">Japan</option><option data-title="Jersey" value="Jersey">Jersey</option><option data-title="Jordan" value="Jordan">Jordan</option><option data-title="Kuwait" value="Kuwait">Kuwait</option><option data-title="Laos" value="Laos">Laos</option><option data-title="Latvia" value="Latvia">Latvia</option><option data-title="Lebanon" value="Lebanon">Lebanon</option><option data-title="Lithuania" value="Lithuania">Lithuania</option><option data-title="Luxembourg" value="Luxembourg">Luxembourg</option>
            <option data-title="Macau SAR China" value="Macau">Macau SAR China</option><option data-title="Malaysia" value="Malaysia">Malaysia</option><option data-title="Malta" value="Malta">Malta</option><option data-title="Monaco" value="Monaco">Monaco</option><option data-title="Netherlands" value="Netherlands">Netherlands</option><option data-title="New Zealand" value="New Zealand">New Zealand</option><option data-title="Nigeria" value="Nigeria">Nigeria</option><option data-title="Norway" value="Norway">Norway</option><option data-title="Philippines" value="Philippines">Philippines</option><option data-title="Poland" value="Poland">Poland</option>
            <option data-title="Portugal" value="Portugal">Portugal</option><option data-title="Qatar" value="Qatar">Qatar</option><option data-title="Romania" value="Romania">Romania</option><option data-title="Russia" value="Russia">Russia</option><option data-title="Saudi Arabia" value="Saudi Arabia">Saudi Arabia</option><option data-title="Serbia" value="Serbia">Serbia</option><option data-title="Singapore" value="Singapore">Singapore</option><option data-title="Slovakia" value="Slovakia">Slovakia</option><option data-title="Slovenia" value="Slovenia">Slovenia</option><option data-title="South Africa" value="South Africa">South Africa</option><option data-title="South Korea" value="South Korea">South Korea</option>
            <option data-title="Spain" value="Spain">Spain</option><option data-title="Sweden" value="Sweden">Sweden</option><option data-title="Switzerland" value="Switzerland">Switzerland</option><option data-title="Taiwan" value="Taiwan">Taiwan</option><option data-title="Thailand" value="Thailand">Thailand</option><option data-title="Turkey" value="Turkey">Turkey</option><option data-title="Ukraine" value="Ukraine">Ukraine</option><option data-title="United Arab Emirates" value="United Arab Emirates">United Arab Emirates</option><option data-title="United Kingdom" value="United Kingdom">United Kingdom</option><option data-title="United States" value="United States">United States</option>
            <option data-title="Vietnam" value="Vietnam">Vietnam</option></select>
								</div>
								<div class="form-group">
									<label>State/ Province/Region</label> <input name="state" type="text" placeholder="North Carolina"
										class="form-control">
								</div>
								<div class="form-group">
									<label>City</label> <input name="city" type="text" placeholder="Carrboro"
										class="form-control">
								</div>
							</div>
							<div class="col-sm-5">
							    <div class="form-group">
									<label>Address1</label> <input name="address1" type="text" placeholder="370 East Main Street"
										class="form-control">
								</div>
								<div class="form-group">
									<label>Address2</label> <input name="address2" type="text" placeholder="Apartment 101"
										class="form-control">
								</div>
								<div class="form-group">
									<label for="password">Gender</label> <a><input type="radio"
										class="form-control" name="gender" value="man">Man</a>
									<a><input type="radio" class="form-control" 
										name="gender" value="woman">Woman</a>
								</div>
								<div class="search-row" id="checkbox">
									<!-- start -->
									<div class="col-sm-3">
										<div class="checkbox">
											<label>
												<div class="icheckbox_square-yellow"
													style="position: relative;">
													<input type="checkbox" value="Media" id="Media"
														class="hobby"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
													<ins class="iCheck-helper"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
												</div> Media
											</label>
										</div>
									</div>
									<!-- end -->
									<!-- start -->
									<div class="col-sm-3">
										<div class="checkbox">
											<label>
												<div class="icheckbox_square-yellow"
													style="position: relative;">
													<input type="checkbox" value="Technology" id="Technology"
														class="hobby"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
													<ins class="iCheck-helper"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
												</div> Technology
											</label>
										</div>
									</div>
									<!-- end -->
									<!-- start -->
									<div class="col-sm-3">
										<div class="checkbox">
											<label>
												<div class="icheckbox_square-yellow"
													style="position: relative;">
													<input type="checkbox" value="Arts" id="Arts" class="hobby"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
													<ins class="iCheck-helper"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
												</div> Arts
											</label>
										</div>
									</div>
									<!-- end -->
									<!-- start -->
									<div class="col-sm-3">
										<div class="checkbox">
											<label>
												<div class="icheckbox_square-yellow"
													style="position: relative;">
													<input type="checkbox" value="Publishing" id="Publishing"
														class="hobby"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
													<ins class="iCheck-helper"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
												</div> Publishing
											</label>
										</div>
									</div>
									<!-- end -->
									<!-- start -->
									<div class="col-sm-3">
										<div class="checkbox">
											<label>
												<div class="icheckbox_square-yellow"
													style="position: relative;">
													<input type="checkbox" value="Performance" id="Performance"
														class="hobby"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
													<ins class="iCheck-helper"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
												</div> Performance
											</label>
										</div>
									</div>
									<!-- end -->
									<!-- start -->
									<div class="col-sm-3">
										<div class="checkbox">
											<label>
												<div class="icheckbox_square-yellow"
													style="position: relative;">
													<input type="checkbox" value="Food" id="Food" class="hobby"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
													<ins class="iCheck-helper"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
												</div> Food
											</label>
										</div>
									</div>
									<!-- end -->
									<!-- start -->
									<div class="col-sm-3">
										<div class="checkbox">
											<label>
												<div class="icheckbox_square-yellow"
													style="position: relative;">
													<input type="checkbox" value="Fashion" id="Fashion"
														class="hobby"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
													<ins class="iCheck-helper"
														style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
												</div> Fashion
											</label>
										</div>
										<input type="hidden" id="hobby2" name="hobby" value="">
										<!-- end -->
										<!-- start -->
										<div class="col-sm-3">
											<div class="checkbox">
												<label>
													<div class="icheckbox_square-yellow"
														style="position: relative;">
														<input type="checkbox" value="Others" id="Others"
															class="hobby"
															style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
														<ins class="iCheck-helper"
															style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
													</div> Others
												</label>
											</div>
											<!-- end -->
										</div>
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1"
									style="width: 100%; text-align: center; margin-left: unset;">
									<br>
									<button type="submit" class="btn btn-default">Register</button>
								</div>
								<br>
					</form>

				</div>
			</div>
			<!-- end row -->

		</div>
	</div>


	<!-- Footer area-->
	<div class="footer-area">

		<div class=" footer">
			<div class="container">
				<div class="row">

					<div class="col-md-3 col-sm-6 wow fadeInRight animated">
						<div class="single-footer">
							<h4>About us</h4>
							<div class="footer-title-line"></div>

							<img src="assets/img/footer-logo.png" alt="" class="wow pulse"
								data-wow-delay="1s">
							<p>Lorem ipsum dolor cum necessitatibus su quisquam
								molestias. Vel unde, blanditiis.</p>
							<ul class="footer-adress">
								<li><i class="pe-7s-map-marker strong"> </i> 9089 your
									adress her</li>
								<li><i class="pe-7s-mail strong"> </i>
									email@yourcompany.com</li>
								<li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 wow fadeInRight animated">
						<div class="single-footer">
							<h4>Quick links</h4>
							<div class="footer-title-line"></div>
							<ul class="footer-menu">
								<li><a href="properties.html">Properties</a></li>
								<li><a href="#">Services</a></li>
								<li><a href="submit-property.html">Submit property </a></li>
								<li><a href="contact.html">Contact us</a></li>
								<li><a href="faq.html">fqa</a></li>
								<li><a href="faq.html">Terms </a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 wow fadeInRight animated">
						<div class="single-footer">
							<h4>Last News</h4>
							<div class="footer-title-line"></div>
							<ul class="footer-blog">
								<li>
									<div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
										<a href="single.html"> <img
											src="assets/img/demo/small-proerty-2.jpg">
										</a> <span class="blg-date">12-12-2016</span>

									</div>
									<div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
										<h6>
											<a href="single.html">Add news functions </a>
										</h6>
										<p style="line-height: 17px; padding: 8px 2px;">Lorem
											ipsum dolor sit amet, nulla ...</p>
									</div>
								</li>

								<li>
									<div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
										<a href="single.html"> <img
											src="assets/img/demo/small-proerty-2.jpg">
										</a> <span class="blg-date">12-12-2016</span>

									</div>
									<div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
										<h6>
											<a href="single.html">Add news functions </a>
										</h6>
										<p style="line-height: 17px; padding: 8px 2px;">Lorem
											ipsum dolor sit amet, nulla ...</p>
									</div>
								</li>

								<li>
									<div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
										<a href="single.html"> <img
											src="assets/img/demo/small-proerty-2.jpg">
										</a> <span class="blg-date">12-12-2016</span>

									</div>
									<div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
										<h6>
											<a href="single.html">Add news functions </a>
										</h6>
										<p style="line-height: 17px; padding: 8px 2px;">Lorem
											ipsum dolor sit amet, nulla ...</p>
									</div>
								</li>


							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 wow fadeInRight animated">
						<div class="single-footer news-letter">
							<h4>Stay in touch</h4>
							<div class="footer-title-line"></div>
							<p>Lorem ipsum dolor sit amet, nulla suscipit similique
								quisquam molestias. Vel unde, blanditiis.</p>

							<form>
								<div class="input-group">
									<input class="form-control" type="text"
										placeholder="E-mail ... "> <span
										class="input-group-btn">
										<button class="btn btn-primary subscribe" type="button">
											<i class="pe-7s-paper-plane pe-2x"></i>
										</button>
									</span>
								</div>
								<!-- /input-group -->
							</form>

							<div class="social pull-right">
								<ul>
									<li><a class="wow fadeInUp animated"
										href="https://twitter.com/kimarotec"><i
											class="fa fa-twitter"></i></a></li>
									<li><a class="wow fadeInUp animated"
										href="https://www.facebook.com/kimarotec"
										data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
									<li><a class="wow fadeInUp animated"
										href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i
											class="fa fa-google-plus"></i></a></li>
									<li><a class="wow fadeInUp animated"
										href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i
											class="fa fa-instagram"></i></a></li>
									<li><a class="wow fadeInUp animated"
										href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i
											class="fa fa-dribbble"></i></a></li>
								</ul>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="footer-copy text-center">
			<div class="container">
				<div class="row">
					<div class="pull-left">
						<span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a>
							, All rights reserved 2016
						</span>
					</div>
					<div class="bottom-menu pull-right">
						<ul>
							<li><a class="wow fadeInUp animated" href="#"
								data-wow-delay="0.2s">Home</a></li>
							<li><a class="wow fadeInUp animated" href="#"
								data-wow-delay="0.3s">Property</a></li>
							<li><a class="wow fadeInUp animated" href="#"
								data-wow-delay="0.4s">Faq</a></li>
							<li><a class="wow fadeInUp animated" href="#"
								data-wow-delay="0.6s">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>


	<script src="assets/js/vendor/modernizr-2.6.2.min.js"></script>
	<script src="assets/js//jquery-1.10.2.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/bootstrap-select.min.js"></script>
	<script src="assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="assets/js/easypiechart.min.js"></script>
	<script src="assets/js/jquery.easypiechart.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/wow.js"></script>
	<script src="assets/js/icheck.min.js"></script>

	<script src="assets/js/price-range.js"></script>
	<script src="assets/js/jquery.bootstrap.wizard.js"
		type="text/javascript"></script>
	<script src="assets/js/jquery.validate.min.js"></script>
	<script src="assets/js/wizard.js"></script>

	<script src="assets/js/main.js"></script>


</body>
</html>