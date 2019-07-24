<?php
require_once '../users/init.php';
require_once $abs_us_root . $us_url_root . 'users/includes/template/prep.php';
if (!securePage($_SERVER['PHP_SELF'])) {
	die();
}
$week;
?>

<?php
if (isset($_POST['submit'])) {
	
	$d = '';

	$courseid = Input::get('course');
	$tutorid = Input::get('tutor');
	$seat = Input::get('seat');
	$section_name = Input::get('section_name');
	$sdate = Input::get('sdate');
	$edate = Input::get('edate');

	$days = Input::get('day');
	$day1s = Input::get('day1s');
	$daysize = count($days);

	if ($days == '') {
		echo "<script type='text/javascript'>alert('Must Select atleeast one day');</script>";
	}
	else{

	foreach ($days as $day) {
		$d .= $day . ',';
	}




	$db = DB::getInstance();

	$db->query("INSERT INTO `class`(`course_id`,`name`, `tutor_id`, `days`, `seats`,`sdate`,`edate` ) VALUES ('$courseid','$section_name','$tutorid','$d','$seat','$sdate','$edate')");
	// $id = $db->lastId();
	header("location:cclass2.php?".$daysize);
	}
}
?>

<div id="page-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <form action="cclass.php" method="post">
					<label for="complementary">Section name</label>
					<input class="form-control form-control-lg" type="text"  name="section_name" required>
					<br>
                    <label for="course">Select Course</label>
                    <select class="btn btn-lg btn-block" name="course">
                        <?php 
												$db = DB::getInstance();
												$db->query("SELECT * FROM `courses`");
												foreach ($db->results() as $record) {

													?>

                        <option value="<?= $record->id ?>"><?= $record->name ?></option>

                        <?php 
											} ?>
                    </select>
                    <br>
                    <label for="type">Select Tutor</label>
                    <select class="btn btn-lg btn-block" name="tutor">
                        <?php 
												$db = DB::getInstance();
												$db->query("SELECT * FROM `users` WHERE `user_type`='Tutor' OR `user_type`='Tutor+' OR `user_type`='' ");
												foreach ($db->results() as $record) {


													?>

                        <option value="<?= $record->id ?>"><?= $record->username ?></option>

                        <?php 
											} ?>
                    </select>
					<br>

					<label for="complementary">Start Date</label>
					<input class="form-control form-control-lg" type="date"  name="sdate" required>
					<br>

					<label for="complementary">End Date</label>
					<input class="form-control form-control-lg" type="date"  name="edate" required>
					<br>
					
                    <label for="complementary">Select Days</label>
                    <div class="checkbox">
                        <label><input type="checkbox" id="day1" name="day[]" value="sunday" onClick="checkstatus()">Sunday</label>
                    </div>

                    <!-- <div id="day1V" style="visibility:hidden;">
                        Start time: <input type="time" name="day1s">
                        End time: <input type="time" name="day1e">
                    </div> -->

                    <div class="checkbox">
                        <label><input type="checkbox" id="day2" name="day[]" value="monday" onClick="checkstatus1()">Monday</label>
                    </div>

                    <!-- <div id="day2V" style="visibility:hidden;">
                        Start time: <input type="time" name="day2s">
                        End time: <input type="time" name="day2e">
                    </div> -->

                    <div class="checkbox">
                        <label><input type="checkbox" id="day3" name="day[]" value="tuesday" onClick="checkstatus2()">Tuesday</label>
                    </div>

                    <!-- <div id="day3V" style="visibility:hidden;">
                        Start time: <input type="time" name="day3s">
                        End time: <input type="time" name="day3e">
                    </div> -->
                    <div class="checkbox">
                        <label><input type="checkbox" id="day4" name="day[]" value="wednesday" onClick="checkstatus3()">Wednesday</label>
                    </div>
                    <!-- <div id="day4V" style="visibility:hidden;">
                        Start time: <input type="time" name="day4s">
                        End time: <input type="time" name="day4e">
                    </div> -->
                    <div class="checkbox">
                        <label><input type="checkbox" id="day5" name="day[]" value="thursday" onClick="checkstatus4()">Thursday</label>
                    </div>
                    <!-- <div id="day5V" style="visibility:hidden;">
                        Start time: <input type="time" name="day5s">
                        End time: <input type="time" name="day5e">
                    </div> -->
                    <div class="checkbox">
                        <label><input type="checkbox" id="day6" name="day[]" value="friday" onClick="checkstatus5()">Friday</label>
                    </div>
                    <!-- <div id="day6V" style="visibility:hidden;">
                        Start time: <input type="time" name="day6s">
                        End time: <input type="time" name="day6e">
                    </div> -->
                    <div class="checkbox" >
                        <label><input type="checkbox" id="day7" name="day[]" value="saturday" onClick="checkstatus6()">Saturday</label>
                    </div>
                    <!-- <div id="day7V" style="visibility:hidden;">
                        Start time: <input type="time" name="day7s">
                        End time: <input type="time" name="day7e">
                    </div> -->

           

                    <label for="complementary">Number of Seats</label>
                    <input class="form-control form-control-lg" type="number" min="0" name="seat" required>
                    <br>
                    <button type="submit" class="btn btn-primary mb-2" name='submit'>Make Class</button>
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