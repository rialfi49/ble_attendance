<!DOCTYPE html>
<!--=== Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <?php include "header.php"; ?>
    
    <title>History | BLE ESP32 FOR SMART ATTENDANCE</title>
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
                <i class="fa-solid fa-clock-rotate-left"></i>
                <span class="text">History of Attendance</span>
        </div>
        <a href="export.php" class="btn btn-primary" style="margin-top: 1rem" tabindex="-1" role="button" aria-disabled="true">
            <i class="fa-solid fa-download"></i>
            <span class="text">Download History</span>
        </a>

        <table class="content-table">

            <thead>
            <tr>
                        <th>No</th>
                        <th>Name</th>
                        <th>BLE Address</th>
                        <th>Day</th>
                        <th>Date</th>
                        <th>Time</th>
                    </tr>
                    <tbody>
                        <?php
                        $conn = mysqli_connect("localhost", "root", "", "mqtt_log");
                        $sql = "SELECT * FROM datas_ble";
                        $result = $conn->query($sql);
            
                        if ($result->num_rows > 0) {
                            while ($row = $result-> fetch_assoc()) {
                                echo "<tr><td>" . $row["id"] . "</td><td>" . $row["nama"] . "</td><td>" . $row["address"] . "</td><td>" . $row["day_name"] . "</td><td>" . $row["date"] . "</td><td>" . $row["time"] . "</td></tr>"
                            ;}
                        }
                        else {
                            echo "No Results";
                        }
                        $conn->close();
                        ?>                        
                    </tbody>
        </table>
        </div>

    </section>

    <script type="text/javascript" src="script.js"></script>
    <!-- <script src="script.js"></script> -->
</body>
</html>
