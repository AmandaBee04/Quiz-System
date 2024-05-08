<?PHP 
# memanggil fail header.php
include ('header.php');
include ('iklan_atas.php');
?>
<!-- antara muka untuk daftar masuk / login -->
<table  width='100%' class='w3-table-all '>
    <tr>
        <td align='center'  width='30%'>
            <h3>Login Pengguna</h3>
            <form action='login.php' method='POST'>

  <label class="w3-text-black"><b>No K/P</b></label>
  <input class="w3-input w3-border w3-round-large" name='nokp' placeholder='040506010203' type="text"><br>
  
  <label class="w3-text-black"><b>Katalaluan</b></label>
  <input class="w3-input w3-border w3-round-large" type='password'  name='katalaluan'>

              <input type='radio' class="w3-radio"    name='jenis' value='murid' checked>
              <label class="w3-text-black"><b>Murid</b></label>

              <input type='radio' class="w3-radio"    name='jenis' value='guru'>
              <label class="w3-text-black"><b>Guru</b></label>
              <br>
              <input class="w3-button w3-black w3-round-large w3-margin-top" type='submit'    value='Login'>
              <a  class="w3-button w3-black w3-round-large w3-margin-top" href='signup.php'>Daftar Murid Baru</a>
            </form>
            <!-- pautan untuk mendaftar murid baru -->
    
        </td>
        <td>
        <!--Senarai set latihan terkini -->
        <h3>Senarai Latihan Terkini</h3> 
        <table border='1' class='w3-table-all w3-hoverable'>
        <tr class='w3-black'>
            <td>Topik</td>
            <td>Kelas</td>
            <td>Nama Guru</td>
        </tr>
        <?PHP
        # memanggil fail connection.php 
        include('connection.php');

        # arahan sql untuk mencari data set soalan yang terkini
        $arahan_latihan="SELECT* FROM set_soalan, guru, kelas
        WHERE
                    set_soalan.nokp_guru        =       guru.nokp_guru
        AND         kelas.nokp_guru             =       guru.nokp_guru
        ORDER BY    set_soalan.tarikh  ASC ";

        # melaksanakan arahan SQL diatas
        $laksana_latihan= mysqli_query($condb,$arahan_latihan);

        # mengambil dan memaparkan senarai set soalan, tingkatan yang terlibat dan guru
        while($rekod=mysqli_fetch_array($laksana_latihan))
        {
            echo " <tr>
            <td>".$rekod['topik']."</td>
            <td>".$rekod['tingkatan']." ".$rekod['nama_kelas']."</td>
            <td>".$rekod['nama_guru']."</td>
        </tr>";
        }
        mysqli_close($condb);
        ?>
        </table>
        </td>
    </tr>
</table>

<?PHP
# Memanggil fail footer.php
include ('footer.php');
?>