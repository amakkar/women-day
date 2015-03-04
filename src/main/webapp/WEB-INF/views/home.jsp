<!DOCTYPE HTML>
<html>
<head>
<title>Personal Kitchen</title>
<link href="resources/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' />
<link href="resources/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<link href="resources/css/theme.css" rel='stylesheet' type='text/css' />
<link href="resources/css/custom.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
</script>
<!----webfonts---->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300'
	rel='stylesheet' type='text/css'>
<!----//webfonts---->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<!--  jquery plguin -->
<!--start slider -->
<link rel="stylesheet" href="resources/css/fwslider.css" media="all">
<script src="resources/js/jquery-ui.min.js"></script>
<script src="resources/js/css3-mediaqueries.js"></script>
<script src="resources/js/fwslider.js"></script>
<!--end slider -->
<script src="resources/js/custom.js"></script>

<!-- Include the API client and Google+ client. -->
<script src="https://plus.google.com/js/client:plusone.js"></script>
</head>
<script>
	
</script>
<body>
	<jsp:directive.include file="header.html" />

	<!-- start-container -->
	<!-- Cook or sell div -->
	<div id="sticky-anchor"></div>
	<div id="sticky" class="row" style="background-color: #869D8F">
		<div class="col-md-6 col-md-offset-3" style="padding: 2% 0%"
			align="center">
			<button class='btn btn-lg main-button'>Cook Food</button>

			<button class='btn btn-lg main-button' data-toggle="modal"
				data-target="#myModal">Buy Food</button>
		</div>
	</div>
	<div class="container-fluid">
		<!-- select area modal dailog -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header theme-background-grey">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Select Your Area</h4>
					</div>
					<form class="form-horizontal" method="post" action="filter-area">
					<div class="modal-body">
						
							<div class="form-group">
								<label for="userCity" style="margin: 10px">City</label> 
								<input
									type="text" placeholder="Select your City" id="city"
									class="textbox" style="width: 35%" name="city"> <label
									for="userArea" style="margin: 10px">Area</label> <input
									type="text" placeholder="Select your Area" id="locality"
									class="textbox" style="width: 35%" name="locality">
							</div>
						
					</div>
					<div class="modal-footer">
						<input type="submit" class="btn btn-primary" value="Submit">
					</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Modal ends here -->
		<div class="row">
			<div class="col-md-12">
				<!----start-images-slider---->
				<div class="images-slider">
					<div id="fwslider">
						<div class="slider_container">
							<div class="slide">
								<img src="resources/images/home-bg2.jpg" alt="" height="600px" />
								<div class="slide_content">
									<div class="slide_content_wrap">
										<p class="description">Taste Bhi, Health Bhi!</p>
										<h4 class="title">Home Cooked Food</h4>
										<p class="description">
											<!--                                <a href="#">Cook</a>
                                 <a href="#">Eat</a> -->
										</p>
										<div class="slide-btns description"></div>
									</div>
								</div>
							</div>
							<div class="slider_container">
								<div class="slide">
									<img src="resources/images/home-bg.jpg" alt="" height="600px" />
									<div class="slide_content">
										<div class="slide_content_wrap">
											<p class="description">Taste Bhi, Health Bhi!</p>
											<h4 class="title">Home Cooked Food</h4>
											<p class="description">
												<!--                                   <a href="#">Cook</a>
                                    <a href="#">Eat</a> -->
											</p>
											<div class="slide-btns description"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="slider_container">
								<div class="slide">
									<img src="resources/images/home-bg1.jpg" alt="" height="600px" />
									<div class="slide_content">
										<div class="slide_content_wrap">
											<p class="description">Taste Bhi, Health Bhi!</p>
											<h4 class="title">Home Cooked Food</h4>
											<p class="description">
												<!--                                   <a href="#">Cook</a>
                                    <a href="#">Eat</a> -->
											</p>
											<div class="slide-btns description"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="timers"></div>
							<div class="slidePrev">
								<span> </span>
							</div>
							<div class="slideNext">
								<span> </span>
							</div>
						</div>
						<!--/slider -->
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="content">
				<div class="row">
					<div class="col-md-6 text-center">
						<h2>Sell Home Cooked Food</h2>
					</div>
					<div class="col-md-6 text-center verticalLine">
						<h2>Buy Home Cooked Food</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 text-center">
					<img src="resources\images\sell_home_cooked.jpg" width="300px" style="margin:5%">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Mauris egestas orci et blandit dictum. Interdum et malesuada
							fames ac ante ipsum primis in faucibus. Interdum et malesuada
							fames ac ante ipsum primis in faucibus. Quisque posuere diam et
							est hendrerit, eget sodales lectus tincidunt. Etiam suscipit orci
							sapien, at molestie lorem imperdiet vitae. Fusce nunc eros,
							congue non hendrerit sed, lobortis scelerisque magna. Ut in nunc
							sem. Integer bibendum enim et erat molestie, sed interdum nisl
							ultricies. In hac habitasse platea dictumst. Nullam sem diam,
							tincidunt dapibus tellus pulvinar, pulvinar tempus dui. Integer
							eu faucibus arcu. Duis adipiscing commodo ipsum dapibus
							elementum.</p>
					</div>
					<div class="col-md-6 text-center verticalLine">
					<img src="resources\images\eat_home_cooked.jpg" height="200px" style="margin:5%">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Mauris egestas orci et blandit dictum. Interdum et malesuada
							fames ac ante ipsum primis in faucibus. Interdum et malesuada
							fames ac ante ipsum primis in faucibus. Quisque posuere diam et
							est hendrerit, eget sodales lectus tincidunt. Etiam suscipit orci
							sapien, at molestie lorem imperdiet vitae. Fusce nunc eros,
							congue non hendrerit sed, lobortis scelerisque magna. Ut in nunc
							sem. Integer bibendum enim et erat molestie, sed interdum nisl
							ultricies. In hac habitasse platea dictumst. Nullam sem diam,
							tincidunt dapibus tellus pulvinar, pulvinar tempus dui. Integer
							eu faucibus arcu. Duis adipiscing commodo ipsum dapibus
							elementum.</p>
					</div>
				</div>
			</div>
		</div>

		<!-- End-container -->
		<div class="container">
			<div class="top">
				<div class="row">
					<div class="col-md-4">
						<div class="grid">
							<h2>About Us</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Mauris egestas orci et blandit dictum. Interdum et malesuada
								fames ac ante ipsum primis in faucibus Quisque posuere diam et
								est hendrerit, eget sodales lectus.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="grid">
							<h2>Our Blog</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Mauris egestas orci et blandit dictum. Interdum et malesuada
								fames ac ante ipsum primis in faucibus Quisque posuere diam et
								est hendrerit, eget sodales lectus.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="grid1 pull-left">
							<h2>Contact</h2>
							<address>
								<p>tryd online service</p>
								<p>12345 main street</p>
								<p>Newyork</p>
								<p>
									<a href="#">info#@mystore.com</a>
								</p>
								<p>555-58746-5475</p>
							</address>
						</div>
						<div class="grid2 pull-right">
							<div class="social-icons-set">
								<ul>
									<li><a class="facebook" href="#"> </a></li>
									<li><a class="twitter" href="#"> </a></li>
									<li><a class="vimeo" href="#"> </a></li>
									<div class="clear"></div>
								</ul>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<jsp:directive.include file="footer.html" />
</body>
</html>