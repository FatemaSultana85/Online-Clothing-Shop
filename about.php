<?php include('./include/header.php') ?>

<?php include('./include/navbar.php') ?>

    <div class="container">

      <?php 
            $query = "SELECT * FROM abouts";
            $select_all_about_query = mysqli_query($connection, $query);
             while ($row = mysqli_fetch_assoc($select_all_about_query)) {
                $about_detail = $row['about_detail'];
                ?>

                <p class="mt-4"><?php echo $about_detail ?></p>
    </div>

           <?php } ?>

<?php include('./include/footer.php') ?>