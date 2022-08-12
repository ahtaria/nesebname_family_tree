<?php
session_start();
// remove all session variables
session_unset();

// destroy the session
session_destroy();

header('LOCATION:./admin_login.php'); die();
?>

<!DOCTYPE html>
<html>
<body>
</body>
</html> 
