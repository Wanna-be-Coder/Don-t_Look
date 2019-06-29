<?php
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
require_once '../users/init.php';
require_once $abs_us_root . $us_url_root . 'users/includes/template/prep.php';

if (!securePage($_SERVER['PHP_SELF'])) {
    die();
}

?>

<?php
if (isset($_POST['submit'])) {


    $cname = Input::get('cname');
    $ctype = Input::get('ctype');
    $cdescription = Input::get('cdescription');
    $duration = Input::get('cduration');

    $target_dir = "uploads/";
    $target_file = 'uploads/' . basename($_FILES["fileToUpload"]["name"]);
    if (move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $target_file)) {
        echo "The file " . basename($_FILES[$file]["name"]) . " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }





    $db = DB::getInstance();

    $db->query("INSERT INTO `courses`( `name`, `type`, `description`, `duration`, `document`) VALUES ('$cname','$ctype','$cdescription','$duration','$target_file')");
    header("location:account.php");
}






?>

<div id="page-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <form action="add_course.php" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="Course Name">Course Name:</label>
                        <input type="text" name="cname" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="Course Category">Course type:</label>
                        <select class="form-control" name="ctype">
                            <option value="Science & Technology">Science & Technology</option>
                            <option value="Business Studies">Business Studies</option>
                            <option value="Literature">Literature</option>
                            <option value="Others">Others</option>
                        </select>

                    </div>

                    <div class="form-group">
                        <label for="Course Description">Course Description:</label>
                        <textarea name="cdescription" class="form-control" cols="30" rows="5"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="Course Duration">Course Duration in Weeks:</label>
                        <input type="number" class="form-control" name="cduration" required>
                    </div>
                    <label for="Course Content upload">Upload Core content :</label>
                    <input type="file" class="form-control" name="fileToUpload" required>
                    <br>
                    <br>
                    <input type="hidden" name="csrf" value="<?= Token::generate() ?>">
            </div>
            <button type="submit" name="submit" class="form-control btn btn-success">Submit</button>
            <br>
            <br>
            <br>
            </form>



        </div>
    </div>
</div>
</div>


<?php require_once $abs_us_root . $us_url_root . 'usersc/templates/' . $settings->template . '/container_close.php'; ?>

<!-- footers -->
<?php require_once $abs_us_root . $us_url_root . 'users/includes/page_footer.php'; ?>

<!-- Place any per-page javascript here -->

<?php require_once $abs_us_root . $us_url_root . 'usersc/templates/' . $settings->template . '/footer.php'; ?> 