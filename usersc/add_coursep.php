<?php

require_once '../users/init.php';
require_once $abs_us_root . $us_url_root . 'users/includes/template/prep.php';
if (!securePage($_SERVER['PHP_SELF'])) {
    die();
}
$target_file;
if (isset($_POST['submit'])) {

    $file = Input::get('fileToUpload');
    $target_dir = "./uploads";
    $target_file = $target_dir . basename($_FILES['fileToUpload']["name"]);
    if (move_uploaded_file($_FILES['fileToUpload']["tmp_name"], $target_file)) {
        echo "The file " . basename($_FILES[$file]["name"]) . " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}


// $cname = Input::get('cname');
// $ctype = Input::get('ctype');
// $cdescription = Input::get('cdescription'); 
// $duration = Input::get('cduration');

?>
<div id="page-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">

                <h1><?= $target_file; ?></h1>
            </div>
        </div>
    </div>
</div> 