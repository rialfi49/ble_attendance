<?php 
  $videoURL = "https://www.youtube.com/watch?v=LPBN_ILuDhg";
  $convertedURL = str_replace("watch?v=","embed/", $videoURL);
?>

<!DOCTYPE html>
<!--=== Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
<?php include "header.php"; ?> 
    <title>Verified User | BLE ESP32 FOR SMART ATTENDANCE</title>
    <link rel="shortcut icon" type="image" href="./image/logo unj.png"> 
</head>
<body>
    <?php include "menu.php"; ?>

    <section class="dashboard">
        <div class="top">
            <i class="uil uil-bars sidebar-toggle"></i>
            
            <?php

    $currentDay = date('l');
/*     $currentDate = date('Y-m-d'); */

    // Display the current day and date
    echo $currentDay;
/*     echo $currentDay . ', ' . $currentDate; */
?>

<?php
    // Get the current day and date
date_default_timezone_set('Asia/Jakarta');
    // Display the current day and date
echo date('Y-m-d H:i:s');
?>

            <div class="search-box">
                <i class="uil uil-search"></i>
                <input type="text" placeholder="Search here...">
            </div>
        
            <!--<img src="images/profile.jpg" alt="">-->
        </div>
        <div>
        <div class="title">
            <i class="fa-solid fa-info"></i>
            <span class="text">Demonstration of Products</span>
        </div>
        <div class="row">
          <div class="col-lg-12" style="margin-top: 1rem">
            <div class="embed-responsive embed-responsive-16by9">
              <iframe class="embed-responsive-item" src="<?php echo $convertedURL; ?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
          </div>
        </div>

    </section>

    <script type="text/javascript" src="script.js"></script>
    <!-- <script src="script.js"></script> -->
</body>
</html>
