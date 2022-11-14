<footer class="mt-5 bg-dark pt-5">
    <div class="container-fluid">
        <div class="row mb-3">
            <div class="col-md-6 justify-content-start">
                <h3 class="text-white text-center mb-2">Follow us on-</h3>
                <ul class="list-inline text-center py-3">
                    <li class="list-inline-item mr-4">
                        <a class="btn btn-primary" style="background-color: #55acee" href="https://www.facebook.com/fatematamanna.tarin.26" role="button"><i class="fab fa-facebook"></i></a>
                    </li>
                    <li class="list-inline-item mr-4">
                        <a class="btn btn-primary" style="background-color: #dd4b39" href="https://mail.google.com/mail/u/0/#inbox" role="button"><i class="fab fa-google"></i></a>
                    </li>
                    <li class="list-inline-item mr-4">
                        <a class="btn btn-primary" style="background-color: #ac2bac" href="https://www.instagram.com/prince.souvon.5/" role="button"><i class="fab fa-instagram"></i></a>
                    </li>
                    <li class="list-inline-item mr-4">
                        <a class="btn btn-primary" style="background-color: #0082ca" href="https://www.linkedin.com/in/ars-souvon-679419170/" role="button"><i class="fab fa-linkedin-in"></i></a>
                    </li>
                </ul>
            </div>
            <div class="col-md-4 justify-content-center">
                <h3 class="text-white text-center mb-4">Subscribe to</h3>
                <form method="post">
                    <div class="input-group">
                        <input type="email" class="form-control" name="email" placeholder="Enter your email">
                        <span class="input-group-btn mb-3">
                            <button class="btn btn-success" type="submit" name="subscribe">Subscribe Now</button>
                        </span> 
                    </div>
                    <?php
                        if(isset($_POST['subscribe'])){
                            $email = $_POST['email'];
                            $email = mysqli_real_escape_string($connection, $email);
                            $query    = "INSERT into subscribes (subscribe_email)
                                         VALUES ('$email')";
                            $result   = mysqli_query($connection, $query);
                            if($result){
                                 echo "<div class='alert alert-success' role='alert'>
                                       subscribed successfully!
                                     </div>";
                            }
                            else{
                                 "<div class='alert alert-danger' role='alert'>
                                   failed to subscribed!
                                 </div>";
                            }
                        }
                    ?>
                </form>
            </div>
        </div>
        <div class="row custom-clr justify-content-center text-white p-4">
            © 2020 Copyright:
            <a class="text-white udln" href="index.php">dressessnazzy.com</a>
        </div>
    </div>
</footer>


<script src="Js/jquery-3.6.0.js"></script>
<script src="Js/popper.min.js"></script>
<script src="Js/bootstrap.min.js"></script>
<script src="Js/script.js"></script>
</body>

</html>