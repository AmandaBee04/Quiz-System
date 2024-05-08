<?PHP
# Memanggil header_guru.php
include('header_guru.php');
?>
<!-- sub tajuk laman -->
<div class='w3-center w3-panel w3-leftbar w3-border-gray w3-light-gray'>
<h3>Analisis Prestasi Murid</h3>
</div>

<div class="w3-row">
  <div class="w3-third w3-container ">
  </div>

  <div class="w3-third w3-container w3-white">
  <!-- Borang untuk memilih kelas dan set soalan-->
<form class='w3-margin' action='' method='POST'>

<!-- Memaparkan senarai kelas yang diajar oleh guru yang sedang login-->
<label class="w3-text-black"><b>Kelas</b></label>
<select class="w3-select w3-border w3-round-large" name='id_kelas'>
        <option value selected disable>Pilih</option>
    <?PHP
    if($_SESSION['tahap']=='ADMIN')
    {
        # Jika guru yang sedang login adalah admin
        # arahan untuk mencari semua kelas
        $sql="select* from kelas, guru
        where
        kelas.nokp_guru      =     guru.nokp_guru";
    }
    else
    {
        # Sebaliknya Jika guru yang sedang login bukan admin
        # arahan untuk mencari semua kelas yang diajar oleh guru tersebut sahaja
        $sql="select* from kelas, guru
        where
               kelas.nokp_guru      =     guru.nokp_guru
        and    kelas.nokp_guru      =     '".$_SESSION['nokp_guru']."' ";
    }

    # Melaksanakan arahan mencari data
    $laksana_arahan_cari=mysqli_query($condb,$sql);

    # pemboleh ubah $rekod mengambil data yang ditemui baris demi baris
    while ($rekod=mysqli_fetch_array($laksana_arahan_cari))
    {
        # memaparkan data yang ditemui dalam element <option></option>
        echo "<option value=".$rekod['id_kelas'].">
             ".$rekod['tingkatan']." ".$rekod['nama_kelas']."</option> ";
    }

?>
</select>
<br>

<!--memaparkan set soalan yang pernah dimasukkan oleh guru-->
<label class="w3-text-black"><b>Topik</b></label>
<select class="w3-select w3-border w3-round-large" name='no_set'>
        <option value selected disable>Pilih</option>
    <?PHP
    if($_SESSION['tahap']=='ADMIN')
    {
        # jika admin.
        # arahan untuk memaparkan semua set soalan
        $sql2="select* from set_soalan, guru
        where
        set_soalan.nokp_guru        =      guru.nokp_guru ";
    }
    else
    {
        # sebaliknya jika bukan admin
        # arahan untuk memaparkan set soalan yang dihasilkan oleh guru tersebut sahaja
        $sql2="select* from set_soalan, guru
        where
               set_soalan.nokp_guru        =      guru.nokp_guru
        and    set_soalan.nokp_guru        =      '".$_SESSION['nokp_guru']."' ";
    }

    # Melaksanakan arahan mencari data
    $laksana_arahan_cari2=mysqli_query($condb,$sql2);

    # pemboleh ubah $rekod mengambil data yang ditemui baris demi baris
    while ($rekod2=mysqli_fetch_array($laksana_arahan_cari2))
    {
        # memaparkan data yang ditemui dalam element <option></option>
        echo "<option value=".$rekod2['no_set'].">
             ".$rekod2['topik']."</option>";
    }
?>
</select>
<br>
<input class='w3-button w3-margin-top w3-block w3-black w3-round-large' type='submit' value = 'Papar Keputusan'>
</form>
  </div>

  <div class="w3-third w3-container">
  </div>
</div>


<?PHP
#----------- bahagian untuk memaparkan senarai nama murid, skor dan jumlah markah.

