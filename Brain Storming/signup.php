<?PHP
# memangill fail header.php dan connection.php
include('header.php');
include('connection.php');

# menguji kewujudan data POST yang dihantar oleh bahagian borang di bawah
if(!empty($_POST))
{
    # mengambil dan menapis data POST
    $nama              = mysqli_real_escape_string($condb,$_POST['nama']);
    $nokp              = mysqli_real_escape_string($condb,$_POST['nokp']);
    $katalaluan        = mysqli_real_escape_string($condb,$_POST['katalaluan']);
    $id_kelas          = $_POST['id_kelas'];

    # menyemak kewujudan data yang dimasukkan.
    if(empty($nama) or empty($nokp) or empty($katalaluan) or empty($id_kelas))
    {
        die("<script>alert('Sila lengkapan maklumat');
        window.history.back():</script>");
    }
    #had atas dan had bawah : sebagai data validation kepada nokp
    if (strlen($nokp)!=12 or !is_numeric($nokp))
    {
        die("<script>alert('Ralat No K/P.');
        window,history.back();</script>");
    }
    # arahan untuk menyimpan data murid yang dimasukkan
    $arahan_simpan="insert into murid
    (nama_murid,nokp_murid,katalaluan_murid,id_kelas)
    values
    ('$nama','$nokp','$katalaluan','$id_kelas')";

    #laksanakan arahan dalam block if
    if(mysqli_query($condb,$arahan_simpan))
    {
        # data berjaya disimpan. papar popup
        echo "<script>alert('Pendaftaran BERJAYA.');
        window.location.href='index.php';</script>";
    }
    else
    {
        # data gagal disimpan papar popup
        echo "<script>alert('Pendaftaran GAGAL.');
        window.history.back();</script>";
    }

}
?>


<div class="w3-row w3-white w3-margin-top w3-round-xlarge w3-card">
  <div class="w3-third w3-container">
<!-- Bahagian borang untuk mendaftar murid baru -->
<h3>Pendaftaran Murid Baru</h3>
<form action='' method='POST'>
         
    <label class="w3-text-black"><b>Nama Murid</b></label>
    <input class="w3-input w3-border w3-round-large" type='text' name='nama'><br>

    <label class="w3-text-black"><b>No K/P Murid</b></label>
    <input class="w3-input w3-border w3-round-large" type='text' placeholder='040506010203' name='nokp'><br>

    <label class="w3-text-black"><b>Katalaluan</b></label>
    <input class="w3-input w3-border w3-round-large" type='password' name='katalaluan'><br>

    <label class="w3-text-black"><b>Kelas</b></label>
    <select class="w3-select w3-border w3-round-large" name ='id_kelas'>
              
    <option value selected disable>Pilih</option>
                  
<?PHP
# arahan untuk mencari semua data dari jadual kelas
$sql="select* from kelas";

# Melaksanakan arahan mencari data
$laksana_arahan_cari = mysqli_query($condb,$sql);

# pemboleh ubah $rekod_bilik mengambil data yang ditemui baris demi baris
while ($rekod_bilik = mysqli_fetch_array($laksana_arahan_cari))
{
# memaparkan data yang ditemui dalam element <option></option>
echo "<option value=".$rekod_bilik['id_kelas'].">".$rekod_bilik['tingkatan']."
".$rekod_bilik['nama_kelas']."</option>";
}
?>

</select><br>
<input class="w3-button w3-black w3-round-large w3-margin-top w3-margin-bottom" type='submit' value='Daftar'>
<br><a class="w3-button w3-black w3-round-large w3-margin-top w3-margin-bottom" href='index.php'>Kembali ke Laman Log Masuk</a>
</form>

  </div>
  <div class="w3-twothird w3-container">

    <img class="w3-image"    src="images/s1.jpg">

  </div>
  </div>


<?PHP
mysqli_close($condb);
include ('footer.php');
?>

