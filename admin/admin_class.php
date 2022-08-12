<?php
	include './admin_include.php';

 	class Admin extends BaseClass
	{

	  //protected static $_instance = NULL;

	  /**
	  * Prevent object cloning
	  */
	  final private function  __clone() { }

	  /*  
	    Prevent direct object creation           
	  */                            
          public function __construct(
			$g_jemet = null, $g_kodi = null, $g_con = null) 
          {
		parent::__construct($g_jemet, $g_kodi, $g_con);
		if ( $g_con == null ) return;

		//echo "Admin cunstructed<br>";
          }
        
	  /**
	  * Returns new or existing Singleton instance
	  * @return Singleton
	  */
	  final public static function getInstance(
			$g_jemeti = null, $g_kodi = null, $g_con = null)
	  {
	    if(null !== static::$_instance){
              return static::$_instance;
	    }
            static::$_instance = new Admin($g_jemeti, $g_kodi, $g_con);
            return static::$_instance;
    	  }
	
	/*
          public function display()
          {
	              }

	  public function displayTr()
	  {
	  }
         */
	  static function delComment($pikirTb, $id, $con_db)
	  {
		$query = "DELETE FROM $pikirTb WHERE id ='$id'"; 

		$result = $con_db->query($query);
		if ( $result == false ) 
	        {
	        	echo "pikirni ochurush meghlub <br/>";
	        }
		else
		{
			echo "pikirni ochurdi <br/>";
		}
	  }


	  public function displayComment($g_range=null)
          {
		if($g_range == 'person')
		{
		  $query = "SELECT * FROM $this->pikirTb WHERE kodi='$this->kodi'";   
		}
		else if($g_range == 'family')
		{
		  $query = "SELECT * FROM $this->pikirTb"; 
		}	


		global $lang;
		
		$result = $this->con_db->query($query);
	    if ( $result == false ) 
	    {
	      //echo $this->kodi.": bu koddiki shexsge pikir yezilmighan!jemet comm<br>";
	    }
	    else
	    {
                while ( $row = mysqli_fetch_array($result) ) 
		{
		  $this->display_comment($row);
		  $isim  = $row['isim'];
		  $kodi  = $row['kodi'];
?>
		<div>
		<dl style="margin:0 50">
		   <dt style="float:right;"><?php if ($isim <> null){ echo $lang["name"]; ?></dt> 
			<dd style="float:right;">
			  <?php 
			  //echo $isim;} 
			  echo "<a href=\"./".ADMIN_FILE."?jemeti=" . $this->jemeti . "&sxs_kodi=" . $row['kodi'] . "\">" . $isim .$kodi. /*$row['kodi'] . */"</a>";}
			  ?>
			</dd>
		   <!--<dt style="float:right;"><?php if ($kodi <> null){ echo ""; ?></dt> <dd style="float:right;"><?php echo $kodi; }?></dd>-->
		   <dt>
		    <?php echo "<a href=\"./".FIL_NAME."?pikirId=" . $row['id'] . "&sxs_kodi=" . $row['kodi']. "&delCmmt=" .'true'."&jemeti=".$this->jemeti ."\">" . $lang["delete"] . "</a>";?>
		   </dt>
		   <dt>
		    <?php echo "<a href=\"./".CMNT_MODF_FIL_NAME."?jemeti=" . $this->jemeti . "&pikirId=" . $row['id'] ."\">" . "&nbsp".$lang["modify"] . "</a>";?>
		   </dt>
		</dl>
		<br>
		</div>
<?php
		}
       	    }
	  }


	public function getComment($pikirId=null, $g_flname=null)
          {
	
	    $query = "SELECT * FROM $this->pikirTb WHERE id='$pikirId'"; 
		
	    $result = $this->con_db->query($query);

	    if ( $result == false ) 
	    {
	      //echo $this->kodi.": bu koddiki shexsge pikir yezilmighan!<br>";
	    }

	    else
	    {
                $row = mysqli_fetch_array($result); 
		  $this->p_isim = $row['p_isim'];
		  $this->p_tel = $row['tel'];
		  $this->p_adris = $row['adris'];
		  $this->p_email =$row['email'];
		  $this->p_waqit = $row['waqit'];
		  $this->pikir = $row['pikir'];
		  $this->commentForm($this->p_isim, $this->p_adris, $this->p_tel, $this->p_email, $this->pikir, $g_flname, $pikirId);
	    }
	  return;
	}

	  /*
	  public function displayJemet()
	  {
	  }

	  public function kodi()
          {
		echo $this-kodi;
	  }
	  public function jemeti()
          {
		echo $this-jemeti;
	  }

	  public function displayPkr()
          {
	  }
	  public function savePkr(
		$g_isim=null, $g_adris=null, $g_tel=null, $g_email=null, $g_pikir=null)
          {
	  }
	*/
	  public function modifyComment(
		$g_pikirId=null, $g_pikir=null)
          {
		$query = "UPDATE $this->pikirTb SET pikir = '$g_pikir' WHERE id = '$g_pikirId'"; 

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "pikirni ozgertish meghlub! <br/>";
	        }
		else
		{

		}
	  }
