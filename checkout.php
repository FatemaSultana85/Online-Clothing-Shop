<?php include('./include/header.php') ?>

<?php include('./include/navbar.php') ?>

<div class="row justify-content-center mt-5">
    <div class="col-md-6 shadow-lg">
        <div class="m-5">
            <form method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Email</label>
                        <input type="email" class="form-control" id="inputEmail4" name="email" placeholder="Email">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Phone No</label>
                        <input type="text" class="form-control" id="inputPassword4" name="phone" placeholder="Phone No">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Address</label>
                    <input type="text" class="form-control" id="inputAddress" name="address" placeholder="1234 Main St">
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Address 2</label>
                    <input type="text" class="form-control" id="inputAddress2" name="address2" placeholder="Apartment, studio, or floor">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">City</label>
                        <input type="text" class="form-control" id="inputCity" name="city">
                    </div>
                    
                    <div class="form-group col-md-2">
                        <label for="inputZip">Zip</label>
                        <input type="text" class="form-control" id="inputZip" name="zip">
                    </div>
                </div>
                <button type="submit" class="btn btn-block bg-dark text-light" name="submit">Buy now</button>
            </form>
        </div>
    </div>
</div>
<?php
                        if(isset($_POST['submit'])){
                            $email = $_POST['email'];
                            $phone = $_POST['phone'];
                            $address = $_POST['address'];
							$address2 = $_POST['address2'];
						    $city = $_POST['city'];
							$zip = $_POST['zip'];

                            
                            $email = mysqli_real_escape_string($connection, $email);
                            $phone = mysqli_real_escape_string($connection, $phone);
                            $address = mysqli_real_escape_string($connection, $address);
							$address2 = mysqli_real_escape_string($connection,$address2);
							$city = mysqli_real_escape_string($connection, $city);
							$zip = mysqli_real_escape_string($connection, $zip);

                            $query    = "INSERT into checkout (check_email, check_phone, check_address, check_address2, check_city, check_zip)
                                         VALUES ('$email', '$phone', '$address', '$address2', '$city', '$zip')";
                            $result   = mysqli_query($connection, $query);
                            if($result){
                                echo "<div class='alert alert-success' role='alert'>
                                      Information saved successfully!
                                    </div>";
                            }
                            else{
                                "<div class='alert alert-danger' role='alert'>
                                  failed to save!
                                </div>";
                            }
                        }
                    ?>

                       

<?php include('./include/footer.php') ?>