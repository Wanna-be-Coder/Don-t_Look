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





<header>
	<ul class="pull-right lang">
		<li class="selected"><a href="#">EN</a></li>
		<li><a href="#">DE</a></li>
		<li><a href="#">FR</a></li>
		<li><a href="#">PO</a></li>
	</ul>
	<div class="container">
		
		<div class="row">
			<div class="col-md-8 col-md-offset-2 text-center">
				<p class="pretitle">ONLINE VIDEO TRAININGS</p>
				<h2>BOOST YOUR SKILLS</h2>
				<p>Learn something new every day and get inspired by the diversity of online learning</p>
				<a href="#" class="bluebutton">SIGN UP AND GET A 7-DAYS FREE TRIAL</a>
			</div>
		</div>
	</div>
	<ul class="rslides-header">	
		<li><img src="http://placehold.it/1920x929" class="resp-img" alt="Slide"></li>
		<li><img src="http://placehold.it/1920x929" class="resp-img" alt="Slide"></li>
		<li><img src="http://placehold.it/1920x929" class="resp-img" alt="Slide"></li>
	</ul>
	<a href="#" class="scrolldown"><span></span></a>	
</header>





<main>
	<div class="features-carousel">
		<div class="slick-features">
			<div class="feature">
				<img src="http://placehold.it/61x61" alt="Feature">
				<h6>Online trainings from experts</h6>
				<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="http://placehold.it/61x61" alt="Feature">
				<h6>Watch it from everywhere</h6>
				<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="http://placehold.it/61x61" alt="Feature">
				<h6>Support videos on all devices</h6>
				<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat vel illum dolore eu feugiat nulla facilisi.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="http://placehold.it/61x61" alt="Feature">
				<h6>Learn new skills daily</h6>
				<p>Iconsetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="http://placehold.it/61x61" alt="Feature">
				<h6>Occasional video updates</h6>
				<p>Let clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="http://placehold.it/61x61" alt="Feature">
				<h6>Watch it from everywhere</h6>
				<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="feature">
				<img src="http://placehold.it/61x61" alt="Feature">
				<h6>Support videos on all devices</h6>
				<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat vel illum dolore eu feugiat nulla facilisi.</p>
				<a href="#" class="readmore"><span>READ MORE&nbsp;&nbsp;&nbsp;</span><i class="zmdi zmdi-long-arrow-right"></i></a>
			</div>
		</div>
	</div>

	<div class="container categories text-center">	
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
				<h3>Explore Bromine Video Platform</h3>
				<p>
					At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, 
					no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, coniam voluptua.
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-sm-6 category">
				<img src="http://placehold.it/55x63" alt="Category">
				<h5>Business</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>93</span>TRAINERS</p>
					<p class="pull-left"><span>418</span>TUTORIALS</p>
					<h5>Business</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="http://placehold.it/63x63" alt="Category">
				<h5>Video Production &amp; Animation</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>93</span>TRAINERS</p>
					<p class="pull-left"><span>418</span>TUTORIALS</p>
					<h5>Video Production &amp; Animation</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="http://placehold.it/61x63" alt="Category">
				<h5>Web Design &amp; Illustration</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>93</span>TRAINERS</p>
					<p class="pull-left"><span>418</span>TUTORIALS</p>
					<h5>Webdesign &amp; Illustration</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="http://placehold.it/63x57" alt="Category">
				<h5>Photography</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>93</span>TRAINERS</p>
					<p class="pull-left"><span>418</span>TUTORIALS</p>
					<h5>Photography</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-sm-6 category">
				<img src="http://placehold.it/63x63" alt="Category">
				<h5>Marketing &amp; CEO</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>93</span>TRAINERS</p>
					<p class="pull-left"><span>418</span>TUTORIALS</p>
					<h5>Marketing &amp; CEO</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="http://placehold.it/63x63" alt="Category">
				<h5>Development</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>93</span>TRAINERS</p>
					<p class="pull-left"><span>418</span>TUTORIALS</p>
					<h5>Development</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="http://placehold.it/63x63" alt="Category">
				<h5>Science &amp; Technology</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>93</span>TRAINERS</p>
					<p class="pull-left"><span>418</span>TUTORIALS</p>
					<h5>Science &amp; Technology</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 category">
				<img src="http://placehold.it/63x63" alt="Category">
				<h5>Languages &amp; Presentation</h5>
				<div class="overlay text-center">
					<p class="pull-right"><span>93</span>TRAINERS</p>
					<p class="pull-left"><span>418</span>TUTORIALS</p>
					<h5>Languages &amp; Presentation</h5>
					<a href="#">CHECK VIDEOS</a>
				</div>
			</div>
		</div>
	</div>

	<div class="container success">
		<div class="row">	
			<div class="col-sm-10 col-sm-offset-1 text-center">
				<h3>Get to your success in 3 simple steps</h3>
				<p>
					At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, 
					no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, coniam voluptua.
				</p>
			</div>
		</div>
		<div class="horizontal-divider">
			<div class="divider"></div>
			<div class="row">
				<div class="col-sm-4 step">
					<a href="#">1</a>
					<h6>Take a free tour and check our videos</h6>
					<p>
						Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit 
						lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor 
						in hendrerit in vulputate velit esse molestie consequat.
					</p>
				</div>
				<div class="col-sm-4 step">
					<a href="#">2</a>
					<h6>Choose your plan</h6>
					<p>
						Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, 
						vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim 
						qui blandit praesent luptatum zzril delenit.
					</p>
				</div>
				<div class="col-sm-4 step">
					<a href="#">3</a>
					<h6>Enjoy watching tutorials</h6>
					<p>
						Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit 
						lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor 
						in hendrerit in vulputate velit esse molestie consequat.
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid signup text-center">
		<div class="row">
			<div class="col-sm-12">
				<p>ONLINE LEARNING FROM EVERYWHERE</p>
				<h4>Are you ready to start learning?</h4>
				<a href="#" class="bluebutton">SIGN UP TODAY</a>
			</div>
		</div>
	</div>

	<div class="container popular">
		<div class="row">
			<div class="col-sm-12 text-center">
				<h3>Popular online tutorials</h3>
				<div class="scrolldown-placeholder">
					<a href="#" class="popular-scrolldown"><i class="zmdi zmdi-chevron-down zmdi-hc-lg"></i></a>
				</div>
			</div>
		</div>
		<div class="row tutorials">
			<div class="col-md-4">
				<div class="tutorial">
					<img src="http://placehold.it/370x220" class="resp-img" alt="Tutorial">
					<div class="tutorial-details">
						<h6>How to become an UX Designer</h6>
						<p><span class="lessons"><i class="zmdi zmdi-assignment"></i>12 LESSONS</span><span class="duration"><i class="zmdi zmdi-time"></i>3:15h</span></p>
						<p class="abs">At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.</p>
						<a href="#" class="greybutton">VIEW COURSE</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="tutorial">
					<img src="http://placehold.it/370x220" class="resp-img" alt="Tutorial">
					<div class="tutorial-details">
						<h6>8 steps to your own startup</h6>
						<p><span class="lessons"><i class="zmdi zmdi-assignment"></i>8 LESSONS</span><span class="duration"><i class="zmdi zmdi-time"></i>4:32h</span></p>
						<p class="abs">At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.</p>
						<a href="#" class="greybutton">VIEW COURSE</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="tutorial">
					<img src="http://placehold.it/370x220" class="resp-img" alt="Tutorial">
					<div class="tutorial-details">
						<h6>Business communication for marketers</h6>
						<p><span class="lessons"><i class="zmdi zmdi-assignment"></i>15 LESSONS</span><span class="duration"><i class="zmdi zmdi-time"></i>6:04h</span></p>
						<p class="abs">At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.</p>
						<a href="#" class="greybutton">VIEW COURSE</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container testimonials">
		<div class="row">	
			<div class="col-sm-10 col-sm-offset-1 text-center">
				<h3>What satisfied users say</h3>
				<p>
					Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie 
					consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan.
				</p>
			</div>
		</div>
		<div class="row text-center">
			<div class="col-sm-12">	
				<div class="slick-testimonials">
					<div class="testimonial">
						<img src="http://placehold.it/79x79" alt="Avatar">
						<p class="name">Martin Jonson<em>Design &amp; Dev, Inc.</em></p>
						<em>
							“ I think it's fair to say that personal computers have become the most empowering tool we've ever created. 
							They're tools of communication, they're tools of creativity, and they can be shaped by their user. ”
						</em>
					</div>
					<div class="testimonial">
						<img src="http://placehold.it/79x79" alt="Avatar">
						<p class="name">Martin Jonson<em>Design &amp; Dev, Inc.</em></p>
						<em>
							“ I think it's fair to say that personal computers have become the most empowering tool we've ever created. 
							They're tools of communication, they're tools of creativity, and they can be shaped by their user. ”
						</em>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="whyus">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h3>Why to choose us</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8 col-sm-12">
					<h6>More than 1000+ video tutorials in our library</h6>
					<p>
						Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis 
						nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in 
						vulputate velit esse molestie consequat.
					</p>
				</div>
				<div class="col-md-8 col-sm-12">
					<h6>Learn form our professional and educated teachers </h6>
					<p>
						Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis 
						nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in 
						vulputate velit esse molestie consequat.
					</p>
				</div>
				<div class="col-md-8 col-sm-12">
					<h6>Become an expert in your business</h6>
					<p>
						Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis 
						nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in 
						vulputate velit esse molestie consequat.
					</p>
				</div>
			</div>
		</div>
	</div>

</main>

<footer>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-6 col-xs-12">
				<h1 class="logo"><a href="index.html"><img src="http://placehold.it/112x28" alt="Logo"></a></h1>
				<ul class="contactinfo">
					<li class="address"><strong>Address:</strong> 127 Sith Avenue, 54571 New York City </li>
					<li class="phone"><strong>Phone:</strong>  +49 123 456 789</li>
					<li class="email"><strong>E-mail:</strong>  info@bromine-theme.com</li>
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
			<div class="col-sm-7">
				<p class="copyright">Copyright 2017 &copy; Bromine - Video Learning Platform  | All Rights Reserved</p>
			</div>
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
