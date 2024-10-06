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
            
            <div class="date">
                <input type="date">
            </div>

            <div class="search-box">
                <i class="uil uil-search"></i>
                <input type="text" placeholder="Search here...">
            </div>
        
            <!--<img src="images/profile.jpg" alt="">-->
        </div>
        <div>
        <div class="title">
            <i class="fa-solid fa-address-card"></i>
            <span class="text">ADD NEW USER</span>
        </div>

		<form action="proses-pendaftaran.php" method="POST" enctype="multipart/form-data">
			<div class="mb-3 mt-3">
				<label for="owner" class="form-label">Owner Nama</label>
				<input type="text" class="form-control" id="owner" placeholder="Nama" name="owner"/>
			</div>
			<div class="mb-3 mt-3">
				<label for="address" class="form-label">Address Device</label>
				<input type="text" class="form-control" id="address" placeholder="Address of Device" name="address"/>
			</div>
			
			<button type="submit" class="btn btn-primary" value= "daftar" name="daftar">Submit</button>
			<button type="reset" class="btn btn-primary" value= "Reset" name="daftar">Ulangi</button>
			<a href="./user.php" class="btn btn-primary" tabindex="-1" role="button" aria-disabled="true">Kembali</a>
		</form>
        </div>

    </section>

    <script type="text/javascript" src="script.js"></script>
    <!-- <script src="script.js"></script> -->
</body>
</html>
