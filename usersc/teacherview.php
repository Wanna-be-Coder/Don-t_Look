<?php

require_once '../users/init.php';
require_once $abs_us_root . $us_url_root . 'users/includes/template/prep.php';
if (!securePage($_SERVER['PHP_SELF'])) {
    die();
}
$id = $user->data()->id;
$db = DB::getInstance();

$db->query("SELECT * FROM `users` WHERE id='$id'");
$tutorName = $db->results()[0]->username;
$db->query("SELECT * FROM `class` WHERE tutor_id='$id'");

?>




<div id="page-wrapper" style="height:80vh;">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-6" style="border-radius:12px; color:whitesmoke;background-image: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%);">
                    <div>
                        <h2>Classes Taken by <?= $tutorName ?></h2>
                        <div>
                            <ul>
                        <?php
                        foreach ($db->results() as $record){ ?>
                                <li><a href='sstream.php?id=<?= $record->id ?>'><?= $record->name ?></a></li>
                                <?php }?>
                        </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div> 


