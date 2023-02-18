<?php
# Konek ke Web Server Lokal
$myHost	= "localhost";
$myUser	= "id18330309_root";
$myPass	= "Eggphotography1.";
$myDbs	= "id18330309_db_foto";
$pagedesc = "Sistem Informasi Penyediaan Jasa Fotografi Berbasis Web";
$koneksidb = mysqli_connect( $myHost, $myUser, $myPass, $myDbs);
if (! $koneksidb) {
  echo "Failed Connection !";
}

?>