<?php
// This is a user-facing page
/*
UserSpice 4
An Open Source PHP User Management System
by the UserSpice Team at http://UserSpice.com

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
require_once '../users/init.php';?>
<link rel="stylesheet" href="css/custom.css">
<?php 
// dump($_SESSION);
// if($user->isLoggedIn()){
// 	dump("yes");
// }else{
// 	dump("no");
// }
// dump($user->data());
if (!securePage($_SERVER['PHP_SELF'])){die();}
require_once $abs_us_root.$us_url_root.'users/includes/template/prep.php';

if(!empty($_POST['uncloak'])){
	logger($user->data()->id,"Cloaking","Attempting Uncloak");
	if(isset($_SESSION['cloak_to'])){
		$to = $_SESSION['cloak_to'];
		$from = $_SESSION['cloak_from'];
		unset($_SESSION['cloak_to']);
		$_SESSION['user'] = $_SESSION['cloak_from'];
		unset($_SESSION['cloak_from']);
		logger($from,"Cloaking","uncloaked from ".$to);
		Redirect::to($us_url_root.'users/admin.php?view=users&err=You+are+now+you!');
		}else{
			Redirect::to($us_url_root.'users/logout.php?err=Something+went+wrong.+Please+login+again');
		}
}


//dealing with if the user is logged in
if($user->isLoggedIn() || !$user->isLoggedIn() && !checkMenu(2,$user->data()->id)){
	if (($settings->site_offline==1) && (!in_array($user->data()->id, $master_account)) && ($currentPage != 'login.php') && ($currentPage != 'maintenance.php')){
		$user->logout();
		logger($user->data()->id,"Errors","Sending to Maint");
		Redirect::to($us_url_root.'users/maintenance.php');
	}
}
$grav = get_gravatar(strtolower(trim($user->data()->email)));
$get_info_id = $user->data()->id;
// $groupname = ucfirst($loggedInUser->title);
$raw = date_parse($user->data()->join_date);
$signupdate = $raw['month']."/".$raw['day']."/".$raw['year'];
$userdetails = fetchUserDetails(NULL, NULL, $get_info_id); //Fetch user details
?>

<div id="page-wrapper">
<div class="container">
<div class="well">
<div class="row">
	<div class="col-sm-12 col-md-2">

		<p><img src="<?=$grav; ?>" class="img-thumbnail" alt="Generic placeholder thumbnail"></p>
		<p><a href="../users/user_settings.php" class="btn btn-primary">Edit Account Info</a></p>
		<?php
		if($settings->twofa == 1){
		$twoQ = $db->query("select twoKey from users where id = ? and twoEnabled = 0", [$userdetails->id]);
		if($twoQ->count() > 0){ ?>
			<p><a class="btn btn-primary " href="../users/enable2fa.php" role="button">Manage 2 Factor Auth</a></p>
	<?php	} else { ?>
			<p><a class="btn btn-primary " href="../users/manage2fa.php" role="button">Manage 2 Factor Auth</a></p>
	<?php }} ?>
	<?php if($settings->session_manager==1) {?><p><a class="btn btn-primary " href="../users/manage_sessions.php" role="button">Manage Sessions</a></p><?php } ?>
	<?php if(isset($_SESSION['cloak_to'])){ ?>
		<form class="" action="account.php" method="post">
			<input type="submit" name="uncloak" value="Uncloak!" class='btn btn-danger'>
		</form><br>
		<?php }
		?>
	</div>
	<div class="col-sm-12 col-md-10">
		<h1><?=echousername($user->data()->id)?></h1>
		<p><?=ucfirst($user->data()->fname)." ".ucfirst($user->data()->lname)?> / <?=echouser($user->data()->id)?></p>
		<p>Member Since:<?=$signupdate?></p>
		<p>Member Type:<?=$user->data()->user_type?></p>
		<p>Number of Logins: <?=$user->data()->logins?></p>
		<?php if($settings->session_manager==1) {?><p>Number of Active Sessions: <?=UserSessionCount()?> <sup><a class="nounderline" data-toggle="tooltip" title="Click the Manage Sessions button in the left sidebar for more information.">?</a></sup></p><?php } ?>
		<p>This is the private account page for your users. It can be whatever you want it to be; This code serves as a guide on how to use some of the built-in UserSpice functionality. </p>
	</div>
</div>
</div>



<div>
	<?php $db->query("SELECT * FROM `blog`");
		foreach ($db->results() as $record){
		?>
		<div>
		<h3>	<?= $record->title;?> </h3>
		<h4><?= $record->timestamp; ?></h4>
		<p><?= $record->content; ?></p>
		</div>
	
	<?php	
	}
	?>
</div>
<div class="double_column">
	<div class="left">

		<div class="left1">Courses Available
		<?php 
	$db->query("SELECT * FROM `courses`");
	foreach ($db->results() as $record){
		

	?>
		<div class="left2"><a href='courseinfo.php?id=<?= $record->id ?>'><?= $record->name; ?></a></div><?php }?></div><br>
		<div class="left1">
		Class Available
		<?php 
	$db->query("SELECT * FROM `class`");
	foreach ($db->results() as $record){
		

	?><div class="left2"><?= $record->name; ?></div><?php }?></div><br>
		<div class="left1">My class<div class="left2">data</div></div><br>
    </div>
	<div class="right">
	    <div class="left1">My class<div class="left2">data</div></div><br>
		<div class="left1">My class<div class="left2">data</div></div><br>
		<div class="left1">My class<div class="left2">data</div></div><br>
	</div>

	

</div>





<div>
	<?php 
	$id=$user->data()->id;
	$isAdmin=false;
	$db = DB::getInstance();
	$db->query("SELECT `permission_id` FROM `user_permission_matches` WHERE `user_id`='$id'");
	foreach ($db->results() as $record){
		if($record->permission_id ==2){
			$isAdmin=true;
		}
	}
	
	if($isAdmin==true){
		?>
	
<a href="blog.php" class="btn btn-info btn-block">Write Blogs</a>
<a href="news.php" class="btn btn-info btn-block">Update News</a>
<a href="cclass.php" class="btn btn-info btn-block">Make Class</a>
<a href="add_course.php" class="btn btn-info btn-block">Add Courses</a>
<a href="teacherview.php" class="btn btn-info btn-block">Your Class</a>
	<?php	
	}
	?>
	
</div>




<br>
<button type="button" class="btn btn-primary">SYSTEM Admin</button><br><br>
<a href="viewclasslink.php"><button type="button" class="btn btn-primary">Attend Class</button><br><br></a>
<button type="button" class="btn btn-primary">Find Members</button>


</div> <!-- /container -->

</div> <!-- /#page-wrapper -->

<!-- footers -->

<?php require_once $abs_us_root . $us_url_root . 'usersc/templates/' . $settings->template . '/footer.php'; //custom template footer ?>

<?php unset($_SESSION['last_confirm']); ?>
