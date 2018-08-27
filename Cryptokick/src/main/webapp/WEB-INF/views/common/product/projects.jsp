<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>GARO ESTATE | Properties page</title>
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
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
</head>
<style>
#favorite {
	right: unset;
}

.label-primary.label-fill, .progress-bar, .progress-bar-primary {
    background-color: #fdc600;
}

.text-field {
    -moz-box-sizing: border-box;
    border: 1px solid #EEEEEE;
    font-family: "Source Sans Pro",Arial,sans-serif;
    font-size: 0.73684em;
    font-weight: 600;
    height: 37px;
    margin: 0;
    padding: 5px;
    width: 100%;
}
.autocomplete-suggestion {
    overflow: hidden;
    padding: 2px 5px;
    white-space: nowrap;
    background-color: white;
    border: 1px solid;
}
.autocomplete-suggestions strong {
    color: #3399FF;
    font-weight: normal;
}
.autocomplete-selected{
  background:#F0F0F0;
  
}

/* #autocomplete,.close-icon{
	position: relative;
}
.close-icon {
	border:1px solid transparent;
	vertical-align: middle;
}
.close-icon:after {
	content: "X";
	display: block;
	width: 15px;
	height: 15px;
	position: absolute;
	z-index:1;
	right: 35px;
	top: 0;
	bottom: 0;
	margin: auto;
	padding: 2px;
	text-align: center;
	color: black;
	font-weight: normal;
	font-size: 12px;
	cursor: pointer;
}
 */
 
 </style>

	  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.devbridge-autocomplete/1.2.24/jquery.autocomplete.min.js"></script>
<script type="text/javascript">

$(function(){
	$(window).scroll(scrollDown);
	
	$("#autocomplete").val('${search}');
	
	var category = '${category}';
	 $('#category').find('option').each( function() {
	      var $this = $(this);
	      if ($this.text() == category) {
	         $this.attr('selected','selected');
	      }
	 });
	
	var sort = '${sort}';
	 $('#sort').find('option').each( function() {
	      var $this = $(this);
	      if ($this.text() == sort) {
	         $this.attr('selected','selected');
	      }
	 });
	 
	/* 
	$('#autocomplete').autocomplete({
		delimiter: /(,|;)\s/,
		lookup: 'Andorra,Azerbaijan,Bahamas,Bahrain,Bangladesh,Barbados,Belarus,Belgium,Belize,Benin,Bhutan,Bolivia,Bosnia Herzegovina,Botswana,Brazil,Brunei,Bulgaria,Burkina, Burundi,Cambodia,Cameroon,Canada,Cape Verde,Central African Rep,Chad,Chile,China,Colombia,Comoros,Congo,Congo {Democratic Rep},Costa Rica,Croatia,Cuba,Cyprus,Czech Republic,Denmark,Djibouti,Dominica,Dominican Republic,East Timor,Ecuador,Egypt,El Salvador,Equatorial Guinea,Eritrea,Estonia,Ethiopia,Fiji,Finland,France,Gabon,Gambia,Georgia,Germany,Ghana,Greece,Grenada,Guatemala,Guinea,Guinea-Bissau,Guyana,Haiti,Honduras,Hungary,Iceland,India,Indonesia,Iran,Iraq,Ireland {Republic},Israel,Italy,Ivory Coast,Jamaica,Japan,Jordan,Kazakhstan,Kenya,Kiribati,Korea North,Korea South,Kosovo,Kuwait,Kyrgyzstan,Laos,Latvia,Lebanon,Lesotho,Liberia,Libya,Liechtenstein,Lithuania,Luxembourg,Macedonia,Madagascar,Malawi,Malaysia,Maldives,Mali,Malta,Marshall Islands,Mauritania,Mauritius,Mexico,Micronesia,Moldova,Monaco,Mongolia,Montenegro,Morocco,Mozambique,Myanmar, {Burma},Namibia,Nauru,Nepal,Netherlands,New Zealand,Nicaragua,Niger,Nigeria,Norway,Oman,Pakistan,Palau,Panama,Papua New Guinea,Paraguay,Peru,Philippines,Poland,Portugal,Qatar,Romania,Russian Federation,Rwanda,St Kitts & Nevis,St Lucia,Saint Vincent & the Grenadines,Samoa,San Marino,Sao Tome & Principe,Saudi Arabia,Senegal,Serbia,Seychelles,Sierra Leone,Singapore,Slovakia,Slovenia,Solomon Islands,Somalia,South Africa,South Sudan,Spain,Sri Lanka,Sudan,Suriname,Swaziland,Sweden,Switzerland,Syria,Taiwan,Tajikistan,Tanzania,Thailand,Togo,Tonga,Trinidad & Tobago,Tunisia,Turkey,Turkmenistan,Tuvalu,Uganda,Ukraine,United Arab Emirates,United Kingdom,United States,Uruguay,Uzbekistan,Vanuatu,Vatican City,Venezuela,Vietnam,Yemen,Zambia,Zimbabwe'.split(',')
		}); 
	}); 
	*/
});

function scrollDown(){
	if($(window).scrollTop() == $(document).height() - $(window).height()) {
    	
    	$.ajax({
   			method : "get",
   			url : "scrolldown",
   			data : "product_category=${category}&product_content=${sort}&product_name=${search}",
   			success : output,
   			error : function(resp){
   				alert(JSON.stringify(resp));
   			}
   		});
    }
}

