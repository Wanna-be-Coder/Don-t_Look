<?php

require_once '../users/init.php';
require_once $abs_us_root . $us_url_root . 'users/includes/template/prep.php';
if (!securePage($_SERVER['PHP_SELF'])) {
    die();
}
$cid = $_GET['id'];
if (isset($_POST['submit'])) {

$tid = $user->data()->id;
$streamLink = Input::get('slink');
$db = DB::getInstance();

$db->query("INSERT INTO `stream_track`(`streamlink`,`tutor_id`,`class_id` ) VALUES ('$streamLink','$tid','$cid')");
header('location:successstream.php');

}
?>




<div id="page-wrapper" style="height:80vh;">
    <div class="container">
        <div class="row">
            <div>
                <div class="col-md-6">
                    <form action="sstream.php?id=<?= $cid ?>" method="POST">
                        <label for="">Submit link for the class</label>
                     
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"></span>
                            <input type="text" class="form-control" placeholder="Link" name="slink" aria-describedby="basic-addon1">
                        </div><br>
                        <button type="submit" name='submit' class="btn btn-primary">Submit Link</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div> 


