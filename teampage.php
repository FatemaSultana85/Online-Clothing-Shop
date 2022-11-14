<?php include('./include/header.php') ?>

<?php include('./include/navbar.php') ?>

<section class="my-4">
    <div class="container">
        <div class="row justify-content-center text-center mb-4">
            <div class="col-md-7">
                <h3 class="font-weight-bold">Experienced & Professional Team</h3>
                <p class="text-secondary">You can relay on our amazing features list and also our customer services
                    will
                    be great experience for you without doubt and in no-time</p>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="card-deck">

                <?php
                    $query = "SELECT * FROM teams";
                    $select_all_team_query = mysqli_query($connection, $query);
                     while ($row = mysqli_fetch_assoc($select_all_team_query)) {
                        $team_member_image = $row['team_member_image'];
                        $team_member_name = $row['team_member_name'];
                        $team_member_position = $row['team_member_position'];
                        $team_member_id = $row['team_member_id'];
                        $team_member_university = $row['team_member_university'];
                        $team_member_email = $row['team_member_email'];
                        $team_member_fb = $row['team_member_fb'];
                        $team_member_gmail = $row['team_member_gmail'];
                        $team_member_instagram = $row['team_member_instagram'];
                        $team_member_linkdin = $row['team_member_linkdin'];
                        ?>

                        <div class="card shadow-lg">
                            <img class="card-img-top" src="<?php echo $team_member_image ?>" alt="Card image cap">
                            <div class="card-body text-center">
                                <h3 class="card-title"><?php echo $team_member_name ?></h3>
                                <p class="title"><?php echo $team_member_position ?></p>
                                <p>ID:<?php echo $team_member_id ?></p>
                                <p><?php echo $team_member_university ?></p>
                                <p><?php echo $team_member_email ?></p>
                                <ul class="list-inline text-center py-3">
                                    <li class="list-inline-item mr-2">
                                        <a class="btn btn-primary" style="background-color: #55acee" href="<?php echo $team_member_fb ?>" role="button"><i class="fab fa-facebook"></i></a>
                                    </li>
                                    <li class="list-inline-item mr-2">
                                        <a class="btn btn-primary" style="background-color: #dd4b39" href="<?php echo $team_member_gmail ?>" role="button"><i class="fab fa-google"></i></a>
                                    </li>
                                    <li class="list-inline-item mr-2">
                                        <a class="btn btn-primary" style="background-color: #ac2bac" href="<?php echo $team_member_instagram ?>" role="button"><i class="fab fa-instagram"></i></a>
                                    </li>
                                    <li class="list-inline-item mr-2">
                                        <a class="btn btn-primary" style="background-color: #0082ca" href="<?php echo $team_member_linkdin ?>" role="button"><i class="fab fa-linkedin-in"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                   <?php } ?>
            </div>
        </div>
    </div>
</section>

<?php include('./include/footer.php') ?>