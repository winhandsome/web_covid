<?php include('partials/menu.php'); ?>

<!-- Patient Search Section Starts Here -->
<?php 
    if(isset($_POST['submit']))
    {
        $search = mysqli_real_escape_string($conn, $_POST['search']);

        
    }

?>
<table class="tbl-full">
    <tr>
        <th>ID</th>
        <th>Full_name</th>
        <th>Phone</th>
        <th>Comorbidity</th>
    </tr>

    <?php 
        //Create a SQL Query to Get all the Food
        $sql = "SELECT * FROM patient WHERE id LIKE '$search'";

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
                $phone = $row['phone'];
                $comorbidity = $row['comorbidity'];
                ?>

                <tr>
                    <td><?php echo $id; ?>. </td>
                    <td><?php echo $full_name; ?></td>
                    <td><?php echo $phone; ?></td>
                    <td><?php echo $comorbidity; ?></td>

                </tr>

                <?php
            }
        }
        else
        {
            echo "<tr> <td colspan='7' class='error'> Patient not Added Yet. </td> </tr>";
        }

    ?>

    
</table>

<?php
echo "<br>";
?>

<?php include('partials/footer.php'); ?>