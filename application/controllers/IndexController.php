<?php

class IndexController extends Zend_Controller_Action
{
	private $dao;
	private $_ex;
	
    public function init()
    {
        /* Initialize action controller here */
    	$this->dao=new Application_Model_UserDAL();
    	$this->_ex=new Application_Model_ExceptionsDAL();
    }

    public function indexAction()
    {
    	
   
    	

    /* :: 1
     * 
     * Manual Creation for db adapter
     * 
     * 
     * 
     * 	$db1 = Zend_Db::factory('Pdo_Mysql', array(
    			'host'     => 'localhost',
    			'username' => 'root',
    			'password' => '',
    			'dbname'   => 'ttaworapps'
    	));
    *	
    *	
    */
    	
    	
    
    
    	
   /* ::2 
    * 
    * Get the db adapter from the ini file through bootstrap
    * 
    * $bootstrap = $this->getInvokeArg('bootstrap');
    	$dbResource = $bootstrap->getPluginResource('db');
    	$db = $dbResource->getDbAdapter();
    *
    *
    */
    	

    	
    	$db = Zend_Registry::get('database');
    	
    	
    	
    	$user_Ob=array(
    			'fb_first_name'=>'Ahmad',
    			'fb_full_name'=>'Ahmad Al',
    			'fb_email'=>'sdasad@tmail.com',
    			'fb_user_id'=>'67889009',
    			'fb_mid_name'=>'hasan',
    			'fb_last_name'=>'al-asa',
    			'fb_user_name'=>'ahmad.alasa',
    			'fb_gender'=>'male',
    			'fb_local'=>'10188097890',
    			'fb_email'=>'ala@hotmail.com',
    			'fb_mobile_1'=>'970595920915',
    			'fb_mobile_2'=>'970568665606',
    			'fb_hometown'=>' West Bank',
    			'fb_location'=>'103122493061917',
    			'fb_country'=>'israel',
    			'fb_birthday'=>'1999-04-13',
    			'fb_tel'=>'970595920915',
    			'fb_religion'=>'muslim',
    			'fb_martialstatus'=>'single',
    			'fb_website'=>'https://www.facebook.com/ahma67678',
    			'fb_interestedin'=>'female',
    			'fb_ploticalview'=>'none',
    	);
    	
    	
    	
    	
    	 /* ::3
    	  * 
    	  * Transaction Implementation
    	  * 
    	  * begin
    	  * commit
    	  * rollback
    	  * 
    	  * */
    	
    	
    	
    	/*********************************************************************/
    	
    	// Start a transaction explicitly.
    	$db->beginTransaction();
    	
    	try {
    		
    		
    		// Attempt to execute one or more queries:
$this->dao->createUser($user_Ob);
//query second
//query third

    		// If all succeed, commit the transaction and all changes
    		// are committed at once.
    		$db->commit();
    	
    	} catch (Exception $e) {
    		// If any of the queries failed and threw an exception,
    		// we want to roll back the whole transaction, reversing
    		// changes made in the transaction, even those that succeeded.
    		// Thus all changes are committed together, or none are.
    		$db->rollBack();
    	$this->_ex->createException($e->getMessage());
    	}
    	
    	
    	
    	/*********************************************************************/
    	
    	
    	
    	/* ::1 (Fetching Data using traditional array method)
    	 * 
    	 * one by one
    	 * 
    	 * */
    	
    	$stmt = $db->query(
    			'SELECT * FROM user WHERE user_id = ? AND fb_first_name = ?',
    			array('7', 'Ahmad')
    	);
    	 
    	
    	while ($row = $stmt->fetch()) {
    		//echo $row['bug_description'];
    		
    		print_r($row);
    	}
    	
    	
    	
    	
    	
    	
    	/* ::2 (fetching all the data as an array at one)
    	 * 
    	 * fetch array
    	 * 
    	 * */
    	
        //$rows = $stmt->fetchAll();	 
    	//echo $rows[0]['fb_email'];
    	 
    	
    	
    	/* ::3 (fetching data as an array of object)
    	 * 
    	 * fetch array of object
    	 * 
    	 * */
    	
    	//$obj = $stmt->fetchObject();
     	//echo $obj->fb_website;
    	
    	
    	
    	
    	
    	
        // action body
    }

}

