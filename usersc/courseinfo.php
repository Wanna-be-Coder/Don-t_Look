<?php

require_once '../users/init.php';
require_once $abs_us_root . $us_url_root . 'users/includes/template/prep.php';
if (!securePage($_SERVER['PHP_SELF'])) {
    die();
}
$id = $_GET['id'];
$db = DB::getInstance();

$db->query("SELECT * FROM `courses` WHERE id='$id'");


?>
<div id="page-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
           <div class="col-md-8 offset-2"> 
            <div class="card" style="width: 50%">
				<div class="card-body">
					<h4>Course Id:<?= $db->results()[0]->id; ?></h4>
					<h5 class="card-title"><?= $db->results()[0]->name; ?></h5>
					<h6 class="card-subtitle mb-2 text-muted">
					<?= $db->results()[0]->type; ?>
					</h6>
					<p class="card-text">DESCRIPTION: <?= $db->results()[0]->description; ?></p>
					<h6>Duration: <?= $db->results()[0]->duration; ?></h6>
				</div>
            </div>
            <div class="col-md-6 border">
                    <div>
                        <h2>Sections Available</h2>
                      
		

                  
                        <div>
                            <ul>
                            <?php
                        $db->query("SELECT * FROM `class` WHERE course_id='$id'");
                        foreach ($db->results() as $record){ ?>
                                <li><a href='class.php?id=<?= $record->id ?>'><?= $record->name ?></a></li>
                                <?php }?>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            
            </div>
        </div>
    </div>
</div> 