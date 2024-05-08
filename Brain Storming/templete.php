<?PHP 
# memulakan fungsi session_start bagi membolehkan pembolehubah super global
# session digunakan
session_start();
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
<body class='w3-pale-blue w3-card'> 

<!-- header -->
<div class="w3-white w3-card w3-margin-bottom">
  <h1 class="w3-xxxlarge font-effect-shadow-multiple w3-text-black" align='center'><b>
  
  <i class="fa fa-graduation-cap" aria-hidden="true"></i>
  BRAIN STORMING APPS
  
  </b></h1>

</div>

<!-- menu -->
<div class="w3-bar w3-white">

  <!-- Menu bahagian Murid -->
<?PHP if(!empty ($_SESSION) and basename($_SERVER['PHP_SELF']) != 'index.php'){ ?>
<?PHP echo "<span class='w3-bar-item'>Nama Murid : ". $_SESSION['nama_murid']."</span>"; ?>
<a class="w3-bar-item w3-button" href='pilih_latihan.php'>Laman Utama</a>
<a class="w3-bar-item w3-button" href='../logout.php'>logout</a>

<?PHP }
else
echo "<span class='w3-bar-item'><b>Selamat Datang. Sila Log Masuk</b></span>";
?>
</div>

<!-- isi kandungan -->
<div class='w3-container'>

    isi kandungan

</div>

<!-- footer -->
<div class='w3-container w3-sand'>
    <!-- Gunakan ayat yang lebih sesuai pada bahagian ini -->
<p>Hakcipta &copy 2020-2021 : Amanda Bee</p>

<p>Penafian : Pihak admin tidak bertanggungjawab atas kerugian dan kehilangan 
akibat penggunaan data yang terkandung dalam sistem ini</p>
</div>

</body>
</html> 
