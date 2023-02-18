<?php
include('includes/config.php');
error_reporting(0);
$id=$_POST['id'];
$email=$_POST['email'];
$nama=$_POST['nama'];
$alamat=$_POST['alamat'];
$telepon=$_POST['telepon'];

$sql 	= "UPDATE member SET nama_user='$nama',email='$email',alamat='$alamat',telp='$telepon' WHERE id_user='$id'";
$query 	= mysqli_query($koneksidb,$sql);
if($query){
	echo "<script type='text/javascript'>
			alert('Berhasil ubah data.'); 
			document.location = 'reg-users.php'; 
		</script>";
}else {
			echo "No Error : ".mysqli_errno($koneksidb);
			echo "<br/>";
			echo "Pesan Error : ".mysqli_error($koneksidb);

	echo "<script type='text/javascript'>
			alert('Terjadi kesalahan, silahkan coba lagi!.'); 
			document.location = 'useredit.php?id=$id'; 
		</script>";
}
?>