<?php
  define('FIL_NAME',basename(__FILE__));
  require_once 'admin_menu.php';
?>

<!DOCTYPE html lang="ug">
<head>
<title>Nesebname</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"> 
<link rel="stylesheet" href="../css/resume.css">
</head>
<html>
<body>

<div>
  <div>  
<?php
  if(isset($_GET['delCmmt']))
  {
  	$pikirId = $_GET['pikirId'];
  	Admin::delComment($admin->getPikirTb(), $pikirId, $con);
  }
//pikir mezmunini korsitish
  $admin->displayComment('family');
?>
</div>

</div>


</body>
</html>

