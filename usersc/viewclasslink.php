<?php

require_once '../users/init.php';
require_once $abs_us_root . $us_url_root . 'users/includes/template/prep.php';
if (!securePage($_SERVER['PHP_SELF'])) {
    die();
}


$uid = $user->data()->id;
$db = DB::getInstance();

$db->query("SELECT * FROM `enrollment` WHERE studentId='$uid'");
$cId = $db->results()[0]->classId;
$db->query("SELECT * FROM `class` WHERE id='$cId'");
$cname = $db->results()[0]->name; 
$db->query("SELECT * FROM `stream_track` WHERE class_id='$cId'");
$sLink = $db->results()[0]->streamlink;



?>




<div id="page-wrapper" style="height:80vh;">
    <div class="container">
        <div class="row">
            <div><h1>HERE ARE THE LINKS TO ATTEND THE CLASSES</h1></div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="background-image: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%); border-radius:12px;">
                
                    <div class="caption" style=" color:whitesmoke;">
                        <h3>Section Name:<?= $cname ?></h3>
                        <ul style=" color:whitesmoke;">
                            <li><a href="<?= $sLink ?>"><?= $sLink ?></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> 


