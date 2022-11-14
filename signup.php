<?php include('./include/header.php') ?>

<?php include('./include/navbar.php') ?>

<section class="mt-5">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-5 p-5 shadow-lg">
                <form action="signup.php" method="post">
                    <h3 class="text-uppercase text-dark my-3 text-center" href="#">Dresses <span class="snaz">Snazzy</span></h3>
                    <hr class="mb-4">
                    <div class="form-group">
                        <label for="inputName">Name</label>
                        <input type="text" class="form-control" id="inputName" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail">Email</label>
                        <input type="email" class="form-control" id="inputEmail" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="password1">Password</label>
                        <input type="password" class="form-control" id="password1" name="password1">
                    </div>
                    <div class="form-group">
                        <label for="password2">Retype Password</label>
                        <input type="password" class="form-control" id="password2" name="password2">
                    </div>
                    <button class="btn btn-block btn-dark text-white my-3" type="submit" name="submit">Submit</button>
                    <a href="login.php" class="text-dark remove-udline">Already have an Account? Login</a>

                    <?php
                        if(isset($_POST['submit'])){
                            $name = $_POST['name'];
                            $email = $_POST['email'];
                            $password1 = $_POST['password1'];
                            $password2 = $_POST['password2'];

                            $name = mysqli_real_escape_string($connection, $name);
                            $email = mysqli_real_escape_string($connection, $email);
                            $password1 = mysqli_real_escape_string($connection, $password1);
                            $password2 = mysqli_real_escape_string($connection, $password2);

                            $query    = "INSERT into users (user_name, user_email, user_password, user_confirm_password)
                                         VALUES ('$name', '$email', '$password1', '$password2')";
                            $result   = mysqli_query($connection, $query);
                            if($result){
                                echo "<div class='alert alert-success' role='alert'>
                                      Account created successfully!
                                    </div>";
                            }
                            else{
                                "<div class='alert alert-danger' role='alert'>
                                  failed to sign up!
                                </div>";
                            }
                            if($password1 != $password2){
                                "<div class='alert alert-danger' role='alert'>
                                  password and confirm password didn;t match!
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
