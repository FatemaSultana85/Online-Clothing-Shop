<?php include('./include/header.php') ?>

<?php include('./include/navbar.php') ?>

<section class="mt-5">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-5 p-5 shadow-lg">
                <form action="contact.php" method="post">
                    <h3 class="text-center text-dark text-uppercase">Contact With Us</h3>
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
                        <label for="inputPhone">Phone No</label>
                        <input type="text" class="form-control" id="inputPhone" name="phone" required>
                    </div>
                    <div class="form-group mb-4">
                        <label for="inputMessage">Message</label>
                        <textarea class="form-control" id="inputMessage" rows="4" name="message" required></textarea>
                    </div>
                    <button class="btn btn-block btn-dark text-white mb-3" type="submit" name="submit">Submit</button>

                    <?php
                        if(isset($_POST['submit'])){
                            $name = $_POST['name'];
                            $email = $_POST['email'];
                            $phone = $_POST['phone'];
                            $message = $_POST['message'];

                            $name = mysqli_real_escape_string($connection, $name);
                            $email = mysqli_real_escape_string($connection, $email);
                            $phone = mysqli_real_escape_string($connection, $phone);
                            $message = mysqli_real_escape_string($connection, $message);

                            $query    = "INSERT into contacts (contact_name, contact_email, contact_phone, contact_message)
                                         VALUES ('$name', '$email', '$phone', '$message')";
                            $result   = mysqli_query($connection, $query);
                            if($result){
                                echo "<div class='alert alert-success' role='alert'>
                                      contact saved successfully!
                                    </div>";
                            }
                            else{
                                "<div class='alert alert-danger' role='alert'>
                                  failed to save!
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
