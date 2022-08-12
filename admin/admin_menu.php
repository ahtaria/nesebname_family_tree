<?php
  require_once 'admin_class.php';
  require_once 'error_report.php';

  $jemeti = NULL;
  $sxs_kodi= NULL;
  $person_id = NULL;
  /*
  $prinf = false;
  $cmnt = false;
  $add = false;
  $modify = false;
  $trash = false;
  */
  //$menulst = NULL;

  if(isset($_GET['jemeti'])) $jemeti = $_GET['jemeti'];
  if(isset($_GET['sxs_kodi'])) $sxs_kodi=$_GET['sxs_kodi'];
  if(isset($_GET['person_id'])) $person_id = $_GET['person_id'];
  //if(isset($_GET['menulst'])) $menulst = $_GET['menulst'];
  

  $admin = Admin::getInstance($jemeti, $sxs_kodi, $con);

//pikir deptiri mezmun tekshur
/*
    $isim = null;
    $adris = null;
    $tel = null;
    $email = null;
    $pikir = null;
"<?php echo $lang["confirmDelete"].\"<br>\"?>".
*/

?>
<script>
    function confirmationDelete(delName){
    var del=confirm(delName);
    if (del==true){
        window.location.href=delName;
    }
    return del;
}
</script>
<!DOCTYPE html lang="ug">
<head>
<title>Nesebname</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"> 
<link rel="stylesheet" type="text/css" href="../css/stdtheme.css">

</head>
<html>
<body class="dir">

<div class="topnav" >

<div class="home">  
	<!--<a href="./admin.php"><?php echo $lang["home_bt"];?></a>-->
 <?php  
	if(FIL_NAME == ADMIN_FILE){
	  echo "<a style=\"background-color:green;\"";
	}else{
	  echo "<a ";
	}
	  echo " href=\"./".ADMIN_FILE."?jemeti=" . $admin->getJemeti() . "&sxs_kodi=" .$admin->getKodi(). "\">". $lang["home_bt"]."</a>";
	  //echo " href=\"./".ADMIN_FILE."\">". $lang["home_bt"]."</a>";

	if(FIL_NAME == ADMIN_COMMENT_FILE || FIL_NAME == CMNT_MODF_FIL_NAME){
	  echo "<a style=\"background-color:green;\"";
	}else{
	  echo "<a ";
	}
	  echo " href=\"./".ADMIN_COMMENT_FILE."?jemeti=" . $admin->getJemeti() . "&sxs_kodi=" .$admin->getKodi(). "\">". $lang["admincomment"]."</a>";

	if(FIL_NAME == ADMIN_PERSON_MODIFY_FILE){
	  echo "<a style=\"background-color:green;\"";
	}else{
	  echo "<a ";
	} 
	echo " href=\"./".ADMIN_PERSON_MODIFY_FILE."?jemeti=" . $admin->getJemeti() . "&sxs_kodi=" .$admin->getKodi() . "\">". $lang["modf_prn"]."</a>";

	//add person
	if(FIL_NAME == ADMIN_PERSON_ADD_FILE){
	  echo "<a style=\"background-color:green;\"";
	}else{
	  echo "<a ";
	} 
	echo " href=\"./".ADMIN_PERSON_ADD_FILE."?jemeti=" . $admin->getJemeti() . "&sxs_kodi=" .$admin->getKodi() . "\">". $lang["add_prn"]."</a>";
	
	//trash
	if(FIL_NAME == ADMIN_TRASH_FILE){
	  echo "<a style=\"background-color:green;\"";
	}else{
	  echo "<a ";
	} 
	echo " href=\"./".ADMIN_TRASH_FILE."?jemeti=" . $admin->getJemeti() . "&sxs_kodi=" .$admin->getKodi() . "\">". $lang["trash"]."</a>";

  ?>
	<!-- delete person -->
	<a onclick='confirmationDelete("<?php echo "admin.php?jemeti=" . $admin->getJemeti() . "&sxs_kodi=" .$admin->getKodi() . "&person_id=" .$admin->getId() . "&delPrs=" . 'true';?>")'><?php echo $lang["delete"];?></a>	

	<a href="./admin_logout.php" title="Logout"><?php echo $lang["logout"];?></a>
	

<br />

</div>
<div>
<?php echo $lang["family"];?>: &nbsp;  
    <?php
    $admin->displayJemet(FIL_NAME);
  ?>
</div>
	
<div>  
<?php echo $lang["ancestors"];?> :&nbsp;
 <?php
    $admin->displayTr(FIL_NAME);
  ?>
</div>

<div>  
<?php echo $lang["descentdant"];?>: &nbsp;
  <?php
	$admin->displayChild(FIL_NAME, true);
//echo "onclick=\"confirmationDelete(\"admin.php?jemeti=" . $admin->getJemeti() . "&person_id=" .$admin->getId() . "&delPrs=true\")\""."<br>";
  ?>
</div>

</div>


</body>
</html>

