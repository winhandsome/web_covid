<?php include('partials/menu-search.php'); ?>

<section class="food-search text-center">
    <div class="container">
        
        <form action="<?php echo SITEURL; ?>search-patient.php" method="POST">
            <input type="search" name="search" placeholder="Search for Patient Information.." required>
            <input type="submit" name="submit" value="Search" class="btn btn-primary">
        </form>

    </div>
</section>
