<?php
include('../../config/config.php');


   $tenloaisanpham = $_POST['tendanhmuc'];
   $thutu = $_POST['thutu'];

   if(isset($_POST['themdanhmuc'])){
    $sql_them = "INSERT INTO tbl_danhmuc(tendanhmuc,thutu) VALUES('".$tenloaisanpham."','".$thutu."')";
    mysqli_query($mysqli,$sql_them);
    header('location:../../index.php?action=quanlydanhmucsanpham&query=them');
   
   
   }elseif (isset($_POST['suadanhmuc'])){
      $sql_update = "UPDATE tbl_danhmuc SET tendanhmuc='". $tenloaisanpham."',thutu='".$thutu."' WHERE id_danhmuc='$_GET[iddanhmuc]'";
      mysqli_query($mysqli,$sql_update);
      header('location:../../index.php?action=quanlydanhmucsanpham&query=them');
   
   
   }else{
      $id = $_GET['iddanhmuc'];
      $sql_xoa = "DELETE FROM tbl_danhmuc WHERE id_danhmuc ='".$id."'";
      mysqli_query($mysqli,$sql_xoa);
      header('location:../../index.php?action=quanlydanhmucsanpham&query=them');
   }
?>