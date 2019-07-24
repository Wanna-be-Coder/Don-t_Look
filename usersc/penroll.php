<?php

require_once '../users/init.php';
require_once $abs_us_root . $us_url_root . 'users/includes/template/prep.php';
if (!securePage($_SERVER['PHP_SELF'])) {
    die();
}
$cid = $_GET['cid'];
$sid = $_GET['sid'];
$db = DB::getInstance();

$db->query("INSERT INTO `enrollment`(`classId`,`studentId`,`approved` ) VALUES ('$cid','$sid',false)");


?>

<div id="page-wrapper">
    <div class="container">
        <div class="row">
            

    <h1>You have succesfully sent a request to register</h1>
   <a href='account.php'> <button type="button" class="btn btn-primary">Done</button> </a>

        </div>
    </div>
</div> 


