<br>
<!-- fungsi memgubah saiz tulisan bagi kepelbagaian pengguna-->
<script>
function resizeText(multiplier) {
    var elem = document.getElementById("besar");
    var currentSize = elem.style.fontSize || 1;
    if(multiplier==2)
    {
        elem.style.fontSize = "1em";
    }
    else
    {
        elem.style.fontSize = ( parseFloat(currentSize) + (multiplier * 0.2)) + "em";
    }
}
</script>

<!-- Kod untuk butang mengubah saiz tulisan -->
| Ubah Saiz Tulisan |
<input class='w3-button w3-black w3-round-large' name='reSize1' type='button' value='reset' onClick="resizeText(2)" />
<input class='w3-button w3-black w3-round-large' name='reSize' type='button' value='&nbsp;+&nbsp;' onClick="resizeText(1)" />
<input class='w3-button w3-black w3-round-large' name='reSize2' type='button' value='&nbsp;-&nbsp;' onClick="resizeText(-1)" />
|