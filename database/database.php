

<?php
  class DataBase {

    protected static $_instance = NULL;

    protected $_mysql;
    protected $_where = array();
    protected $_query;
    protected $_paramTypeList;
    protected $_crudType = null;
 
    public function __construct($host, $username, $password, $db) 
    {
      $this->_mysql = new mysqli($host, $username, $password, $db) or die('There was a problem connecting to the database');
    }
    /**
    * Returns new or existing Singleton instance
    * @return Singleton
    */
    final public static function getInstance($host, $username, $password, $db)
    {
      if(null !== static::$_instance){
              return static::$_instance;
	    }
            static::$_instance = new DataBase($host, $username, $password, $db);
            return static::$_instance;
    }

    public function getConct()
    {
      return $this->_mysql;
    }

    public function __destruct()
    {
      $this->_mysql->close();
	//echo "mysql closed<br>";
    }
    

	// Create connection
        //$con = mysqli_connect("localhost","root","ahtarnur","tst01db_schema");
  }
?>
