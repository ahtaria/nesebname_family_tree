<?php
    session_start();
    if(isset($_SESSION['user_login'])) {    
    }elseif(isset($_SESSION['admin_login'])) {
	header('LOCATION:./admin/admin.php'); die();
    } else
    {
	header('LOCATION:login.php'); die();
    }

?> 
<?php
  define('FIL_NAME', basename(__FILE__));
  require_once'./menu/menu.php';
  require_once'./admin/error_report.php';

 ?>

<!DOCTYPE html lang="ug">
<head>
<title>Nesebname</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"> 
<link rel="stylesheet" href="./css/resume.css">
<link rel="stylesheet" id="font_css-css" href="./css/font_uyghur.css" type="text/css" media="all">
</head>
<html>
<body class="dir">
<div>  
    <?php
      $shexs->display($shexs->person);
    ?>
</div>


<div>  
<?php
//pikir mezmunini tekshur
  if (isset($_POST['comment'])) {
    $isim = $_POST['isim'];
    $adris = $_POST['adris'];
    $tel = $_POST['tel'];
    $email = $_POST['email'];
    $pikir = $_POST['pikir'];
    $output_form = false;

    if (empty($isim) && empty($pikir)) {
      // We know both $subject AND $text are blank 
      echo 'isim ve pikir yezishni unuttingiz.<br />';
      $output_form = true;
    }

    if (empty($isim) && (!empty($pikir))) {
      echo 'isimni yezishni unuttingiz.<br />';
      $output_form = true;
    }

    if ((!empty($isim)) && empty($pikir)) {
      echo 'pikirni yezishni unuttingiz.<br />';
      $output_form = true;
    }
  }
  else {
    $output_form = true;
  }

  if (!$output_form) {
	$shexs->savePkr($isim, $adris, $tel, $email, $pikir);
  }
//pikir mezmunini korsitish
  $shexs->displayPkr();
//pikir yezish kozniki
  if($shexs->getKodi())
  {
    $shexs->commentForm($isim, $adris, $tel, $email, $pikir, FIL_NAME);
  }
?>
</div>
<?php //$shexs->footline(); ?>
</body>
</html>

