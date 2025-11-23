<?php
session_start();
$link = mysqli_connect("localhost", "sound-cards", "p0st4l3sS0n0r4s");
/* comprueba la conexi贸n */
if (mysqli_connect_errno()) {
  printf("Connect failed: %s\n", mysqli_connect_error());
  exit();
}
mysqli_select_db($link,"sound-cards");
?>
