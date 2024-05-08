<?PHP
# Memulakan fungsi session
session_start();

# Memanggil fail guard_guru.php
include ('guard_guru.php');

# Memanggil fail connection dari folder utama
include ('../connection.php');

# Menguji pembolehubah session tahap mempunyai nilai atau tidak
if(empty($_SESSION['tahap']))
{
    # proses untuk mendapatkan tahap pengguna yang sedang login samada admin atau guru
    $arahan_semak_tahap="select* from guru where
    nokp_guru   =   '".$_SESSION['nokp_guru']."'
    limit 1";
    $laksana_semak_tahap=mysqli_query($condb,$arahan_semak_tahap);
    $data=mysqli_fetch_array($laksana_semak_tahap);
    $_SESSION['tahap']=$data['tahap'];
}
?>

<!doctype HTML>
<html>
     <head>
         <title>Quiz | BRAIN STORMING</title>
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=shadow-multiple">
         <style>
         .w3-lobster {
             font-family: "Lobster", Sans-serif;
         }
</style>
         
     </head>
<body class='w3-pale-blue'>

<!-- header -->
<div class="w3-container w3-card w3-white w3-margin-bottom">
  <h1 class="w3-xxlarge font-effect-shadow-multiple w3-text-black"><b>
  
  <i class="fa fa-graduation-cap" aria-hidden="true"></i>
  BRAIN STORMING APPS : Bahagian Guru / Adminstrator
  
  </b></h1>

</div>

<!-- menu -->



<div class="w3-bar w3-white ">
  <a href='index.php' class="w3-bar-item w3-button">Laman Utama</a>
  <a href='../logout.php' class="w3-bar-item w3-button w3-right w3-black">Logout</a>

<?PHP if ($_SESSION['tahap']=='ADMIN'){ ?>
  <div class="w3-dropdown-hover">
    <button class="w3-button">Admin</button>
    <div class="w3-dropdown-content w3-bar-block w3-card-4">
      <a href='guru_senarai.php' class="w3-bar-item w3-button">Maklumat Guru</a>
      <a href='guru_senarai.php' class="w3-bar-item w3-button">Pengurusan Murid</a>
      <a href='senarai_kelas.php' class="w3-bar-item w3-button">Pengurusan Kelas</a>
    </div>
  </div>
<?PHP } ?>

<div class="w3-dropdown-hover">
    <button class="w3-button">Guru</button>
    <div class="w3-dropdown-content w3-bar-block w3-card-4">
      <a href='soalan_set.php' class="w3-bar-item w3-button">Pengurusan Soalan</a>
      <a href='analisis.php' class="w3-bar-item w3-button">Analisis Prestasi</a>
    </div>

<!-- isi kandungan -->
<div class="w3-container">


  <p>Isi Kandungan</p>



</div>

<?PHP include ('../iklan_bawah.php'); ?>
<!-- footer -->
<div class="w3-container w3-sand">
  <p>Hakcipta &copy 2020-2021 : Amanda Bee</p>

  <p>Penafian : Pihak admin tidak bertanggungjawab atas kerugian dan kehilangan 
  akibat penggunaan data yang terkandung dalam sistem ini</p>

</div>
<?PHP mysqli_close($condb); ?>

</body>
</html> 