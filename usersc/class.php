<?php

require_once '../users/init.php';
require_once $abs_us_root . $us_url_root . 'users/includes/template/prep.php';
if (!securePage($_SERVER['PHP_SELF'])) {
    die();
}
$id = $_GET['id'];
$db = DB::getInstance();

$db->query("SELECT * FROM `class` WHERE id='$id'");
$name = $db->results()[0]->name;
$seat = $db->results()[0]->seats;
$days = $db->results()[0]->days;
$sdate = $db->results()[0]->sdate;
$edate = $db->results()[0]->edate; 
$courseId = $db->results()[0]->course_id;
$tutorId =   $db->results()[0]->tutor_id;

$db->query("SELECT * FROM `courses` WHERE id='$courseId'");

$courseName = $db->results()[0]->name;

$db->query("SELECT * FROM `users` WHERE id='$tutorId'");

$tutorName = $db->results()[0]->username;


?>

<div id="page-wrapper">
    <div class="container">
        <div class="row">
            

            <div class="card" style="width: 18rem; border-radius:12px; background-image: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%); padding:10px; color:white;">
                <div class="card-body" style="margin:10px;">
                    <h5 class="card-title">Section:<?= $name ?></h5>
                    <h5>no of seats : <?= $seat ?></h5>
                    <h5>Tutor Name :  <?= $tutorName ?></h5>
                    <h6>Course Name :  <?= $courseName  ?></h6>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
                <div class="card-body" style="margin:10px;">
                    <h5>DAYS : <?= $days ?></h5>
                    <h5>STARTING DATE : <?= $sdate ?></h5>
                    <h5>END DATE : <?= $edate ?></h5>

                </div>

                <div class="card-body" style="margin:10px;">
                    <a  href='penroll.php?cid=<?= $id ?>&sid=<?=  $user->data()->id; ?>'><button type="button" class="btn btn-primary">enroll</button></a>
                    <a href='account.php'><button type="button" class="btn btn-primary">back</button></a>
                </div>
            </div>


        </div>
    </div>
</div> 


