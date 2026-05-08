<?php

include "koneksi.php";

$id = $_GET['id'];

$hapus = mysqli_query($conn, "DELETE FROM categories WHERE kd_kat='$id'");

if ($hapus) {

    echo "<script>alert('Data berhasil dihapus!')</script>";
    header("Location: kategori_produk.php");
    exit;

} else {

    echo "<script>alert('Data gagal dihapus!')</script>";
    header("Location: kategori_produk.php");
    exit;

}

?>
