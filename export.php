<?php
    // convert file ke bentuk excel
    header("Content-type:application/vnd-ms-excel");
    header("Content-Disposition: attachment; filename=Data Kehadiran.xls");
?>

<h3>DATA KEHADIRAN</h3>
<table border="1">
    <tr>
        <th>No</th>
        <th>Name</th>
        <th>BLE Device Address</th>
        <th>Attendance Day</th>
        <th>Attendance Date</th>
        <th>Attendance Time</th>
    </tr>
    <?php
     $conn = mysqli_connect("localhost", "root", "", "mqtt_log");
     $data = mysqli_query($conn, "SELECT * FROM datas_ble");
     while($dt = mysqli_fetch_array($data)){
    ?>
    <tr>
        <td><?php echo $dt['id'] ?></td>
        <td><?php echo $dt['nama'] ?></td>
        <td><?php echo $dt['address'] ?></td>
        <td><?php echo $dt['day_name'] ?></td>
        <td><?php echo $dt['date'] ?></td>
        <td><?php echo $dt['time'] ?></td>
    </tr>
    <?php
        }
    ?>
</table>