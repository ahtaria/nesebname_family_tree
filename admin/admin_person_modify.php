<?php
  define('FIL_NAME',basename(__FILE__));
  define('FIL_SELFNAME',basename(__FILE__));
  require_once 'admin_menu.php';
/*
  if(isset($_GET['pikirId']))
  {
    $pikirId = $_GET['pikirId'];
  }else{
    $pikirId = NULL;
  }
 */ 
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
  $person = array();
  $person = $admin->getPerson();


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
    if (empty($person['kodi'])||empty($person['isim'])) {
      echo 'shexs ismi yaki kodi yezilmighan.<br />';
      //$pikir = $admin->getPikir();
      $output_form = true;
    }
  }
  else {
    $person = $admin->getPerson();
    $output_form = true;
  }
  if (!$output_form) {
	$admin->modifyPerson($person);
  }
  else {
	
  }

  //yezish kozniki
  if($admin->getKodi())
  {
    $admin->personForm($person, FIL_SELFNAME); 
  }

  //pikir mezmunini korsitish
  $admin->displayComment('person');

?>
</div>

</div>


</body>
</html>

