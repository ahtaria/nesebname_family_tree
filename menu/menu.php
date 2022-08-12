<?php
  require_once './class/shexs_class.php';

  if(isset($_GET['jemeti']))
{ 
  $jemeti = $_GET['jemeti'];
  if(isset($_GET['sxs_kodi']))
  { 
    $sxs_kodi=$_GET['sxs_kodi'];
  }
  else
  {
    $sxs_kodi = NULL;
  }
}
else
{
  $jemeti = NULL;
  $sxs_kodi = NULL;
}
 
  $shexs = Shexs::getInstance($jemeti, $sxs_kodi, $con);

//pikir deptiri mezmun tekshur
    $isim = null;
    $adris = null;
    $tel = null;
    $email = null;
    $pikir = null;

?>

<!DOCTYPE html lang="ug">
<head>
<title>Nesebname</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"> 
<link rel="stylesheet" type="text/css" href="./css/stdtheme.css">
<style>
body.dir {
    direction: rtl;
    text-align: right;
}
</style>
</head>
<html>
<body class="dir">

<div class="topnav">

<div class="home">  
<a href="./index.php" title="Home"><?php echo $lang["home_bt"]?></a>
<a href="./logout.php" title="Logout"><?php echo $lang["logout"];?></a>
<br />
</div>
<div>
<?php echo $lang["family"]?>:&nbsp;  
    <?php
    $shexs->displayJemet(FIL_NAME);
  ?>
</div>
	
<div>  
 <?php echo $lang["ancestors"]?>:&nbsp;
 <?php
    $shexs->displayTr(FIL_NAME);
  ?>
</div>

<div>  
<?php echo $lang["descentdant"]?>:&nbsp;
  <?php
	$shexs->displayChild(FIL_NAME);
  ?>
</div>

</div>


</body>
</html>

