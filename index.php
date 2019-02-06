<?php

if(file_exists("install/index.php")){
	//perform redirect if installer files exist
	//this if{} block may be deleted once installed
	header("Location: install/index.php");
}

require_once 'users/init.php';
require_once $abs_us_root.$us_url_root.'users/includes/template/prep.php';
if(isset($user) && $user->isLoggedIn()){
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<title>Bromine | Homepage 1</title>
	<link rel="stylesheet" href="assets/libs/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/libs/material-design-iconic-font/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" href="assets/libs/jquery-ui/jquery-ui.min.css">
	<link rel="stylesheet" href="assets/libs/rslides/responsiveslides.css">
	<link rel="stylesheet" href="assets/libs/slick/slick.css">
	<link rel="stylesheet" href="assets/css/main.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600%7CMontserrat:300,400,600%7CRaleway:300,400,400i,600%7COpen+Sans:400,400i%7CVarela+Round">
</head>

<body id="index1" class="homepage">

<header>
	<ul class="pull-right lang">
		<li class="selected"><a href="#">EN</a></li>
		<li><a href="#">DE</a></li>
		<li><a href="#">FR</a></li>
		<li><a href="#">PO</a></li>
	</ul>
	<div class="container">
	
	
			
			
 			</div>
			<!-- <h1 class="logo"><a href="#"><img id="backg" src="assets/images/backg.jpg" alt="Logo"></a></h1> -->
		</div>
		<div id="fimg" class="row">
			<div class="col-md-8 col-md-offset-2 text-center">
				<p class="pretitle">WELCOME TO</p>
				<h2>i-School</h2>
				<p>An Online Learning Portal for the students</p>
				
			</div>
		</div>
	</div>
	<ul class="rslides-header">	
		<li><img src="assets/images/slide-1.jpg" class="resp-img" alt="Slide"></li>
		<li><img src="assets/images/slide-1.jpg" class="resp-img" alt="Slide"></li>
		<li><img src="assets/images/slide-1.jpg" class="resp-img" alt="Slide"></li>
	</ul>
	<a href="#" class="scrolldown"><span></span></a>	
</header>





<main>
	<div class="features-carousel">
		<div class="slick-features">
			<div class="feature">
				<img src="assets/images/feature-3.png" alt="Feature">
				<h6>Online Classes</h6>
				<p>Students will be able to attend online classes here for their registered courses.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="assets/images/feature-5.png" alt="Feature">
				<h6>Guidance for guardians</h6>
				<p>A guardian will also be able to take guidance from i-school for supporting junior class students.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="assets/images/feature-2.png" alt="Feature">
				<h6>Support videos of all classes</h6>
				<p>Support materials that are shown in class videos will all be kept for later viewing.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="assets/images/feature-4.png" alt="Feature">
				<h6>Assesment</h6>
				<p>regular assesment of the course work will be taken.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="assets/images/feature-4.png" alt="Feature">
				<h6>Tutors providing quality</h6>
				<p>Experienced tutors will take classes for better understanding of the course work.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="assets/images/feature-2.png" alt="Feature">
				<h6>Watch it from everywhere</h6>
				<p>The students can attend classes from anywhere as per their need.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="assets/images/feature-3.png" alt="Feature">
				<h6>Chat</h6>
				<p>Students will be able to chat amongst themselves for any study purpose.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
		</div>
	</div>

	<div class="container categories text-center">	
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
				<h3>Explore i-School Platform</h3>
				<p>
					Explore some of the services that i-School provides.
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-sm-6 category">
				<img src="assets/images/1.png" alt="Category">
				<h5>Elementary Education Material</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>20</span>TUTORS</p>
					<p class="pull-left"><span>400</span>TUTORIALS</p>
					<h5>Elementary Education Material</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="assets/images/1.png" alt="Category">
				<h5>Primary Education Material</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>30</span>TUTORS</p>
					<p class="pull-left"><span>418</span>TUTORIALS</p>
					<h5>Primary Education Material</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="assets/images/1.png" alt="Category">
				<h5>Higher Education Material</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>30</span>TUTORS</p>
					<p class="pull-left"><span>318</span>TUTORIALS</p>
					<h5>Higher Education Material</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="assets/images/5.png" alt="Category">
				<h5>Business Education material</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>30</span>TUTORS</p>
					<p class="pull-left"><span>500+</span>TUTORIALS</p>
					<h5>Business Education material</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-sm-6 category">
				<img src="assets/images/6.png" alt="Category">
				<h5>Engineering Education Material</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>40</span>TUTORS</p>
					<p class="pull-left"><span>288+</span>TUTORIALS</p>
					<h5>Engineering Education Material</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="assets/images/3.png" alt="Category">
				<h5>ARTS AND CRAFTS</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>15</span>TUTORS</p>
					<p class="pull-left"><span>200+</span>TUTORIALS</p>
					<h5>ARTS AND CRAFTS</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="assets/images/7.png" alt="Category">
				<h5>Science &amp; Technology</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>45</span>TUTORS</p>
					<p class="pull-left"><span>400+</span>TUTORIALS</p>
					<h5>Science &amp; Technology</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="assets/images/8.png" alt="Category">
				<h5>Languages &amp; Presentation</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>25</span>TUTORS</p>
					<p class="pull-left"><span>300+</span>TUTORIALS</p>
					<h5>Languages &amp; Presentation</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
		</div>
	</div>

	<div class="container success">
		<div class="row">	
			<div class="col-sm-10 col-sm-offset-1 text-center">
				<h3>Get to your success with i-School</h3>
				<p>
					i-School provides help to the students with its extensive course material for better understanding the course work and help theme achieve excellence in their desired field of work. 
				</p>
			</div>
		</div>
		<div class="horizontal-divider">
			<div class="divider"></div>
			<div class="row">
				<div class="col-sm-4 step">
					<a href="#">1</a>
					<h6>Enroll yourself for success in your studies</h6>
					<p>
						Enrolling yourself will open you up to a more enriched environment and let you explore more opportunities for achieving success.
					</p>
				</div>
				<div class="col-sm-4 step">
					<a href="#">2</a>
					<h6>Choose What To Study</h6>
					<p>
						Choose what you want to learn about next from our vast array of courses available and get to learning something new.
					</p>
				</div>
				<div class="col-sm-4 step">
					<a href="#">3</a>
					<h6>Enjoy attending class &amp; watching tutorials</h6>
					<p>
						Enjoy the freedom to attend online classes and see all the class materials whenever and wherever you want.
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid signup text-center">
		<div class="row">
			<div id="ole" class="col-sm-12">
				<p>ONLINE LEARNING FROM EVERYWHERE</p>
				<h4>Are you ready to start learning?</h4>
				<a href="users/join.php" class="bluebutton">SIGN UP TODAY</a>
			</div>
		</div>
	</div>



</main>

<footer>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-6 col-xs-12">
				<h1 class="logo"><a href="#"><img src="users/images/logo.png" alt="Logo"></a></h1>
				<ul class="contactinfo">
					<li class="address"><strong>Address:</strong> 	
408/1, Kuratoli, Khilkhet, Dhaka 1229, Bangladesh </li>
					<li class="phone"><strong>Phone:</strong>  +49 123 456 789</li>
					<li class="email"><strong>E-mail:</strong> saminsharar2@gmail.com</li>
				</ul>
				<ul class="social">
					<li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li><li>
					<a href="#"><i class="zmdi zmdi-twitter"></i></a></li><li>
					<a href="#"><i class="zmdi zmdi-google-old"></i></a></li><li>
					<a href="#"><i class="zmdi zmdi-pinterest"></i></a></li><li>
					<a href="#"><i class="zmdi zmdi-instagram"></i></a></li><li>
					<a href="#"><i class="zmdi zmdi-rss"></i></a></li>
				</ul>
			</div>
			<div class="col-md-2 col-sm-6 col-xs-12">
				<h6>GET HELP</h6>
				<ul class="information">
					<li><a href="#">Help and FAQ</a></li>
					<li><a href="#">Video Courses</a></li>
					<li><a href="#">Online Booking</a></li>
					<li><a href="#">Online Support</a></li>
				</ul>
			</div>
			<div class="col-md-2 col-sm-6 col-xs-12">
				<h6>INFORMATION</h6>
				<ul class="information">
					<li><a href="#">About us</a></li>
					<li><a href="#">Our services</a></li>
					<li><a href="#">Order history</a></li>
					<li><a href="#">Information</a></li>
				</ul>
			</div>
			<div class="col-md-2 col-sm-6 col-xs-12">
				<h6>MY ACCOUNT</h6>
				<ul class="information">
					<li><a href="#">Plans &amp; Pricings</a></li>
					<li><a href="#">Favorites</a></li>
					<li><a href="#">Personal info</a></li>
					<li><a href="#">Login</a></li>
				</ul>
			</div>
			<div class="col-md-2 col-sm-12 col-xs-12">
				<h6>QUICKLINKS</h6>
				<ul class="information">
					<li><a href="#">Video Training</a></li>
					<li><a href="#">Online Courses</a></li>
					<li><a href="#">Become a teacher</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</div>
		</div>
		<div class="row botbar">
			<div class="col-sm-5">
				<ul class="pull-right payments">
					<li><a href="#"><img src="http://placehold.it/38x12" alt="Payment"></a></li>
					<li><a href="#"><img src="http://placehold.it/27x17" alt="Payment"></a></li>
					<li><a href="#"><img src="http://placehold.it/20x18" alt="Payment"></a></li>
					<li><a href="#"><img src="http://placehold.it/16x16" alt="Payment"></a></li>
					<li><a href="#"><img src="http://placehold.it/25x12" alt="Payment"></a></li>
				</ul>
			</div>
		</div>
	</div>
	
</footer>

<script src="assets/libs/jquery/jquery.js"></script>
<script src="assets/libs/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/libs/rslides/responsiveslides.min.js"></script>
<script src="assets/libs/jquery-ui/jquery-ui.min.js"></script>
<script src="assets/libs/slick/slick.min.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
<?php require_once $abs_us_root . $us_url_root . 'usersc/templates/' . $settings->template . '/footer.php'; //custom template footer ?>