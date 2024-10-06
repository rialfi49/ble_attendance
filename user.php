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
            
<!--             <div class="date">
                <input type="date">
            </div> -->
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
                <i class="fa-solid fa-user-check"></i>
                <span class="text">VERIFIED EMPLOYEE</span>
        </div>
<!--         <a href="form-daftar.php" class="btn btn-success" tabindex="-1" role="button" aria-disabled="true">
            <i class="fa-solid fa-plus"></i>
            <span class="text" style="margin-top: 20px;">Add New User</span>
        </a> -->
        <table class="content-table">
        <a href="form-daftar.php" class="btn btn-success" style="margin-top: 1rem"  tabindex="-1" role="button" aria-disabled="true">
            <i class="fa-solid fa-plus"></i>
            <span class="text">Add New User</span>
        </a>
            <thead>
                <tr>
                    <th>No</th>
                    <th>Owner Name</th>
                    <th>Address Device</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $conn = mysqli_connect("localhost", "root", "", "mqtt_log");
                $sql = "SELECT * FROM user";
                $result = $conn->query($sql);
                
                if ($result->num_rows > 0) {
                while ($row = $result-> fetch_assoc()) {
                    echo "<tr>
                    <td>" . $row["id"] . "</td>
                    <td>" . $row["owner"] . "</td>
                    <td>" . $row["address"] . "</td>
                    </tr>";
                    }
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
