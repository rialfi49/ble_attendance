<!DOCTYPE html>
<!--=== Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <?php include "header.php"; ?>
    

    <title>DASHBOARD | BLE ESP32 FOR SMART ATTENDANCE</title>
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
            
<!--             <div class="date">
                <input type="date">
            </div> -->
<!--             <div class="time">
                <span id="hours">00</span>
                <span>:</span>
                <span id="minutes">00</span>
                <span>:</span>
                <span id="seconds">00</span>
                <span id="session">AM</span>
            </div> -->

            <div class="search-box">
                <i class="uil uil-search"></i>
                <input type="text" placeholder="Search here...">
            </div>
        
            <!--<img src="images/profile.jpg" alt="">-->
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i>
                    <span class="text">Dashboard</span>
                </div>

                <div class="boxes">
                    <div class="box box1">
                        <i class="fa-solid fa-door-open"></i>
                        <span class="text">Amount of Attendance</span>
                        <span class="number">
                        <?php
                            $conn = mysqli_connect("localhost", "root", "", "mqtt_log");

                            $sql = "SELECT * from datas_ble";

                            if ($result = mysqli_query($conn, $sql)) {

                                // Return the number of rows in result set
                                $rowcount = mysqli_num_rows( $result );
                                
                                // Display result
                                printf("  %d\n", $rowcount);
                            }
                        ?>
                        </span>
                        <p class="text-muted">Last Week</p>
                    </div>
                    <div class="box box2">
                        <i class="fa-solid fa-users"></i>
                        <span class="text">Total Verified Employee</span>
                        <span class="number">
                        <?php
                            $conn = mysqli_connect("localhost", "root", "", "mqtt_log");

                            $sql = "SELECT * from user";

                            if ($result = mysqli_query($conn, $sql)) {

                                // Return the number of rows in result set
                                $rowcount = mysqli_num_rows( $result );
                                
                                // Display result
                                printf("  %d\n", $rowcount);
                            }
                        ?>
                        </span>
                        <p class="text-muted">Last 1 year</p>
                    </div>
                </div>
            </div>

            <div class="activity">
                <div class="title">
                    <i class="uil uil-clock-three"></i>
                    <span class="text">Recent Presence</span>
                </div>
                <table>
                    <tr>
                        <th>No</th>
<!--                         <th>Topic</th> -->
                        <th>Name</th>
                        <th>BLE_Address</th>
                        <th>Date</th>
                    </tr>
                    <?php
                    $conn = mysqli_connect("localhost", "root", "", "mqtt_log");
                    $sql = "SELECT * FROM datas_ble";
                    $result = $conn->query($sql);
        
                    if ($result->num_rows > 0) {
                        while ($row = $result-> fetch_assoc()) {
                            echo "<tr><td>" . $row["id"] . "</td><td>" . $row["nama"] . "</td><td>" . $row["address"] . "</td><td>" . $row["date"] . "</td></tr>"
                            /* echo "<tr><td>" . $row["id"] . "</td><td>" . $row["topic"] . "</td><td>" . $row["deviceFound"] . "</td><td>" . $row["datetime"] . "</td></tr>" */
                        ;}
                    }
                    else {
                        echo "No Results";
                    }
                    $conn->close();
                    ?>
                </table>
                </div>
            </div>
        </div>
    </section>

    

    <script type="text/javascript" src="script.js"></script>

    <!-- <script src="script.js"></script> -->
</body>
</html>
