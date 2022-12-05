<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Add Food</h1>

        <br><br>

        <?php 
            if(isset($_SESSION['upload']))
            {
                echo $_SESSION['upload'];
                unset($_SESSION['upload']);
            }
        ?>

        <form action="" method="POST" enctype="multipart/form-data">
        
            <table class="tbl-30">

                <tr>
                    <td>Id: </td>
                    <td>
                        <input type="text" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Full name: </td>
                    <td>
                        <input type="text" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Gender: </td>
                    <td>
                        <input type="radio" name="featured" value="Yes"> Male
                        <input type="radio" name="featured" value="No"> Female
                    </td>
                </tr>

                <tr>
                    <td>Phone: </td>
                    <td>
                        <input type="number" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Day of birth: </td>
                    <td>
                        <input type="text" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Room ID</td>
                    <td>
                        <input type="number" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Location History: </td>
                    <td>
                        <input type="text" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Nurse ID: </td>
                    <td>
                        <input type="number" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Staff ID: </td>
                    <td>
                        <input type="number" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Camp ID: </td>
                    <td>
                        <input type="number" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Symptom: </td>
                    <td>
                        <input type="text" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Comorbidity: </td>
                    <td>
                        <input type="text" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Addmission Date: </td>
                    <td>
                        <input type="text" name="title">
                    </td>
                </tr>

                <tr>
                    <td>PCR Test: </td>
                    <td>
                        <input type="bool" name="title">
                    </td>
                </tr>

                <tr>
                    <td>CT PCR: </td>
                    <td>
                        <input type="number" name="title">
                    </td>
                </tr>

                <tr>
                    <td>Quick Test: </td>
                    <td>
                        <input type="bool" name="title">
                    </td>
                </tr>

                <tr>
                    <td>CT Quick: </td>
                    <td>
                        <input type="number" name="title">
                    </td>
                </tr>

                <tr>
                    <td>SPO2: </td>
                    <td>
                        <input type="number" name="title">
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="submit" name="submit" value="Add Patient" class="btn-secondary">
                    </td>
                </tr>

            </table>

        </form>

        
        <?php 

            //CHeck whether the button is clicked or not
            if(isset($_POST['submit']))
            {
                //Add the Food in Database
                //echo "Clicked";
                
                //1. Get the Data from Form
                $id = $_POST['id'];
                $full_name = $_POST['full_name'];
                $gender = $_POST['gender'];
                $address = $_POST['address'];
                $phone = $_POST['phone'];
                $dob = $_POST['dob'];
                $room_id = $_POST['room_id'];
                $location_history = $_POST['location_history'];
                $nurse_id = $_POST['nurse_id'];
                $staff_id = $_POST['staff_id'];
                $camp_id = $_POST['camp_id'];
                $symptom = $_POST['symptom'];
                $comorbidity = $_POST['comorbidity'];
                $addmission_date = $_POST['addmission_date'];
                $pcr_test = $_POST['pcr_test'];
                $ct_pcr = $_POST['ct_pcr'];
                $quick_test = $_POST['quick_test'];
                $ct_quick = $_POST['ct_quick'];
                $spo2 = $_POST['spo2'];

                //2. Insert Into Database

                //Create a SQL Query to Save or Add food
                // For Numerical we do not need to pass value inside quotes '' But for string value it is compulsory to add quotes ''
                $sql2 = "INSERT INTO patient SET 
                    id = '$id',
                    full_name = '$full_name',
                    gender = '$gender',
                    address = '$address',
                    phone = '$phone',
                    dob = '$dob',
                    room_id = '$room_id',
                    location_history = '$location_history',
                    nurse_id = '$nurse_id',
                    staff_id = '$staff_id',
                    camp_id = '$camp_id',
                    symptom = '$symptom',
                    comorbidity = '$comorbidity',
                    addmission_date = '$addmission_date',
                    pcr_test = '$pcr_test',
                    ct_pcr = '$ct_pcr',
                    quick_test = '$quick_test',
                    ct_quick = '$ct_quick',
                    spo2 = '$spo2'
                ";

                //Execute the Query
                $res2 = mysqli_query($conn, $sql2);

                //Check whether data inserted or not
                //3. Redirect with Message to Manage Food page
                if($res2 == true)
                {
                    //Data inserted Successfullly
                    $_SESSION['add'] = "<div class='success'>Patient Added Successfully.</div>";
                    header('location:'.SITEURL.'manage-patient.php');
                }
                else
                {
                    //FAiled to Insert Data
                    $_SESSION['add'] = "<div class='error'>Failed to Add Patient.</div>";
                    header('location:'.SITEURL.'manage-patient.php');
                }

                
            }

        ?>


    </div>
</div>

<?php include('partials/footer.php'); ?>