/*



*/

	  public function modifyPerson(
		array $g_person=null)
          {
		$query = "UPDATE $this->jemeti SET 
			  isim = '$g_person[isim]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "isim ozgertish meghlub! <br/>";
			return false;
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  kodi = '$g_person[kodi]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "kodi ozgertish meghlub! <br/>";
			return false;
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  ana_kodi = '$g_person[ana_kodi]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ana_kodi ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  ana = '$g_person[ana]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ana ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  yurti = '$g_person[yurti]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "yurti ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  adrisi = '$g_person[adrisi]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "adrisi ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  tel = '$g_person[tel]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "tel ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  hayati = '$g_person[hayati]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "hayati ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  resim = '$g_person[resim]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "resim ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  yeshi = '$g_person[yeshi]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "yeshi ozgertish meghlub! <br/>";
	        }
		else
		{

		}


		$query = "UPDATE $this->jemeti SET 
			  jupti_kodi = '$g_person[jupti_kodi]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "jupti_kodi ozgertish meghlub! <br/>";
	        }
		else
		{

		}	

		$query = "UPDATE $this->jemeti SET 
			  jupti = '$g_person[jupti]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "jupti ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  ata_kodi = '$g_person[ata_kodi]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ata_kodi ozgertish meghlub! <br/>";
	        }
		else
		{

		}	

		$query = "UPDATE $this->jemeti SET 
			  ata = '$g_person[ata]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ata ozgertish meghlub! <br/>";
	        }
		else
		{

		}


		$query = "UPDATE $this->jemeti SET 
			  mewlut = '$g_person[mewlut]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "mewlut ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  wapati = '$g_person[wapati]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "wapati ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		/*$query = "UPDATE $this->jemeti SET 
			  hayat = '$g_person[jismi]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "hayat ozgertish meghlub! <br/>";
	        }
		else
		{

		}*/

		$query = "UPDATE $this->jemeti SET 
			  jinsi = '$g_person[jinsi]'
			  WHERE id = '$this->id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "jinsi ozgertish meghlub! <br/>";
	        }
		else
		{

		}

	  }


	public function addPerson(
		array $g_person=null)
          {
		$g_kodi = $g_person['kodi'];

		$query = "INSERT INTO $this->jemeti(kodi) VALUES ('$g_kodi')"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo $g_person['kodi']." =kodi, ".$this->jemeti." =jemeti qoshush meghlub! <br/>".$query."<br>";
			return false;
	        }
		else
		{
			//echo $g_person['kodi']."kodi qoshushuldi! <br/>".$query."<br>";
		}

		$query = "UPDATE $this->jemeti SET 
			  isim = '$g_person[isim]'
			  WHERE kodi = '$g_kodi'";

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "isim ozgertish meghlub! <br/>";
			return false;
	        }
		else
		{

		}

		
		$query = "UPDATE $this->jemeti SET 
			  ana_kodi = '$g_person[ana_kodi]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ana_kodi ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  ana = '$g_person[ana]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ana ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  yurti = '$g_person[yurti]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "yurti ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  adrisi = '$g_person[adrisi]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "adrisi ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  tel = '$g_person[tel]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "tel ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  hayati = '$g_person[hayati]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "hayati ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  resim = '$g_person[resim]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "resim ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  yeshi = '$g_person[yeshi]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "yeshi ozgertish meghlub! <br/>";
	        }
		else
		{

		}


		$query = "UPDATE $this->jemeti SET 
			  jupti_kodi = '$g_person[jupti_kodi]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "jupti_kodi ozgertish meghlub! <br/>";
	        }
		else
		{

		}	

		$query = "UPDATE $this->jemeti SET 
			  jupti = '$g_person[jupti]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "jupti ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  ata_kodi = '$g_person[ata_kodi]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ata_kodi ozgertish meghlub! <br/>";
	        }
		else
		{

		}	

		$query = "UPDATE $this->jemeti SET 
			  ata = '$g_person[ata]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ata ozgertish meghlub! <br/>";
	        }
		else
		{

		}


		$query = "UPDATE $this->jemeti SET 
			  mewlut = '$g_person[mewlut]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "mewlut ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $this->jemeti SET 
			  wapati = '$g_person[wapati]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "wapati ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		/*$query = "UPDATE $this->jemeti SET 
			  hayat = '$g_person[jismi]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "hayat ozgertish meghlub! <br/>";
	        }
		else
		{

		}*/

		$query = "UPDATE $this->jemeti SET 
			  jinsi = '$g_person[jinsi]'
			  WHERE kodi = '$g_kodi'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "jinsi ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		return true;
	  }
	public function deletePerson($g_person_id=null, $g_jemed=null, $g_con_db=null, $g_trash=null)
          {
	    if(!$g_trash){
		if($this->child_cnt){
			echo "this person(".$this->kodi.")  has ".$this->child_cnt." children.<br>";
			return false;
		}		
				
		$query = "INSERT INTO ".TRASH_TABLE."(".PERSON_CLMN.") SELECT ".PERSON_CLMN." FROM $g_jemed WHERE id = '$g_person_id'";
		$result = $g_con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "exlet sanduqqa tashlash meghlub! <br>".$query."<br>";
			return false;
	        }
		else
		{

		}
	    }
		$query = "DELETE FROM $g_jemed
			  WHERE id = '$g_person_id'";

		$result = $g_con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ochurush meghlub! <br/>".$query. "<br>";
	        }
		else
		{
			echo "id=".$g_person_id."ochuruldi! <br/>";
		}


		return true;
	  }

	  public function recoverTrash($g_person_id=null, $g_person_kodi=null)
          {
		$rtn = false;

		$kod_len = strlen($g_person_kodi);
		$query = "select * from $this->jemeti 
				where $this->jemeti.kodi = substring($g_person_kodi,1,$kod_len-3)";
		$result =  $this->con_db->query($query);
	    	if ( $result == false ) 
	    	{
	      		echo $g_person_kodi.": bu shexsning ajdadi nesebnamide yoq !<br>";
			return false;
	    	}
	    	else
	    	{

		}


		$query = "SELECT * FROM ".TRASH_TABLE." WHERE id='$g_person_id'";
		$result =  $this->con_db->query($query);
	    	if ( $result == false ) 
	    	{
	      		echo $g_person_id.": bu id shexs mewjut EMES(mysqli_query) !<br>";
	    	}
	    	else
	    	{
                	$row = mysqli_fetch_array($result);
			//echo "bu jemet =".$this->jemeti."<br>";
			$rtn = $this->addPerson($row);
		}

		if($rtn){
			$query = "DELETE FROM ".TRASH_TABLE." WHERE id = '$g_person_id'";
			$result =  $this->con_db->query($query);
			if ( $result == false ) 
	        	{
	        	    echo "exlet sanduqtikini ochurush meghlub! <br/>".$query. "<br>";
	       	 	}
			else
			{
				echo "id=".$g_person_id."eslige qaytti! <br/>";
			}
		}


		return $rtn;
	  }
	  public function getPerson()
          {
		return $this->person;
	  }
		
	  public function personForm(
		$person=array(), $g_flname=null)
          {
		global $lang;
		//echo "korunmeydighu!! in personForm() ".$person['isim']."<br>";
?>
	<div id="content">

  		<form method="post" action="<?php echo $g_flname ."?jemeti=".$this->jemeti."&sxs_kodi=".$person['kodi']."&person_id=".$person['id']; ?>" accept-charset="UTF-8">

		  <div id="personnameinform" class="shadow-stl">
			<!-- <label for="code"><?php echo $person['kodi']; ?></label> -->
			<input id="name" name="name" type="text" value="<?php echo $person['isim']; ?>" size="30" required />
			<input id="code" name="code" type="text" value="<?php echo $person['kodi']; ?>" size="30" required />
			
		  </div>
		  <div class="resume shadow-stl">
		    <dl class="basicInfo-left">
		      <dt><label for="sex"><?php echo $lang['sex']; ?>:</label></dt>
			<dd><input id="sex" name="sex" type="text" value="<?php echo $person['jinsi']; ?>" size="30" /><dd>
		      <dt><label for="age"><?php echo $lang['age']; ?>:</label></dt>
			<dd><input id="age" name="age" type="text" value="<?php echo $person['yeshi']; ?>" size="30"  /><dd>
		      <dt><label for="placeofbirth"><?php echo $lang['placeofbirth']; ?>:</label></dt>
			<dd><input id="placeofbirth" name="placeofbirth" type="text" value="<?php echo $person['yurti']; ?>" size="30"  /><dd>
		      <dt><label for="father"><?php echo $lang['father']; ?>:</label></dt>
			<dd><input id="father" name="father" type="text" value="<?php echo $person['ata']; ?>" size="30"  /><dd>
		      <dt><label for="mother"><?php echo $lang['mother']; ?>:</label></dt>
			<dd><input id="mother" name="mother" type="text" value="<?php echo $person['ana']; ?>" size="30"  /><dd>
	
		    </dl>
	
		    <dl class="basicInfo-right">
			<dt><label for="birth"><?php echo $lang['birth']; ?>:</label></dt>
			 <dd><input id="birth" name="birth" type="text" value="<?php echo $person['mewlut']; ?>" size="30"  /><dd>
			<dt><label for="death"><?php echo $lang['death']; ?>:</label></dt>
			 <dd><input id="death" name="death" type="text" value="<?php echo $person['wapati']; ?>" size="30" /><dd>
			<dt><label for="partner"><?php echo $lang['partner']; ?>:</label></dt>
			 <dd><input id="partner" name="partner" type="text" value="<?php echo $person['jupti']; ?>" size="30" /><dd>
			<dt><label for="address"><?php echo $lang['address']; ?>:</label></dt>
			 <dd><input id="address" name="address" type="text" value="<?php echo $person['adrisi']; ?>" size="30" /><dd>
			<dt><label for="telnumber"><?php echo $lang['telnumber']; ?>:</label></dt>
			 <dd><input id="telnumber" name="telnumber" type="text" value="<?php echo $person['tel']; ?>" size="30" /><dd>
		    </dl>
		  </div>
		    <div class="hayati-theme">
		      <?php echo $lang["life"]; ?>
		    </div>
		    <div class="hayati shadow-stl">
			<label style="color:red;" for="life">*</label><br />
    			<textarea style="width:600px; height:200px" id="life" accept-charset="UTF-8" name="life" ><?php echo $person['hayati']; ?></textarea><br />

			<input type="submit" name="person" value="<?php echo $lang["ok"]?>" />

		    </div>
		    <div>
		      <?php  if ($this->resim <> null) echo $lang["photo"].":"; ?></td> <td><?php echo $this->resim; ?>

		    </div>
  		</form>
	</div>

<?php


		return $this->kodi;
	  }

         public function displayTrash()
          {
		global $lang;

		$query = "SELECT * FROM TRASH ORDER BY id DESC";
		$result = $this->con_db->query($query);
	    if ( $result == false ) 
	    {
	      echo ": exlet sanduqini echish meghlub.<br>";
		return false;
	    }
	    else
	    {
		while ( $row = mysqli_fetch_array($result) ) 
		{
		  $this->display($row);
		  //$isim  = $row['isim'];
		  //$kodi  = $row['kodi'];	
?>
		<div>
		<dl style="margin:0 50">
		   <dt style="float:right;"><?php if ($row['isim'] <> null){ echo $lang["name"]; ?></dt> <dd style="float:right;"><?php echo $row['isim'];} ?></dd>
		   <dt style="float:right;"><?php if ($row['kodi'] <> null){ echo ""; ?></dt> <dd style="float:right;"><?php echo $row['kodi']; }?></dd>

		   <dt style="float:right;">
		    <?php echo "<a href=\"./".FIL_NAME."?person_id=" . $row['id'] . "&mdfPrs=" . 'true' ."\">" . "|".$lang["modify"] . "</a>";?>
		   </dt><dd></dd>
		   <dt style="float:right;">
		    <?php echo "<a href=\"./".FIL_NAME."?person_id=" . $row['id']."&sxs_kodi=".$row['kodi'] ."&jemeti=".$this->jemeti. "&recPrs=" . 'true' ."\">" . "|".$lang["recover"] . "</a>";?>
		   </dt><dd></dd>
		   <dt style="float:right;">
		    <?php echo "<a href=\"./".FIL_NAME."?person_id=" . $row['id'] . "&delPrs=" . 'true' ."\">" . "|".$lang["delete"] . "</a>";?>
		   </dt><dd></dd>
		</dl>
			<br>
		</div>
<?php
		}
          }
		return true;
	}

	public function getTrashPerson($g_personId=null, $g_table='TRASH', $g_flname=null)
        {
	    $person = array();	
	
	    $query = "SELECT * FROM $g_table WHERE id='$g_personId'"; 
		
	    $result = $this->con_db->query($query);

	    if ( $result == false ) 
	    {
	      echo ": bu koddiki shexs exlet sanduqida yoq!<br>";
		return false;
	    }
	    else
	    {
                $person = mysqli_fetch_array($result);
                //echo "korunmeydighu!! in getTrashPer() ".$row['isim']." ".$g_table."<br>".$query."<br>"; 
		return $person;  
		
	    }
	  return array();
	}

	public function modifyTrashPerson(
		array $g_person=null, $g_id=null, $g_table="TRASH")
          {
		$query = "UPDATE $g_table SET 
			  isim = '$g_person[isim]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "isim ozgertish meghlub! <br/>";
			return false;
	        }
		else
		{

		}

		$query = "UPDATE $g_table SET 
			  kodi = '$g_person[kodi]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "kodi ozgertish meghlub! <br/>";
			return false;
	        }
		else
		{

		}

		$query = "UPDATE $g_table SET 
			  ana_kodi = '$g_person[ana_kodi]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ana_kodi ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $g_table SET 
			  ana = '$g_person[ana]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ana ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $g_table SET 
			  yurti = '$g_person[yurti]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "yurti ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $g_table SET 
			  adrisi = '$g_person[adrisi]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "adrisi ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $g_table SET 
			  tel = '$g_person[tel]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "tel ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $g_table SET 
			  hayati = '$g_person[hayati]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "hayati ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $g_table SET 
			  resim = '$g_person[resim]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "resim ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $g_table SET 
			  yeshi = '$g_person[yeshi]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "yeshi ozgertish meghlub! <br/>";
	        }
		else
		{

		}


		$query = "UPDATE $g_table SET 
			  jupti_kodi = '$g_person[jupti_kodi]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "jupti_kodi ozgertish meghlub! <br/>";
	        }
		else
		{

		}	

		$query = "UPDATE $g_table SET 
			  jupti = '$g_person[jupti]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "jupti ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $g_table SET 
			  ata_kodi = '$g_person[ata_kodi]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ata_kodi ozgertish meghlub! <br/>";
	        }
		else
		{

		}	

		$query = "UPDATE $g_table SET 
			  ata = '$g_person[ata]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "ata ozgertish meghlub! <br/>";
	        }
		else
		{

		}


		$query = "UPDATE $g_table SET 
			  mewlut = '$g_person[mewlut]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "mewlut ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		$query = "UPDATE $g_table SET 
			  wapati = '$g_person[wapati]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "wapati ozgertish meghlub! <br/>";
	        }
		else
		{

		}

		/*$query = "UPDATE $g_table SET 
			  hayat = '$g_person[jismi]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "hayat ozgertish meghlub! <br/>";
	        }
		else
		{

		}*/

		$query = "UPDATE $g_table SET 
			  jinsi = '$g_person[jinsi]'
			  WHERE id = '$g_id'"; 	

		$result = $this->con_db->query($query);
		if ( $result == false ) 
	        {
	            echo "jinsi ozgertish meghlub! <br/>";
	        }
		else
		{

		}

	  }
	  

	  public function __destruct()
          {
	    //echo "shexs destructed<br>";
          }
        }
?>
