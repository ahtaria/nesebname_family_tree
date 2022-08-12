<?php 
    session_start();
 
      if(isset($_POST['submit'])){
        $username = $_POST['username']; $password = $_POST['password'];
	if($username === 'nur' && $password === '2875271'){
	  $_SESSION['user_login'] = true; header('LOCATION:index.php'); die();
	}else
	{
          echo "<div class='alert alert-danger'>Username and Password do not match.</div>";
        }

      }
 require_once'./include.php';
?>

<!DOCTYPE html>
<html>
<head>
<!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"> 
<style>
body {font-family: Arial, Helvetica, sans-serif;background-color:#eafae8}
body.dir {
    direction: rtl;
    text-align: center;
}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100px;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 10%;
  border-radius: 10%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
}
</style>
</head>
<body class="dir">

<!--<h2><?php echo $lang["login_form"] ?></h2>-->

<form action="" method="post">
  <div class="imgcontainer">
    <img src="./pic/avatar_nur.png" alt="<?php echo $lang["avatar"] ?>" class="avatar">
  </div>

  <div class="container">
<dl class="basicInfo-left">
    <dt><label for="uname"><b><?php echo $lang["uname"] ?>:</b></label></dt>
    <dd><input type="text" placeholder="<?php echo $lang["ent_uname"] ?>" name="username" required></dd>

    <dt><label for="psw"><b><?php echo $lang["psw"] ?>:</b></label></dt>
    <dd><input type="password" placeholder="<?php echo $lang["ent_psw"] ?>" name="password" required></dd>
        
    <button type="submit" name="submit"><?php echo $lang["login"] ?></button>
    <button type="button" class="cancelbtn"><?php echo $lang["cancle"] ?></button>
    <label>
	 <br>
      <input type="checkbox" checked="checked" name="remember"><?php echo $lang["remember"] ?>
    </label>
</dl>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    
    <!--<span>Bet qurghuchi:exter tel:18868574477 email:ahtaria@hotmail.com adris:zhejiang yiwu</span>-->
  </div>
  <div class="container" style="background-color:#f1f1f1">
    
    <span><a href="http://beian.miit.gov.cn/" target="_blank">浙ICP备15038052号</a></span>
  </div>
</form>

</body>
</html>

