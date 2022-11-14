<?php include('./include/header.php') ?>

<?php include('./include/navbar.php') ?>

<?php
    if(isset($_GET['pro_id'])){
        $pro_id = $_GET['pro_id'];
        $get_product = "SELECT * FROM products WHERE product_id = '$pro_id'";
        $run_product = mysqli_query($connection, $get_product);
        $row_product = mysqli_fetch_array($run_product);
        $product_image = $row_product['product_image'];
        $product_title = $row_product['product_title'];
        $product_price = $row_product['product_price'];
        $product_description = $row_product['product_description'];
    }
?>


<section>
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img src="<?php echo $product_image ?>" alt="..." style="height:413px;width:400px;padding-top:25px">
            </div>
            <div class="col-md-7 mt-5">
                <h3 style="padding-top: 20px;" class="font-weight-bold mb-3"><?php echo $product_title ?></h3>
                <h4 class="font-weight-bold mb-3" style="color: green">$<?php echo $product_price ?></h4>
                <p class="text-secondary mb-4"><?php echo $product_description ?></p>
                <div class="d-flex flex-row">
                    <a href="./checkout.php" class="btn btn-warning font-weight-bold mr-5">Buy now</a>
                    <button class="btn btn-warning font-weight-bold">Add to cart</button>
                </div>  
            </div>
        </div>
    </div>
</section>


<?php include('./include/footer.php') ?>