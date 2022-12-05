<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Manage Patient</h1>

        <br /><br />

                <!-- Button to Add Admin -->
                <a href="<?php echo SITEURL; ?>add-patient.php" class="btn-primary">Add Patient</a>

                <br /><br /><br />

                <?php 
                    if(isset($_SESSION['add']))
                    {
                        echo $_SESSION['add'];
                        unset($_SESSION['add']);
                    }

                    if(isset($_SESSION['delete']))
                    {
                        echo $_SESSION['delete'];
                        unset($_SESSION['delete']);
                    }

                    if(isset($_SESSION['upload']))
                    {
                        echo $_SESSION['upload'];
                        unset($_SESSION['upload']);
                    }

                    if(isset($_SESSION['unauthorize']))
                    {
                        echo $_SESSION['unauthorize'];
                        unset($_SESSION['unauthorize']);
                    }

                    if(isset($_SESSION['update']))
                    {
                        echo $_SESSION['update'];
                        unset($_SESSION['update']);
                    }
                
                ?>

                <table class="tbl-full">
                    <tr>
                        <th>ID</th>
                        <th>Full_name</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Day Of Birth</th>
                        <th>Room_id</th>
                    </tr>

                    <?php 
                        //Create a SQL Query to Get all the Food
                        $sql = "SELECT * FROM patient";

                        //Execute the qUery
                        $res = mysqli_query($conn, $sql);

                        //Count Rows to check whether we have foods or not
                        $count = mysqli_num_rows($res);

                        //Create Serial Number VAriable and Set Default VAlue as 1
                        $sn=1;

                        if($count>0)
                        {
                            //We have food in Database
                            //Get the Foods from Database and Display
                            while($row=mysqli_fetch_assoc($res))
                            {
                                //get the values from individual columns
                                $id = $row['id'];
                                $full_name = $row['full_name'];
                                $gender = $row['gender'];
                                $address = $row['address'];
                                $phone = $row['phone'];
                                $dob = $row['dob'];
                                ?>

                                <tr>
                                    <td><?php echo $sn++; ?>. </td>
                                    <td><?php echo $full_name; ?></td>
                                    <td><?php if ($gender=='M') echo "Male"; else echo "Female"; ?></td>
                                    <td><?php echo $address; ?></td>
                                    <td><?php echo $phone; ?></td>
                                    <td><?php echo $dob; ?></td>
                                    <td>
                                        <a href="<?php echo SITEURL; ?>admin/update-patient.php?id=<?php echo $id; ?>" class="btn-secondary">Update Patient</a>
                                        <a href="<?php echo SITEURL; ?>admin/delete-patient.php?id=<?php echo $id; ?>" class="btn-danger">Delete Patient</a>
                                    </td>
                                </tr>

                                <?php
                            }
                        }
                        else
                        {
                            //Food not Added in Database
                            echo "<tr> <td colspan='7' class='error'> Food not Added Yet. </td> </tr>";
                        }

                    ?>

                    
                </table>
    </div>
    
</div>

<?php include('partials/footer.php'); ?>