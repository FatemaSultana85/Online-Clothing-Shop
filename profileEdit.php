<?php include('./include/header.php') ?>

<?php include('./include/navbar.php') ?>

<section class="mt-5">
    <div class="container">
        <div class="row justify-content-center">

            <?php 
                $query = "SELECT * FROM update_profile";
                $select_profile_query = mysqli_query($connection, $query);
                while ($row = mysqli_fetch_assoc($select_profile_query)) {
                    $user_name = $row['user_name'];
                    $user_profession = $row['user_profession'];
                    $user_reg_id = $row['user_reg_id'];
                    $user_email = $row['user_email'];
                    $user_dob = $row['user_dob'];
                    $user_age = $row['user_age'];
                    ?>

                    <div class="col-md-6 text-center">
                        <div class="p-5 shadow-lg">
                        <h3>About you (Profile)</h3>
                        <div class="row justify-content-center mb-4">
                            <div class="new-row"></div>
                        </div>
                        <img src="image/user.png" alt="...." class="img-class mb-3">
                        <p>Name : <?php echo $user_name ?></p>
                        <p>Profession : <?php echo $user_profession ?></p>
                        <p>ID : <?php echo $user_reg_id ?></p>
                        <p>Email : <?php echo $user_email ?></p>
                        <p>Date of Birth : <?php echo $user_dob ?></p>
                        <p>Age : <?php echo $user_age ?></p>
                        <a href="profileEditForm.php" class="btn btn-danger btn-custom">Edit</a>
                        </div>
                    </div>
               <?php } ?>
        </div>
    </div>
</section>

<?php include('./include/footer.php') ?>