#menyemak kewujudan data POST (tingkatan dan topik latihan) yang di hantar melalui borang diatas
if(!empty($_POST))
{
    # mengambil nilai POST
    $id_kelas         =      $_POST['id_kelas'];
    $no_set           =      $_POST['no_set'];

    # ---- bahagian untuk mendapatkan nama kelas berdasarkan id_kelas yang dihantar
    # arahan untuk mencari semua data kelas berdasarkan id_kelas yang dipilih
    $arahan_kelas="select* from kelas where id_kelas='$id_kelas'";

    # Melaksanakan arahan carian di atas
    $laksana_kelas    =      mysqli_query($condb,$arahan_kelas);

    # pembolehubah data1 mengambil data yang ditemui
    $data1            =      mysqli_fetch_array($laksana_kelas);

    # Umpukan gabungan data tingkatan dan nama kelas
    $nama_kelas       =      $data1['tingkatan'].$data1['nama_kelas'];

    #----- bahagian untuk mendapatkan nama topik set latihan berdasarkan no_set yang dihantar
        # Arahan untuk mencari semua data set_soalan berdasarkan no_set yang dipilih
        $arahan_topik="select* from set_soalan where no_set='$no_set'";

        # Melaksanakan arahan untuk mencari di atas
        $laksana_topik    =      mysqli_query($condb,$arahan_topik);

        # mengambil data set_soalan yang ditemui
        $data2            =      mysqli_fetch_array($laksana_topik);

        # Umpukan data topik
        $nama_topik       =      $data2['topik'];

        # arahan sql untuk memilih pelajar berdasarkan id_kelas yang dihantar
        $arahan_pilih="select*
                   from murid,kelas
                   where
                           murid.id_kelas             =      kelas.id_kelas
                   and     murid.id_kelas             =      '$id_kelas'
                   order by murid.nama_murid ASC";

        #melaksanakan arahan untuk memilih pelajar
        $laksana_pilih    =      mysqli_query($condb,$arahan_pilih);

        # Jika bilangan rekod yang ditemui lebih besar atau sama dengan 1
        if(mysqli_num_rows($laksana_pilih)>=1)
        {
            # papar maklumat carian nama kelas dan topik
            echo"
            <br>Kelas : $nama_kelas
            <br>Topik : $nama_topik
            <br><button class='w3-button w3-black w3-round-large' onclick='window.print()'>Cetak Keputusan</button>";
            include ('../butang_saiz.php');
            echo"<div class='w3-responsive'><table border='1' id='besar' class='w3-table-all w3-hoverable w3-margin-top'>
            <tr class='w3-black'>
                <td>Nama Murid</td>
                <td>Nokp Murid</td>
                <td>Skor</td>
                <td>Markah</td>
            </tr>";
        }
        else
        {
            echo "tiada data yang ditemui bagi kelas tersebut";
        }
        
# fungsi skor menerima data no_set soalan dan nokp murid
function skor($no_set,$nokp_murid)
{
        # memanggil fail connection dari folder luaran
        include ('../connection.php');

        # arahan untuk mendapatkan data jawapan murid berdasarkan set soalan dan nokp murid
        $arahan_skor="SELECT*
        FROM jawapan_murid,set_soalan,soalan
        WHERE
                set_soalan.no_set           =   soalan.no_set
        AND     jawapan_murid.no_soalan     =   soalan.no_soalan
        AND     jawapan_murid.nokp_murid    =   '$nokp_murid'
        AND     set_soalan.no_set           =   '$no_set'   ";

        # melaksanakan arahan diatas
        $laksana_skor     =      mysqli_query($condb,$arahan_skor);

        # mengambil bilangan jawapan yang ditemui
        $bil_jawapan      =      mysqli_num_rows($laksana_skor);
        $bil_betul=0;

        #jika bilangan jawapan yang ditemui >= 1
        if($bil_jawapan>=1)
        {
        # pembolehubah rekod mengambil data yang ditemui
        while($rekod=mysqli_fetch_array($laksana_skor))
            {
                    #mengira bilangan jawapan yang betul
                    switch($rekod['catatan'])
                {
                        case 'BETUL'    : $bil_betul++; break;
                        default         : break;
                }
            }

        # Mengira markah berdasarkan bilangan jawapan betul
        $markah=$bil_betul/$bil_jawapan*100;

        # Memaparkan skor dan jumlah % markah
        echo "  <td>".$bil_betul." / ".$bil_jawapan."</td>
                <td>".number_format($markah,0)." %</td> ";
    }
    else
    echo "<td></td> <td>Belum Jawab</td>";
}
# mengambil data yang ditemui
    while($data=mysqli_fetch_array($laksana_pilih))
    {
        # Memaparkan data yang ditemui baris demi baris.
        echo "<tr>
        <td>".$data['nama_murid']."</td>
        <td>".$data['nokp_murid']."</td>";

        # Memanggil fungsi skor di atas dengan menghantar data no_set soalan dan nokp murid
        skor($no_set,$data['nokp_murid']);
    echo "</tr>";
    }
}
 ?>
</table>
<?PHP include('footer_guru.php'); ?> 

