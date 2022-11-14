<?php include('./include/header.php') ?>

<?php include('./include/navbar.php') ?>

<section class="mt-5">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-5 p-5 shadow-lg">
                <form action="profileEditForm.php" method="post">
                    <h3 class="text-center text-dark text-uppercase">Edit your profile</h3>
                    <hr class="mb-4">
                    <div class="form-group">
                        <label for="inputName">Name</label>
                        <input type="text" class="form-control" id="inputName" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="inputProfession">Profession</label>
                        <input type="text" class="form-control" id="inputProfession" name="profession" required>
                    </div>
                    <div class="form-group">
                        <label for="inputID">ID</label>
                        <input type="text" class="form-control" id="inputID" name="ID" required>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail">Email</label>
                        <input type="email" class="form-control" id="inputEmail" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="inputDob">Date of Birth</label>
                        <input type="text" class="form-control" id="inputDob" name="dob" required>
                    </div>
                    <div class="form-group">
                        <label for="inputAge">Age</label>
                        <input type="text" class="form-control" id="inputDob" name="age" required>
                    </div>
                    <button class="btn btn-block btn-dark text-white mb-3" type="submit" name="submit">Save</button>

                    <?php
                        if(isset($_POST['submit'])){
                            $name = $_POST['name'];
                            $profession = $_POST['profession'];
                            $ID = $_POST['ID'];
                            $email = $_POST['email'];
                            $dob = $_POST['dob'];
                            $age = $_POST['age'];

                            $name = mysqli_real_escape_string($connection, $name);
                            $profession = mysqli_real_escape_string($connection, $profession);
                            $ID = mysqli_real_escape_string($connection, $ID);
                            $email = mysqli_real_escape_string($connection, $email);
                            $dob = mysqli_real_escape_string($connection, $dob);
                            $age = mysqli_real_escape_string($connection, $age);

                            $query = "UPDATE update_profile SET user_name='$name', user_profession='$profession', user_reg_id='$ID     ', user_email='$email', user_dob='$dob', user_age='$age'  ";
                            $result   = mysqli_query($connection, $query);

                            if($result){
                                echo "<div class='alert alert-success' role='alert'>
                                      update successfully!
                                    </div>";
                            }
                            else{
                                echo "<div class='alert alert-danger' role='alert'>
                                  failed to update!
                                </div>";
                            }

                        }
                    ?>

                </form>
            </div>
        </div>
    </div>
</section>

<?php include('./include/footer.php') ?>
