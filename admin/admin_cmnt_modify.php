<?php
  define('FIL_NAME',"admin_comment.php");
  define('FIL_SELFNAME',basename(__FILE__));
  require_once 'admin_menu.php';
  if(isset($_GET['pikirId']))
  {
    $pikirId = $_GET['pikirId'];
  }else{
    $pikirId = NULL;
  }
  
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

  //$pikir = $admin->getPikir();

  //pikir mezmunini tekshur
  if (isset($_POST['comment'])) {
    $pikir = $_POST['pikir'];
    $output_form = false;
    if (empty($pikir)) {
      echo 'pikirni yezishni unuttingiz.<br />';
      //$pikir = $admin->getPikir();
      $output_form = true;
    }
  }
  else {
    $output_form = true;
  }
  if (!$output_form) {
	$admin->modifyComment($pikirId, $pikir);
  }

  //pikir yezish kozniki
  $admin->getComment($pikirId, FIL_SELFNAME); 
  //$admin->commentForm($isim, $adris, $tel, $email, $pikir, FIL_SELFNAME);

?>
</div>

</div>


</body>
</html>

