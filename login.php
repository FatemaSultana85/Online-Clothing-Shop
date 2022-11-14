<?php session_start()?>
<?php include('./include/header.php') ?>

<?php include('./include/navbar.php') ?>


    <section class="my-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="p-5 shadow-lg">
                        <h3 class="text-uppercase text-dark text-center" href="#">Dresses <span class="snaz">Snazzy</span></h3>
                        <hr class="mb-4">
                        <form action="login.php">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Username</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                       aria-describedby="emailHelp" name="username">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" name="password">
                            </div>
                            <button type="submit" class="btn btn-block text-white bg-dark my-4" name="submit">Submit</button>
                            <a href="signup.php" class="text-dark remove-udline">Don't have an account? Signup</a>
                            <?php 
                                if(isset($_POST['submit'])){
                                    $username = ['username'];
                                    $password = ['password'];
                                    $username = mysqli_real_escape_string($connection, $username);
                                    $password = mysqli_real_escape_string($connection, $password);

                                    $query = "SELECT * FROM users WHERE user_name = '{$username}' ";
									echo $query;
									die;
                                    
									$select_user_query = mysqli_query($connection, $query);
                                    if(!$select_user_query){
                                        die("query failed". mysqli_error($connection));
                                    }

                                    while($row = mysqli_fetch_array($select_user_query)){
                                        $db_user_name = $row['user_name'];
                                        $db_user_password = $row['user_password'];
                                    }
                                    if($username !== $db_user_name && $password !== $db_user_password){
                                        header("Location: login.php");
                                    }
                                    else if($username == $db_user_name && $password == $db_user_password){
                                        $_SESSION['username'] = $db_user_name;
                                        header("Location: after_login.php");
                                    }
                                    else{
                                        header("Location: login.php");
                                    }
                                }
                            ?>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>


<?php include('./include/footer.php') ?>