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

	$days = Input::get('day');
	$day1s = Input::get('day1s');

	if ($days == '') {
		echo "<script type='text/javascript'>alert('Must Select atleeast one day');</script>";
	}
	else{

	foreach ($days as $day) {
		$d .= $day . ',';
	}




	$db = DB::getInstance();

	$db->query("INSERT INTO `class`(`course_id`, `tutor_id`, `days`, `seats`) VALUES ('$courseid','$tutorid','$d','$seat')");
	$id = $db->lastId();
	header("location:cclass2.php?"+$id);
	}
}
?>

<div id="page-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <form action="cclass.php" method="post">
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

                    <script>
											var x = document.getElementById("day1");
											var y = document.getElementById("day2");
											var a = document.getElementById("day3");
											var b = document.getElementById("day4");
											var c = document.getElementById("day5");
											var d = document.getElementById("day6");
											var e = document.getElementById("day7");


											function checkstatus(){
												if (x.checked == true) { 
													document.getElementById("day1V").style.visibility="visible";
                        }
												else{
													document.getElementById("day1V").style.visibility="hidden";
												}
												console.log(x.checked);




												
											}
											
										
											function checkstatus1(){
												if (y.checked == true) { 
													document.getElementById("day2V").style.visibility="visible";
                        }
												else{
													document.getElementById("day2V").style.visibility="hidden";
												}

											}

											function checkstatus2(){
												if (a.checked == true) { 
													document.getElementById("day3V").style.visibility="visible";
                        }
												else{
													document.getElementById("day3V").style.visibility="hidden";
												}
												console.log(x.checked);
											}
											function checkstatus3(){
												if (b.checked == true) { 
													document.getElementById("day4V").style.visibility="visible";
                        }
												else{
													document.getElementById("day4V").style.visibility="hidden";
												}
												console.log(x.checked);
											}
											function checkstatus4(){
												if (c.checked == true) { 
													document.getElementById("day5V").style.visibility="visible";
                        }
												else{
													document.getElementById("day5V").style.visibility="hidden";
												}
												console.log(x.checked);
											}
											function checkstatus5(){
												if (d.checked == true) { 
													document.getElementById("day6V").style.visibility="visible";
                        }
												else{
													document.getElementById("day6V").style.visibility="hidden";
												}
												console.log(x.checked);
											}
											function checkstatus6(){
												if (e.checked == true) { 
													document.getElementById("day7V").style.visibility="visible";
                        }
												else{
													document.getElementById("day7V").style.visibility="hidden";
												}
												console.log(x.checked);
											}
                     
											
                    </script>

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