<?php
  define('FIL_NAME',basename(__FILE__));
  require_once'admin_menu.php';
  require_once'error_report.php';

?>

<!DOCTYPE html lang="ug">
<head>
<title>Nesebname</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<link rel="stylesheet" href="../css/resume.css">
<link rel="stylesheet" id="font_css-css" href="../css/font_uyghur.css" type="text/css" media="all">
</head>
<html>
<body class="dir">

	<div>


		<div>  
			<?php
			  if(isset($_GET['delCmmt']))
			  {
				$pikirId = $_GET['pikirId'];
				Admin::delComment($admin->getPikirTb(), $pikirId, $con);
			  }
			  

			  if(isset($_GET['delPrs']))
			  {
				$admin->deletePerson($person_id, $jemeti, $con, NULL);
			  }
			  $admin->display($admin->person);
			?>
		</div>



		<div>  
			<?php 
				//pikir deptiri mezmun tekshur

    			$isim = null;
    			$adris = null;
    			$tel = null;
    			$email = null;
			$pikir = null;
	

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
				$admin->savePkr($isim, $adris, $tel, $email, $pikir);
			  }

			//pikir mezmunini korsitish
			  $admin->displayComment('person');

			//pikir yezish kozniki
			  if($admin->getKodi())
			  {
			    $admin->commentForm($isim, $adris, $tel, $email, $pikir, FIL_NAME);
			  }
			?>

		</div>

	</div>


</body>
</html>

