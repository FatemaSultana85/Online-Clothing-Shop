<section class="mt-4">
    <div class="container-fluid">
        <h2 class="font-weight-bold text-center text-uppercase">our products</h2>
        <div class="row justify-content-center mb-5">
            <div class="new-row"></div>
        </div>
        

        <div class="row ml-auto mb-3">

            <?php

            if (isset($_GET['pageno'])) {
                $pageno = $_GET['pageno'];
            } else {
                $pageno = 1;
            }
            $no_of_records_per_page = 12;
            $offset = ($pageno - 1) * $no_of_records_per_page;


            $total_pages_sql = "SELECT COUNT(*) FROM products";
            $result = mysqli_query($connection, $total_pages_sql);
            $total_rows = mysqli_fetch_array($result)[0];
            $total_pages = ceil($total_rows / $no_of_records_per_page);

            $query = "SELECT * FROM products  LIMIT $offset, $no_of_records_per_page";
            $select_all_product_query = mysqli_query($connection, $query);
            while ($row = mysqli_fetch_assoc($select_all_product_query)) {
                $pro_id = $row['product_id'];
                $product_image = $row['product_image'];
                $product_title = $row['product_title'];
                $product_price = $row['product_price'];
                
            ?>
                <div class="col-md-3 mb-5">
                    <div class="card shadow-lg" style="width: 18rem;">
                        <img src="<?php echo $product_image ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <div class="card-title d-flex flex-row">
                                <div class="font-weight-bold"><?php echo $product_title ?></div>
                                <div class="text-color ml-auto">$<?php echo $product_price ?></div>
                            </div>
                            
                            <div class="d-flex flex-row">
                                <a href="../SD_Project/product_details.php?pro_id=<?php echo $pro_id ?>" class="btn btn-warning font-weight-bold">view</a>
                                <a href="#" class="btn btn-warning ml-auto font-weight-bold">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            <?php  } ?>
        </div>

        <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link" href="?pageno=1">First</a></li>
            <li class="page-item <?php if($pageno <= 1){ echo 'disabled'; } ?>">
                <a class="page-link" href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>">Prev</a>
            </li>
            <li class="page-item <?php if($pageno >= $total_pages){ echo 'disabled'; } ?>">
                <a class="page-link" href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?>">Next</a>
            </li>
            <li class="page-item"><a class="page-link" href="?pageno=<?php echo $total_pages; ?>">Last</a></li>
         </ul>
        </nav>
    </div>
</section>