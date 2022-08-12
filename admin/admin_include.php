<?php
    session_start();
    if(!isset($_SESSION['admin_login'])) {
        header('LOCATION:admin_login.php'); die();
    }
?>
<?php
require_once '../config.php';
require_once '../language/'.$config['language'].'.php';
require_once '../database/database.php';
require_once '../database/db_conn.php';
require_once '../class/base_class.php';

define('TRASH_TABLE','TRASH');
define('PERSON_CLMN', 'kodi,isim,hayat,jinsi,mewlut,wapati,jupti_kodi,jupti,ataJemedKodi,ata_kodi,ata,anaJemedKodi,ana_kodi,ana,yurti,adrisi,tel,hayati,resim,yeshi,jemedKodi,ejdadKodi');

define('ADMIN_COMMENT_FILE', 'admin_comment.php');
define('CMNT_MODF_FIL_NAME','admin_cmnt_modify.php');
define('ADMIN_FILE', 'admin.php');
define('ADMIN_LOGIN_FILE', 'admin_login.php');
define('ADMIN_LOGOUT_FILE', 'admin_logout.php');
define('ADMIN_PERSON_ADD_FILE', 'admin_person_add.php');
define('ADMIN_PERSON_MODIFY_FILE', 'admin_person_modify.php');
define('ADMIN_TRASH_FILE', 'admin_trash.php');
?>
