<?php include('./include/header.php') ?>
<?php include('./include/db.php') ?>

<!-- new header -->
<header>
    <nav class="navbar navbar-expand-lg navbar-light py-3 nav-menu" style="background-color: #e3f2fd;">
        <a class="navbar-brand text-uppercase text-dark" href="../SD_Project/index.php">Dresses <span class="snaz">Snazzy</span></a>
        <button class="navbar-toggler bg-success text-white" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link text-uppercase font-weight-bold mr-3  text-dark custom-link-hover" href="../SD_Project/index.php">Home</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link text-uppercase font-weight-bold mr-3  text-dark custom-link-hover" href="../SD_Project/about.php">About</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link text-uppercase font-weight-bold  text-dark custom-link-hover mr-3" href="../SD_Project/contact.php">Contact</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link text-uppercase font-weight-bold  text-dark custom-link-hover" href="../SD_Project/teampage.php">Our Team</a>
                </li>
            </ul>
            <ul class="list-inline text-center font-weight-bold text-uppercase ml-auto sm-ml-auto">
                <li class="list-inline-item mt-3 ">
                    <a href="../SD_Project/login.php" class="text-uppercase text-dark mr-3 custom-link-hover mr-3 udline "><i class="fas fa-cart-plus fa-2x text-danger"></i></a>
                </li>
                <li class="list-inline-item mt-3">
                    <a class="text-uppercase text-dark custom-link-hover mr-3 udline" href="../SD_Project/profileEdit.php"><i class="fas fa-edit fa-2x text-danger"></i></a>
                </li>
                <li class="list-inline-item mt-3">
                    <a class="text-uppercase text-dark custom-link-hover udline" href="../SD_Project/login.php"><i class="fas fa-sign-out-alt fa-2x text-danger"></i></a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<!-- end of new header -->

<!-- showcase -->
<?php include('./include/showcase.php') ?>
<!-- end of showcase -->

<!-- products section -->
<?php include('./include/productSection.php') ?>
<!-- end of product section -->

<!-- footer -->
<?php include('./include/footer.php') ?>
<!-- end of footer -->