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

<?php
  $person = array();
  $person = $admin->getTrashPerson($person_id, "TRASH", FIL_NAME);	
  $output_form = true;
  //$person = $admin->getPerson();


  //pikir mezmunini tekshur
  if (isset($_POST['person'])) {    
    $person['isim'] = $_POST['name'];
    $person['jinsi'] = $_POST['sex'];
    $person['kodi'] = $_POST['code'];
    $person['mewlut'] = $_POST['birth'];
    $person['wapati'] = $_POST['death'];
    $person['jupti'] = $_POST['partner'];
    $person['ata'] = $_POST['father'];
    $person['ana']=$_POST['mother'];
    $person['yurti']=$_POST['placeofbirth'];
    $person['adrisi']=$_POST['address'];
    $person['tel']=$_POST['telnumber'];
    $person['hayati']=$_POST['life'];
    //$person['resim']=$_POST['photo'];
    $person['yeshi']=$_POST['age'];

    $output_form = false;
   if(empty($person['kodi'])||empty($person['isim'])) {
      echo 'shexs ismi yaki kodi yezilmighan.<br />';
      $output_form = true;
    }
   }
    
   if(!$output_form) {
	$admin->modifyTrashPerson($person, $person_id, "TRASH");
    }

  if(isset($_GET['delPrs']))
  {
  	$admin->deletePerson($person_id, TRASH_TABLE, $con, TRUE);
  }
  elseif(isset($_GET['mdfPrs']))
  {
    	$admin->personForm($person, FIL_NAME);	
  }
  elseif(isset($_GET['recPrs']))
  {
	//echo "admin_trash_file bu jemet =".$admin->getJemeti()."<br>";
	$admin->recoverTrash($person_id, $sxs_kodi);
  }
  $admin->displayTrash();
?>
</div>


</body>
</html>

