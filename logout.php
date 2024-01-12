<?php


 session_start(); 
 $_SESSION = array();

 if(isset($_COOKIE[session_name()]) ){

setcookie(session_name(),'',time()-86400,'/' );

 }
  


session_destroy();
header('location:index.php? logout=yes');


//this code can use as log out page in any system 





?>