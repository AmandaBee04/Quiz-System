<?PHP 
# memanggil fail header_guru.php
include('header_guru.php'); 

# menyemak kewujudan data GET untuk mengelak fail diakses tanpa data GET
if(empty($_GET))
{
    die("<script>alert('Akses tanpa kebenaran.');
         window.location.href='murid_senarai.php';</script>");
}

if(!empty($_POST))
{
    # mengambil data baru yang diubah suai melalui borang di bawah
    $nama           =   mysqli_real_escape_string($condb,$_POST['nama_baru']);
    $nokp           =   mysqli_real_escape_string($condb,$_POST['nokp_baru']);
    $katalaluan     =   mysqli_real_escape_string($condb,$_POST['katalaluan_baru']);
    $tahap          =   $_POST['tahap']; 

    # menyemak kewujudan data yang diambil 
    if(empty($nama) or empty($nokp) or empty($katalaluan)or empty($tahap))
    {
        # jika data tidak wujud, aturcara akan terhenti disini.
        die("<script>alert('Sila lengkapkan maklumat');
        window.history.back();</script>");
    }

    # Had atas & had bawah. data validation bagi nokp guru
    if(strlen($nokp)!=12 or !is_numeric($nokp))
    {
        die("<script>alert('Ralat No K/P.');
        window.history.back();</script>");
    }
    
    # arahan untuk mengemaskini data guru
    $arahan_kemaskini="update guru set
    nama_guru           =   '$nama',
    nokp_guru           =   '$nokp',
    katalaluan_guru     =   '$katalaluan',
    tahap               =   '$tahap'
    where
    nokp_guru           =   '".$_GET['nokp_guru']."'";

    # melaksanakan arahan untuk mengemaskini data guru ke dalam jadual
    if(mysqli_query($condb,$arahan_kemaskini))
    {
        # data berjaya dikemaskini
        echo "<script>alert('Kemaskini BERJAYA.');
        window.location.href='guru_senarai.php';</script>";
    }
    else
    {
        # data gagal dikemaskini
        echo "<script>alert('Kemaskini GAGAL.');
        window.location.href='guru_senarai.php';</script>";
    }
}
?>

<!-- Bahagian untuk memaparkan senarai guru-->
<div class='w3-center w3-panel w3-leftbar w3-border-gray w3-light-gray'>
<h3>Senarai Guru</h3>
</div>
<?PHP include ('../butang_saiz.php'); ?>
<div class='w3-responsive'>
<table width='100%' border='1' id='besar' class='w3-table-all w3-hoverable w3-margin-top'>
    <tr class='w3-black'>
        <td>Nama</td>
        <td>Nokp</td>
        <td>katalaluan</td>
        <td>Tahap</td>
        <td>tindakan</td>       
    </tr>
    <tr>
    <!-- borang untuk mendaftar guru baru -->
        <form action='' method='POST'>
            <td><input class="w3-input w3-border w3-round-large" type='text'         name='nama_baru'            value='<?PHP echo $_GET['nama_guru']; ?>'></td>
            <td><input class="w3-input w3-border w3-round-large" type='text'         name='nokp_baru'            value='<?PHP echo $_GET['nokp_guru']; ?>'></td>
            <td><input class="w3-input w3-border w3-round-large" type='password'     name='katalaluan_baru'      value='<?PHP echo $_GET['katalaluan_guru']; ?>'></td>
            <td>
                <select class="w3-select w3-border w3-round-large"name='tahap'>
                    <option value selected disabled>Pilih</option>
                    <option value='GURU'>GURU</option>
                    <option value='ADMIN'>ADMIN</option>
            
                </select>
            </td>
            <td><input class='w3-button w3-block w3-black w3-round-large' type='submit' value='simpan'></td>
        </form> 
    </tr>
<?PHP
# arahan SQL untuk memilih data dari jadual guru
$arahan_cari_guru="select* from guru order by tahap ASC";

# melaksanakan arahan SQL diatas
$laksana_cari_guru=mysqli_query($condb,$arahan_cari_guru);

# mengambil semua data yang ditemui 
while ($data=mysqli_fetch_array($laksana_cari_guru))
{
    # umpuk data kedalam tatasusunan.
    $data_guru=array(
        'nama_guru'            =>      $data['nama_guru'],
        'nokp_guru'            =>      $data['nokp_guru'],
        'katalaluan_guru'      =>      $data['katalaluan_guru']
    );
    
    # memaparkan data dalam bentuk jadual baris demi baris
    echo "<tr>
        <td>".$data['nama_guru']."</td>
        <td>".$data['nokp_guru']."</td>
        <td>".$data['katalaluan_guru']."</td>
        <td>".$data['tahap']."</td>
        <td class='w3-center'>
              <a href='guru_kemaskini.php?".http_build_query($data_guru)."' title='Kemaskini'><i class='w3-xxlarge fa fa-pencil-square' aria-hidden='true'></i></a> </a>
              <a href='padam.php?jadual=guru&medan=nokp_guru&kp=".$data['nokp_guru']."' title='Padam' > <i class=' w3-xxlarge fa fa-trash' aria-hidden='true'></i></a></a>
        </td> 
    </tr>";
}
?>
</table>
</div>
<?PHP include('footer_guru.php'); ?>