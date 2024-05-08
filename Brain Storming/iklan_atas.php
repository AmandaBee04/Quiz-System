<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
</style>
<body>

<div class='w3-container w3-margin-top w3-margin-bottom'>
<div class="w3-content">
  <img class="mySlides w3-animate-fading w3-image"    src="images/s1.jpg">
  <img class="mySlides w3-animate-fading w3-image"    src="images/s2.jpg">
  <img class="mySlides w3-animate-fading w3-image"    src="images/s3.jpg">
</div>
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>

</body>
</html>
