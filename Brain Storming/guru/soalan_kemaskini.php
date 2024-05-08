<?PHP
#memanggil fail header_guru.php
include('header_guru.php');

# bahagian untuk menyimpan data yang telah dikemaskini
# menyemak kewujudan data GET
if(empty($_GET))
{
die("<script>alert('Akses tanpa kebenaran.');
window.location.href='soalan_daftar.php?no_set=".$_GET['no_set']."&topik=".$_GET['topik']."';</script> ");
}

# menyemak kewujudan data POST
if(!empty($_POST))
{
    # Mengambil data POST
    $soalan     =   mysqli_real_escape_string($condb,$_POST['soalan']);
    $jawapan_a  =   mysqli_real_escape_string($condb,$_POST['jawapan_a']);
    $jawapan_b  =   mysqli_real_escape_string($condb,$_POST['jawapan_b']);
    $jawapan_c  =   mysqli_real_escape_string($condb,$_POST['jawapan_c']);
    $jawapan_d  =   mysqli_real_escape_string($condb,$_POST['jawapan_d']);

    # Menyemak kewujudan data yang telah diambil
if(empty($soalan) or empty($jawapan_a) or empty($jawapan_b)or empty($jawapan_c)or empty($jawapan_d))
       {
           die("<script>alert('Sila lengkapkan maklumat');
           window.history.back();</script>");
       }
       # Arahan untuk mengemaskini soalan dan jawapan
       $arahan_kemaskini="update soalan
       set
       soalan      =   '".$_POST['soalan']."',
       jawapan_a   =   '".$_POST['jawapan_a']."',
       jawapan_b   =   '".$_POST['jawapan_b']."',
       jawapan_c   =   '".$_POST['jawapan_c']."',
       jawapan_d   =   '".$_POST['jawapan_d']."'
       where
       no_soalan   =   '".$_GET['no_soalan']."' ";

       # Melaksanakan arahan untuk mengemaskini soalan
       if(mysqli_query($condb,$arahan_kemaskini))
       {
           # Soalan berjaya dikemaskini
echo "<script>alert('Kemaskini BERJAYA.');
window.location.href='soalan_daftar.php?no_set=".$_GET['no_set']."&topik=".$_GET['topik']."';</script>";

} else{
# Soalan gagal dikemaskini
echo "<script>alert('Kemaskini GAGAL.'); window.location.href='soalan_daftar.php?no_set=".$_GET['no_set']."&topik=".$_GET['topik']."';</script>";

}}
?>
<!-- Bahagian untuk memaparkan soalan yang telah didaftarakan-->
<div class='w3-center w3-panel w3-leftbar w3-border-gray w3-light-gray'>
<h3>Kemaskini Soalan</h3>
</div>
<?PHP include ('../butang_saiz.php'); ?>
<div class='w3-responsive'>
<table width='100%' border='1' id='besar' class='w3-table-all w3-hoverable w3-margin-top'>
    <tr class='w3-black'>
        <td>Soalan</td>
        <td bgcolor='cyan'>Jawapan A (Betul)</td>
        <td bgcolor='pink'>Jawapan B</td>
        <td bgcolor='pink'>Jawapan C</td>
        <td bgcolor='pink'>Jawapan D</td>
        <td></td>
    </tr>
    <tr>
    <!-- Bahagian borang untuk mengemaskini soalan dan jawapan-->
<form action='' method='POST'>

<td><textarea class="w3-input w3-border w3-round-large" name='soalan' rows="4" cols="25">
<?PHP echo $_GET['soalan']; ?></textarea></td>

<td bgcolor='cyan'><textarea class="w3-input w3-border w3-round-large" name='jawapan_a' rows="4" cols="25">
<?PHP echo $_GET['jawapan_a']; ?></textarea></td>

<td bgcolor='pink'><textarea class="w3-input w3-border w3-round-large" name='jawapan_b' rows="4" cols="25">
<?PHP echo $_GET['jawapan_b']; ?></textarea></td>

<td bgcolor='pink'><textarea class="w3-input w3-border w3-round-large" name='jawapan_c' rows="4" cols="25">
<?PHP echo $_GET['jawapan_c']; ?></textarea></td>

<td bgcolor='pink'><textarea class="w3-input w3-border w3-round-large" name='jawapan_d' rows="4" cols="25">
<?PHP echo $_GET['jawapan_d']; ?></textarea></td>

<td><input class='w3-button w3-block w3-black w3-round-large' type='submit'    value='simpan'></td>

</form>
</tr>

<?PHP

#arahan untuk mencari soalan yang berkaitan dengan set soalan yang telah dipilih
$arahan_soalan="select* from soalan
where no_set   =   '".$_GET['no_set']."'
order by no_soalan DESC";

# melaksanakan arahan untuk mencari soalan
$laksana_soalan=mysqli_query($condb,$arahan_soalan);









# pembolehubah $data mengambil data yang ditemui
while ($data=mysqli_fetch_array($laksana_soalan))
{
    # mengumpukkan data yang ditemui kepada tatasusunan $data_get
    $data_get=array(
        'no_set'    =>  $data['no_set'],
        'no_soalan' =>  $data['no_soalan'],
        'topik'     =>  $_GET['topik'],
        'soalan'    =>  $data['soalan'],
        'jawapan_a' =>  $data['jawapan_a'],
        'jawapan_b' =>  $data['jawapan_b'],
        'jawapan_c' =>  $data['jawapan_c'],
        'jawapan_d' =>  $data['jawapan_d']
    );
    # Memaparkan data yang ditemui baris demi baris
    echo "<tr>
        <td>    ".$data['soalan']."     </td>
        <td>    ".$data['jawapan_a']."  </td>
        <td>    ".$data['jawapan_b']."  </td>
        <td>    ".$data['jawapan_c']."  </td>
        <td>    ".$data['jawapan_d']."  </td>
        <td class='w3-center'>

 <a href='soalan_kemaskini.php?".http_build_query($data_get)."' title='Kemaskini'><i class='w3-xxlarge fa fa-pencil-square' aria-hidden='true'></i></a>
 <a href='padam.php?jadual=soalan&medan=no_soalan&kp=".$data['no_soalan']."' title='Padam' > <i class=' w3-xxlarge fa fa-trash' aria-hidden='true'></i></a>

</td>
</tr>";
}
?>

</table>
</div>
<?PHP include('footer_guru.php'); ?>