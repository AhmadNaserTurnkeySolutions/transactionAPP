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
    	
    	$foo = Zend_Registry::get('foo');
    	
    	echo $foo;
    	
    /*	$db1 = Zend_Db::factory('Pdo_Mysql', array(
    			'host'     => 'localhost',
    			'username' => 'root',
    			'password' => '',
    			'dbname'   => 'ttaworapps'
    	));
    */
    	
    	
    	
    	/* Get Default adapter from the application ini
    	 * 
    	 * 
    	 * */
    	
    	$bootstrap = $this->getInvokeArg('bootstrap');
    	$dbResource = $bootstrap->getPluginResource('db');
    	$db = $dbResource->getDbAdapter();
    	
    //	print_r($db);
    	
    	
    	
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
    	
    	
    	
    	
        // action body
    }


}