function output(resp){
			var text = "";
		$.each(resp, function(index, product){
			text += '<div id="newdiv" class="col-sm-6 col-md-4 p0"><div class="box-two proerty-item"><div class="item-thumb"><div class="clearfix"><div class="lSSlideWrapper usingCss"';
			text += 'style="transition-duration: 500ms; transition-timing-function: ease;"><a href="detailedProduct"><img src="assets/img/property-1/property1.jpg"></a></div></div></div>';
			text += '<div class="item-entry overflow"><h5><a href="detailedProduct">'+product.product_name+'</a></h5><div class="dot-hr"></div><span class="pull-left"><b>';
			text += product.product_goaldate+'</b>  </span> <span class="proerty-price pull-right"> $'+product.product_nowfundprice+'</span><p style="display: none;">';
			text += product.product_content+'</p><div class="progress-card"><div class="d-flex justify-content-between mb-1"><div class="progress mb-2" style="height: 7px;">';
			text += '<div class="progress-bar bg-success" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0"';
			text += 'aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="50" data-original-title="50%"></div></div></div></div></div></div></div>';
		});
			$("#list-type").append(text).hide().fadeIn('slow');
};

</script>
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
						onclick=" window.open('register.html')" data-wow-delay="0.4s">Login</button>
					<button class="navbar-btn nav-button wow fadeInRight"
						onclick=" window.open('submit-property.html')"
						data-wow-delay="0.5s">Submit</button>
				</div>
				<ul class="main-nav nav navbar-nav navbar-right">
					<li class="dropdown ymm-sw " data-wow-delay="0.1s"><a
						href="index.html" class="dropdown-toggle active"
						data-toggle="dropdown" data-hover="dropdown" data-delay="200">Home
							<b class="caret"></b>
					</a>
					</li>

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
	<!-- End page header -->

	


	<!-- property area -->
	<div class="properties-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div class="col-md-9 padding-top-40 properties-page">
					<div class="section clear">
					
					<h1 class="page-title"style="color: black;display: inline;">${category}</h1>
						<div class="col-xs-2 layout-switcher" style="float: right;">
							<a class="layout-list" href="javascript:void(0);"> <i
								class="fa fa-th-list"></i>
							</a> <a class="layout-grid active" href="javascript:void(0);"> <i
								class="fa fa-th"></i>
							</a>
						</div>
						<!--/ .layout-switcher-->
					</div>

					<div class="section clear">
						<div id="list-type" class="proerty-th">


						<c:forEach items="${pList}" var="product">
							<div class="col-sm-6 col-md-4 p0">
								<div class="box-two proerty-item">
									<div class="item-thumb">
										<div class="clearfix">
<!-- 											<div class="favorite-and-print" id="favorite">
												<a class="add-to-fav" href="#login-modal" data-toggle="modal"> 
												<i class="fa fa-star-o"></i>
												</a>
											</div>
 -->											<div class="lSSlideWrapper usingCss"
												style="transition-duration: 500ms; transition-timing-function: ease;">
												<a href="detailedProduct"><img src="assets/img/property-1/property1.jpg"></a>
											</div>
										</div>
									</div>
									<div class="item-entry overflow">
										<h5>
											<a href="detailedProduct"> ${product.product_name} </a>
										</h5>
										<div class="dot-hr"></div>
										<span class="pull-left"><b> ${product.product_goaldate}</b>  </span> <span
											class="proerty-price pull-right"> $${product.product_nowfundprice}</span>
										<p style="display: none;">${product.product_content }</p>
										
										<div class="progress-card">
											<div class="d-flex justify-content-between mb-1">
												<div class="progress mb-2" style="height: 7px;">
													<div class="progress-bar bg-success" role="progressbar"
														style="width: 50%" aria-valuenow="50" aria-valuemin="0"
														aria-valuemax="100" data-toggle="tooltip" data-placement="top"
														title="50" data-original-title="50%"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>

							
						</div>
					</div>
					<div class="section">
						<div class="pull-right">
						</div>
					</div>
				</div>
				<div class="col-md-3 pl0 padding-top-40">
					<div class="blog-asside-right pl0">
						<div
							class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">Smart search</h3>
							</div>
							<div class="panel-body search-widget">
							<form action="Projects" method="get">
									<fieldset>
										<div class="row">
											<div class="col-xs-12">
												<input type="text" class="form-control"
													placeholder="Key word" id="autocomplete" name="product_name" value=>
<!-- 													<button class="close-icon" style="position: absolute;" type="reset"></button>
 -->											</div>
										</div>
									</fieldset>

									<fieldset>
										<div class="row">
											<div class="col-xs-6">
													<!-- data-live-search="true" data-live-search-style="begins" -->
												<select id="category" class="selectpicker show-tick form-control" name="product_category">
													<option>All</option>
													<option>Media</option>
													<option>Technology</option>
													<option>Arts</option>
													<option>Publishing</option>
													<option>Performance</option>
													<option>Food</option>
													<option>Fashion</option>
													<option>Others</option>
												</select>
											</div>
											<div class="col-xs-6">
												<select id="sort" name="product_content"
													class="selectpicker">
													<option>Newest</option>
													<option>Popularity</option>
													<option>End Date</option>
													<option>Most Funded</option>
												</select>
											</div>
										</div>
									</fieldset>




									<fieldset>
										<div class="row">
											<div class="col-xs-12">
												<input class="button btn largesearch-btn" value="Search"
													type="submit">
											</div>
										</div>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
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
	

	

	<script src="assets/js/modernizr-2.6.2.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/bootstrap-select.min.js"></script>
	<script src="assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="assets/js/easypiechart.min.js"></script>
	<script src="assets/js/jquery.easypiechart.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/wow.js"></script>
	<script src="assets/js/icheck.min.js"></script>
	<script src="assets/js/price-range.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>