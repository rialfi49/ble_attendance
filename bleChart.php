<?php 
//index.php
$conn = mysqli_connect("localhost", "root", "", "mqtt_log");
// $sql = "SELECT * FROM new_data";
$sql = "SELECT date, COUNT(date) AS access_per_day FROM datas_ble GROUP BY date ORDER BY date";
$result = $conn->query($sql);
$chart_data = '';
while($row = mysqli_fetch_array($result))
{
//  $chart_data .= "{ datetime:'".$row["datetime"]."', payload:".$row["payload"].", topic:".$row["topic"]."},";
$chart_data .= "{ date:'".$row["date"]."', status:".$row["access_per_day"]."}, ";
//  $chart_data .= "{ datetime:'".$row["datetime"]."', deviceFound:".$row["deviceFound"]."}, ";
}
$chart_data = substr($chart_data, 0, -2);
?>

<!DOCTYPE html>
<!--=== Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <?php include "header.php"; ?>
    <title>CHART | BLE ESP32 FOR SMART ATTENDANCE</title>
    <link rel="shortcut icon" type="image" href="./image/logo unj.png"> 

    <!-- Bootstrap CDN -->
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->

    <script src="https://code.jquery.com/jquery-3.4.0.js"></script>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
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

        <div class="activity">
                <div class="title">
                    <i class="fa-solid fa-chart-simple"></i>
                    <span class="text">Attendance Daily Chart</span>
                </div>
                <div class="container" style="width:900px;">
                    <!-- <h2 class="text-center">WEEKLY CHART</h2>
                    <h3 class="text-center">BLE DOOR ACCESS</h3>   
                    <br /><br /> -->
                    <div id="chart"></div>
                </div>
        </div>
            <!-- </div> -->

    </section>

    <script type="text/javascript" src="script.js"></script>

</body>
</html>
<script>
Morris.Bar({
 element : 'chart',
 data:[<?php echo $chart_data; ?>],
 xkey:'date',
 ykeys:['status'],
 labels:['status'],
//  ykeys:['deviceFound'],
//  labels:['deviceFound'],
//  ykeys:['payload', 'topic'],
//  labels:['payload', 'topic'],
 hideHover:'auto',
 stacked:true
});
</script>
