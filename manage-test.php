<?php 

    include('config/constants.php'); 
    include('partials/login-check.php');

?>


<html>
    <head>
        <title>Quarantine Camp - Home Page</title>

        <link rel="stylesheet" href="css/admin.css">
        <link rel="stylesheet" href="css/style_test.css">
    </head>
    
    <body>
        <!-- Menu Section Starts -->
        <div class="menu text-center">
            <div class="wrapper">
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="manage-admin.php">Admin</a></li>
                    <li><a href="manage-patient.php">Patient</a></li>
                    <li><a href="manage-search-patient.php">Search</a></li>
                    <li><a href="manage-test.php">Test</a></li>
                    <li><a href="logout.php">Logout</a></li>
                </ul>
            </div>
        </div>
        <!-- Menu Section Ends -->

<section class="food-search text-center">
    <div class="container">
        
        <form action="<?php echo SITEURL; ?>test.php" method="POST">
            <input type="search" name="search" placeholder="Search for History Test.." required>
            <input type="submit" name="submit" value="Search" class="btn btn-primary">
        </form>

    </div>
</section>
