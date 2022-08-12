<?php

 	class BaseClass
	{

	  protected static $_instance = NULL;

	  /**
	  * Prevent object cloning
	  */
	  private function  __clone() { }
	  //protected $lan = array();
	  public $person = array();
	  protected $id = null;

          protected $kodi = null;
          protected $isim = null;
	  protected $jinsi= null;
	  protected $mewlut=null;
	  protected $wapati=null;
	  protected $jupti_kodi=null;
	  protected $jupti= null;
	  protected $ata_kodi=null;
	  protected $ata = null;
	  protected $ana_kodi=null;
	  protected $ana = null;
	  protected $yurti=null;
	  protected $adrisi=null;
	  protected $tel  = null;
	  protected $hayati=null;
	  protected $resim=null;
	  protected $yeshi=null;
	  protected $jismi=false;

	  protected $jemeti = null;
	  protected $pikirTb = null;

	  protected $con_db = null;
	  //protected $prev_kodi = null;
	  //protected $prev_ismi = null;
	  protected $children = array();
	  protected $child_cnt= 0;
	  protected $jemet = array();
	  protected $jemet_cnt= 0;
	  protected $jemet_init=false;
	  protected $init = false;

	//shexs pikir deptiri uchuri
	  protected $p_isim = null;
	  protected $p_tel = null;
	  protected $p_adris = null;
	  protected $p_email =null;
	  protected $p_waqit = null;         
	  protected $pikir = null;

	  /*  
	    Prevent direct object creation           
	  */                            
          public function __construct(
			$g_jemet = null, $g_kodi = null, $g_con = null) 
          {
		if ( $g_con == null ) return;

	    $this->con_db = $g_con;
	    global $lang;

            //mysqli_query($con,"SET CHARACTER SET utf8");
            mysqli_query($this->con_db,"SET NAMES 'utf8'");

		$result = mysqli_query($this->con_db, "SELECT * FROM JEMET");
		if ( $result == false ) 
		{
			echo "JEMET xatirlenmigen (mysqli_query) !<br>";
		}
		else
		{
		    $this->jemet_cnt = $result->num_rows;
		    while ( $row = $result->fetch_array(MYSQLI_ASSOC) )
		   {
		      $this->jemet[] = $row;
			if ( $g_jemet == $row['kodi'] ) {
				$this->pikirTb = $row['pikir'];
			   if($g_kodi == null)
			     {
				$g_kodi = $row['bash'];
			     }
				//echo $this->pikirTb."<br>";
			}
			//echo $row['kodi'].": ".$row['isim']."<br>";
		   }
		
			$this->jemet_init = true;	
		}

	    if ( $g_jemet == null || $g_kodi == null ) return;

	    $this->kodi = $g_kodi;
	    $this->jemeti = $g_jemet;
/*

	    if ( strlen($g_kodi) <= 3 ) {
	      $this->prev_kodi = $g_kodi;
	    }else {
	      $this->prev_kodi = substr( $g_kodi, 0, strlen($g_kodi)-3 );
	    }
*/
            $result = mysqli_query($this->con_db, "SELECT * FROM $this->jemeti WHERE kodi='$this->kodi'");

	    if ( $result == false ) 
	    {
	      echo $this->kodi.": bu koddiki shexs mewjut EMES(mysqli_query) !<br>";
	    }
	    else
	    {
                $row = mysqli_fetch_array($result);
		$this->person = $row;
		  $this->isim = $row['isim'];
		  if ( (substr($this->kodi, -1) == 'E') || (substr($this->kodi, -1) == 'O') )
		  {
		    $this->person['jinsi'] = $lang['male'];
		  }
		  else if( (substr($this->kodi, -1) == 'A') || (substr($this->kodi, -1) == 'Q') )
		  {
		    $this->person['jinsi'] = $lang['female'];
		  }
		  $this->id = $row['id'];
		  $this->mewlut = $row['mewlut'];
		  $this->wapati = $row['wapati'];
		  $this->jupti_kodi=$row['jupti_kodi'];
		  $this->jupti= $row['jupti'];
		  $this->ata_kodi= $row['ata_kodi'];
		  $this->ata  = $row['ata'];
		  $this->ana_kodi= $row['ana_kodi'];
		  $this->ana  = $row['ana'];
		  $this->yurti= $row['yurti'];
		  $this->adrisi=$row['adrisi'];
		  $this->tel  = $row['tel'];
		  $this->hayati=$row['hayati'];
		  $this->resim= $row['resim'];
		  $this->yeshi= $row['yeshi'];
		  $this->jismi = $row['hayat'];
		  
		  $kod_len = strlen($this->kodi);

		//echo "init children list. <br>";
		  $query = "select $this->jemeti.kodi, $this->jemeti.isim from $this->jemeti where length($this->jemeti.kodi)=$kod_len+3 and substring($this->jemeti.kodi,1,$kod_len)='$this->kodi'";
		  $result = $this->con_db->query($query);
	          if ( $result == false ) 
	          {
	            echo $this->kodi.": bu koddning baliliri yoq!<br>";
	          }
		  else
		  {
		    $this->child_cnt = $result->num_rows;
			//echo "this person(".$this->kodi.") has ".$this->child_cnt." children.<br>";
		    while ( $row = $result->fetch_array(MYSQLI_ASSOC) )
		    {
		      $this->children[] = $row;
		      //echo $row['kodi'].": ".$row['isim']."<br>";
		    }
		  }
		  
		$this->init = true;
            }
		//echo "baseclass cunstructed<br>";
          }
        
	  /**
	  * Returns new or existing Singleton instance
	  * @return Singleton
	  
	  public static function getInstance(
			$g_jemeti = null, $g_kodi = null, $g_con = null)
	  {
	    if(null !== static::$_instance){
              return static::$_instance;
	    }
            static::$_instance = new Shexs($g_jemeti, $g_kodi, $g_con);
            return static::$_instance;
    	  }
          */

          public function display($person = null)
          {
	    global $lang;
	    if ( !$person ) return false;
/*
	    if ( $this->jinsi == true ) {
		$tmjinsi = $lang["male"];
	    }else {
		$tmjinsi = $lang["female"];
	    }

	    if ( $this->jismi == false ) {
	      $tmjismi = "";
	    }else {
	      $tmjismi = $lang["live"];
	    }
*/
?>
		<div id="content">

		  <div id="personname" class="shadow-stl">
			<?php echo /*$this->kodi . ": " .*/ $person['isim']."<br>"; ?>
		  </div>
		  <div class="resume shadow-stl">
		    <dl class="basicInfo-left">
		      <dt><?php //if ($tmjismi <> null){ echo "";?></dt> 
		        <dd><?php //echo $tmjismi; }?></dd>
		      <dt><?php if ($person['jinsi'] <> null){ /*echo $lang['sex'].":";*/?></dt>
			<dd><?php echo $person['jinsi']; }?></dd>
		      <dt><?php if ($person['yeshi'] <> null){ echo $lang['age'].":"; ?></dt> 
			<dd><?php echo $person['yeshi']; }?></dd>
		      <dt><?php if ($person['yurti'] <> null){ echo $lang['placeofbirth'].":"; ?></dt>
			<dd><?php echo $person['yurti']; }?></dd>
		      <dt><?php if ($person['ata'] <> null){ echo $lang['father'].":"; ?></dt>
			<dd><?php echo $person['ata_kodi'] ."-". $person['ata']; }?></dd>
		      <dt><?php if ($person['ana'] <> null){ echo $lang["mother"].":"; ?></dt>
			<dd><?php echo $person['ana_kodi'] ."-". $person['ana']; }?></dd>
		    </dl>
	
		    <dl class="basicInfo-right">
		      <dt><?php if ($person['mewlut'] <> null){ echo $lang["birth"].":"; ?></dt>
			<dd><?php echo $person['mewlut']; }?></dd>
		      <dt><?php if ($person['wapati'] <> null){ echo $lang["death"].":"; ?></dt>
			<dd><?php echo $person['wapati']; }?></dd>
		      <dt><?php if ($person['jupti'] <> null){ echo $lang["partner"].":"; ?></dt>
			<dd><?php echo $person['jupti_kodi'] . "-" . $person['jupti']; }?></dd>
		      <dt><?php if ($person['adrisi'] <> null){ echo $lang["address"].":"; ?></dt>
			<dd><?php echo $person['adrisi']; }?></dd>
		      <dt><?php if ($person['tel'] <> null){ echo $lang["telnumber"].":"; ?></dt>
			<dd><?php echo $person['tel']; }?></dd>
		    </dl>
		  </div>
		    <div class="hayati-theme">
		      <?php if ($person['hayati'] <> null) echo $lang["life"].":"; ?>
		    </div>
		    <div class="hayati shadow-stl">
		      <?php echo $person['hayati']; ?> 
		    </div>
		    <div>
		      <?php  //if ($this->resim <> null) echo $lang["photo"].":"; ?></td> <td><?php //echo $this->resim; ?>
		    </div>
		</div>
<?php
          }

	  public function displayTr($filename)
	  {
	    if ( $this->init == false ) return;
	    $kod_len = strlen($this->kodi);
	    $kodi = $this->jemeti;
	    for($i=1; $i <= $kod_len; $i=$i+3)
	    {
		$kodi = substr( $this->kodi, 0, $i );

		$result = $this->con_db->query("select $this->jemeti.kodi, $this->jemeti.isim from $this->jemeti where $this->jemeti.kodi='$kodi'");
		if ( $result == false ) 
	        {
	            echo $this->kodi.": bu kod inawetsiz!!!<br>";
	        }
		else
		{
		    while ( $row = $result->fetch_array(MYSQLI_ASSOC) )
		    {
		      echo "<a href=\"./".$filename."?jemeti=" . $this->jemeti . "&sxs_kodi=" . $row['kodi'] . "\">" . $row['isim'] . /*$row['kodi'] . */"</a>>";
		      //echo $row['kodi'].": ".$row['isim']."<br>";
		    }
		}


	    }
	    echo "<br>";
	  }

 	  public function displayJemet($filename)
	  {
	    if ( $this->jemet_init == false ) return;

	     for ( $i=0; $this->jemet_cnt != $i; $i++ )
	    {
//add person
		  if($this->jemet[$i]['kodi'] == $this->jemeti){
	  	  echo "<a style=\"background-color:green;\"";
		  }else{
	  	  echo "<a ";
		  } 
		  echo "href=\"./".$filename."?jemeti=" . $this->jemet[$i]['kodi'] . "&sxs_kodi=" . $this->jemet[$i]['bash'] . "\">" . $this->jemet[$i]['isim'] /*. $this->children[$i]['kodi']*/ . "</a>";
	    }

	    echo "<br>";
	  }

	  public function displayChild($filename, $is_admin=false)
	  {
	    if ( $this->jemet_init == false ) return;
	    if ( $is_admin )
	    {

	    	for ( $i=0; $this->child_cnt != $i; $i++ )
		    {
		      echo "<a href=\"./".$filename."?jemeti=" . $this->jemeti . "&sxs_kodi=" . $this->children[$i]['kodi'] . "\">" . $this->children[$i]['isim'] . $this->children[$i]['kodi'] . "</a>";
		    }
	    }
	    else
	    {
		for ( $i=0; $this->child_cnt != $i; $i++ )
		    {
		      echo "<a href=\"./".$filename."?jemeti=" . $this->jemeti . "&sxs_kodi=" . $this->children[$i]['kodi'] . "\">" . $this->children[$i]['isim'] /*. $this->children[$i]['kodi']*/ . "</a>";
		    }
	    }

	    echo "<br>";
	  }

	  public function display_comment($g_row=null)
          {
		global $lang;

		  $p_isim = $g_row['p_isim'];
		  $tel = $g_row['tel'];
		  $adris = $g_row['adris'];
		  $email =$g_row['email'];
		  $waqit = $g_row['waqit'];
		  $pikir = $g_row['pikir'];
?>
		<div id="comment">

		  <div>
		  <dl class="comment-contact">
		    <dt><?php if ($p_isim <> null){ echo $lang["name"].":"; ?></dt> <dd><?php echo $p_isim; }?></dd>
		    <dt><?php if ($tel <> null){ echo $lang["telnumber"].":"; ?></dt> <dd><?php echo $tel; }?></dd>
		    <dt><?php if ($adris <> null){ echo $lang["address"].":"; ?></dt> <dd><?php echo $adris; }?></dd>
		    <dt><?php if ($email <> null){ echo $lang["email"].":"; ?></dt> <dd><?php echo $email; }?></dd>
		    <dt><?php if ($waqit <> null){ echo $lang["datetime"].":"; ?></dt> <dd><?php echo $waqit; }?></dd>
		  </dl>
		  </div>
		  <div class="comment_content">
		    <?php //if ($pikir <> null) echo $lang["comment"]; 
		     echo $pikir; ?>
		  </div>
		</div>
<?php
	  }
	
	  public function commentForm(
		$isim=null, $adris=null, $tel=null, $email=null, $pikir=null, $g_flname=null, $g_pikirId=null)
          {
		global $lang;
?>
	    <div id="form-stl">	
  		<form method="post" action="<?php echo $g_flname ."?jemeti=".$this->jemeti."&sxs_kodi=".$this->kodi . "&pikirId=" . $g_pikirId; ?>" accept-charset="UTF-8">
		<fieldset>
		<legend>
		  <?php echo $lang["comment"]; ?>
		</legend>
    		<label style="color:red;" for="isim">*<?php echo $lang["writer_name"]?>:</label><br />
		<input id="isim" name="isim" type="text" value="<?php echo $isim; ?>" size="30" required /><br />
		<label for="adris"><?php echo $lang["writer_address"]?>:</label><br />
    		<input id="adris" name="adris" type="text" value="<?php echo $adris; ?>" size="30" /><br />
 		<label for="tel"><?php echo $lang["writer_telnumber"]?>:</label><br />
    		<input id="tel" name="tel" type="text" value="<?php echo $tel; ?>" size="30" /><br />
 		<label for="email"><?php echo $lang["writer_email"]?>:</label><br />
    		<input id="email" name="email" type="text" value="<?php echo $email; ?>" size="30" /><br />
 
    		<label style="color:red;" for="pikir">*<?php echo $lang["comment"]?>:</label><br />
    		<textarea style="width:600px; height:200px" placeholder="<?php echo $lang["comment_sp"] ?>" id="pikir" accept-charset="UTF-8" name="pikir" required><?php echo $pikir; ?></textarea><br />
    		<input type="submit" name="comment" value="<?php echo $lang["save"]?>" />
		</fieldset>
  		</form>
	  </div>
<?php

		return $this->kodi;
	  }
	  public function getId()
          {
		return $this->id;
	  }
	  public function getKodi()
          {
		return $this->kodi;
	  }
	  public function getJemeti()
          {
		return $this->jemeti;
	  }
	  public function getPikirTb()
          {
		return $this->pikirTb;
	  }
	  public function getP_isim()
          {
		return $this->p_isim;
	  }
	  public function getP_tel() 
          {
		return $this->p_tel; 
	  }
	  public function getP_adris() 
          {
		return $this->p_adris;
	  }
	  public function getP_email()
          {
		return $this->p_email;
	  }
	  public function getP_waqit()
          {
		return $this->p_waqit;
	  }
	  public function getPikir()   
          {
		return $this->pikir;  
	  }
 	  public function savePkr(
		$g_isim=null, $g_adris=null, $g_tel=null, $g_email=null, $g_pikir=null)
          {
		//$waqit = "0000-01-01";
		$waqit = date("Y-m-d H:i:s");

		$query = "INSERT INTO $this->pikirTb (kodi, isim, p_isim, tel, adris, email, waqit, pikir) VALUES ('$this->kodi', '$this->isim', '$g_isim', '$g_tel', '$g_adris', '$g_email', '$waqit', '$g_pikir' )"; 
		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	           echo "pikirni saqlash meghlub!!! <br>".$query."<br>"."waqit".$waqit."<br>";
	        }
		else
		{
		  //echo "pikirni saqlandi  <br/>";

		}
	  }

	  public function footline()   
          {
		?>
		<div id="footline" >
  			Bet qurghuchi:exter tel:18868574477  email:ahtaria@hotmail.com adris:zhejiang yiwu
		</div>
		<?php
	  }

	  public function __destruct()
          {
	    //echo "shexs destructed<br>";
          }
        }
?>
