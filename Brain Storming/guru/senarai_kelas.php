<?PHP
# memanggil fail header_guru.php
include('header_guru.php');

#------------- bahagian menambah data baru -------------

#menyemak kewujudan data POST
if(!empty($_POST))
{
    # Mengambil data POST
    $nama_kelas      =   mysqli_real_escape_string($condb,$_POST['nama_kelas']);
    $tingkatan       =   mysqli_real_escape_string($condb,$_POST['tingkatan']);
    $nokp_guru       =   $_POST['nokp_guru'];

    # menyemak kewujudan data yang di ambil
    if(empty($nama_kelas) or empty($nokp_guru) or empty($tingkatan))
    {
        die("<script>alert('Sila lengkapkan maklumat');
        window.history.back();</script>");
    }

    # arahan untuk memasukkan data kedalam kelas
    $arahan_simpan="insert into kelas
        (tingkatan,nama_kelas,nokp_guru)
        values
        ('$tingkatan','$nama_kelas','$nokp_guru')";
    
    # Melaksanakan arahan memasukkan data
    if(mysqli_query($condb,$arahan_simpan))
    {
        # Data berjaya disimpan
        echo "<script>alert('Pendaftaran BERJAYA.');
        window.location.href='senarai_kelas.php';</script>";
    }
    else
    {
        # Data gagal disimpan
        echo "<script>alert('Pendaftaran GAGAL.');
        window.location.href='senarai_kelas.php';</script>";
    }
}

# ---------- bahagian mengemaskini guru kelas ----------
# menyemak kewujudan data GET
if(!empty($_GET))
{
    # mengambil data GET
    $id_kelas        =   $_GET['id_kelas'];
    $nokp_guru       =   $_GET['nokp_guru_baru'];

    # menyemak kewujudan data yang diambil
    if(empty($id_kelas) or empty($nokp_guru))
    {
        die("<script>alert('Sila lengkapkan maklumat');
        window.history.back();</script>");
    }
    # arahan untuk mengemaskini guru kelas
    $arahan_kemaskini="update kelas set
    nokp_guru='$nokp_guru'
    where
    id_kelas='$id_kelas' ";

    # melaksanakan arahan untuk mengemaskini guru kelas
    if(mysqli_query($condb,$arahan_kemaskini))
    {
        # Kemaskini Berjaya
        echo "<script>alert('Kemaskani BERJAYA.');
        window.location.href='senarai_kelas.php';</script>";
    }
    else
    {
        # Kemaskini Gagal
        echo "<script>alert('Kemaskani GAGAL.');
        window.location.href='senarai_kelas.php';</script>";
    }
}
?>

<!-- bahagian untuk memaparkan senarai kelas dan guru -->
<div class='w3-center w3-panel w3-leftbar w3-border-gray w3-light-gray'>
<h3>Senarai Kelas</h3>
</div>
<?PHP include ('../butang_saiz.php'); ?>
<div class='w3-responsive'>
<table width='100%' border='1' id='besar' class='w3-table-all w3-hoverable w3-margin-top'>

    <tr class='w3-black'>
        <td>Tingkatan</td>
        <td>Nama Kelas</td>
        <td>Guru Subjek</td>
        <td>Tukar Guru Baru</td>
        <td>Tindakan</td>
    </tr>
    <tr>
    <!-- borang untuk mendaftar kelas baru -->
        <form name='tambah_kelas' action='' method='POST'>
            <td><input class='w3-input w3-border w3-round-large' type='text'  name='tingkatan'></td>
            <td><input class='w3-input w3-border w3-round-large' type='text'  name='nama_kelas'></td>

            <td>
            <select class='w3-select w3-border w3-round-large' name='nokp_guru'>
                <option value selected disable>Pilih</option>
                <?PHP
                # arahan untuk mencari semua data dari jadual jenis_guru
                $sql="select* from guru";

                #melaksanakan arahan mencari data
                $laksana_arahan_cari=mysqli_query($condb,$sql);

                # pemboleh ubah $rekod_guru mengambil data yang ditemui baris demi baris
                while ($rekod_guru=mysqli_fetch_array($laksana_arahan_cari))
                {
                    # memaparkan data yang ditemui dalam element <option></option>
                    echo "<option value=".$rekod_guru['nokp_guru'].">".$rekod_guru['nama_guru']."</option>";
                }

                ?>
            </select>
            </td>

<td></td>
<td><input class='w3-button w3-block w3-black w3-round-large' type='submit' value='Tambah Kelas Baru'></td>
</form>
</tr>

<?PHP
# Arahan untuk mencari data yang sepadan dari jadual kelas dan guru
$arahan_cari_kelas="select* from kelas, guru
where
kelas.nokp_guru     =       guru.nokp_guru
order by nama_kelas ASC";

# melaksanakan arahan untuk mencari data
$laksana_cari_kelas=mysqli_query($condb,$arahan_cari_kelas);

# Pembolehubah $data mengambil data yang ditemui
while ($data=mysqli_fetch_array($laksana_cari_kelas))
{
    # memaparkan data baris demi baris
    echo "<tr>
                <td>".$data['tingkatan']."</td>
                <td>".$data['nama_kelas']."</td>
                <td>".$data['nama_guru']."</td>
                <td>
                <form action='' method='GET'>
                <input type='hidden' name='id_kelas' value='".$data['id_kelas']."'>
                <select class='w3-select w3-border w3-round-large' name='nokp_guru_baru'>
                        <option value selected disable>Pilih</option>";

         # arahan untuk mencari semua data dari jadual jenis_guru
         $sql2="select* from guru";

         # Melaksanakan arahan mencari data
         $laksana_arahan_cari2=mysqli_query($condb,$sql2);

         # pemboleh ubah $rekod_guru mengambil data yang ditemui baris demi baris
         while ($rekod_guru2=mysqli_fetch_array($laksana_arahan_cari2))
         {
#memaparkan data yang ditemui dalam element <option></option>
echo "<option value=".$rekod_guru2['nokp_guru'].">".$rekod_guru2['nama_guru']."</option>";
         }

         echo"</select></td>
         <td class='w3-center'>

 <input class='w3-button w3-black w3-round-large' type='submit' value='Kemaskini Guru Subjek'>

 <button class='w3-button w3-black w3-round-large' onclick=\"location.href='padam.php?jadual=kelas&medan=id_kelas&kp=".$data['id_kelas']."'\" type='button'>Padam Kelas</button>

        </td>
    </tr>
    </form>";   
}
?>
</table>
</div>
<?PHP include('footer_guru.php'); ?>