<?php

$conn = mysqli_connect("localhost", "root", "", "mqtt_log");
$sql = "SELECT * FROM user";
$result = $conn->query($sql);

//foto
/* $gambar = upload();
if(!$gambar) {
	return false;
} */

// upload gambar

/* function upload() {
	$namaFile = $_FILES['berkas']['name'];
	$tmpName = $_FILES['berkas']['tmp_name'];
	} ;

	move_uploaded_file($tmpName, 'uploads/' . $namaFile);
	return $namaFile;

	header('Location: list-pendaftar.php?status=sukses');
 */

// cek apakah tombol daftar sudah diklik atau blum?
if(isset($_POST['daftar'])){
	
	// ambil data dari formulir
	$nama = $_POST['owner'];
	$addr = $_POST['address'];

/* 	$berkas = $_FILES['berkas']; */
	
	// buat query
	$sql = "INSERT INTO user (owner, address) VALUE ('$nama', '$addr')";
	$query = mysqli_query($conn, $sql);
	
	// apakah query simpan berhasil?
	if( $query ) {
		// kalau berhasil alihkan ke halaman index.php dengan status=sukses
		header('Location: user.php?status=sukses');
	} else {
		// kalau gagal alihkan ke halaman indek.ph dengan status=gagal
		header('Location: index.php?status=gagal');
	}
	
	
} else {
	die("Akses dilarang...");
}

?>
