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
	
<a href="../users/user_settings.php" class="btn btn-info btn-block">Write Blogs</a>
<a href="../users/user_settings.php" class="btn btn-info btn-block">Update News</a>
	<?php	
	}
	?>
	
</div>