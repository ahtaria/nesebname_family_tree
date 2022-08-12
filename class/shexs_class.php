<?php
	require_once './include.php';

 	class Shexs extends BaseClass
	{

	  //protected static $_instance = NULL;

	  /**
	  * Prevent object cloning
	  */
	  final private function  __clone() { }

	  //protected $jismi=false;
	  //protected $init = false;

	  /*  
	    Prevent direct object creation           
	  */                            
          public function __construct(
			$g_jemet = null, $g_kodi = null, $g_con = null) 
          {
		parent::__construct($g_jemet, $g_kodi, $g_con);
		if ( $g_con == null ) return;

		//echo "Shexs cunstructed<br>";
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
            static::$_instance = new Shexs($g_jemeti, $g_kodi, $g_con);
            return static::$_instance;
    	  }
	
	/*
          public function display()
          {
	              }

	  public function displayTr()
	  {
	  }
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
	  */
	  public function displayPkr()
          {
		$query = "SELECT * FROM $this->pikirTb WHERE kodi='$this->kodi'"; 
		
		$result = $this->con_db->query($query);
	    if ( $result == false ) 
	    {
	      //echo $this->kodi.": bu koddiki shexsge pikir yezilmighan!<br>";
	    }
	    else
	    {
                while ( $row = mysqli_fetch_array($result) ) 
		{
		  $this->display_comment($row);	
		}
       	    }
	  }
	  /*
	  public function savePkr(
		$g_isim=null, $g_adris=null, $g_tel=null, $g_email=null, $g_pikir=null)
          {
	  }
	*/
	  public function __destruct()
          {
	    //echo "shexs destructed<br>";
          }
        }
?>
