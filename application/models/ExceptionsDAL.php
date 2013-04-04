<?php

class Application_Model_ExceptionsDAL
{

private $_object;

public function __construct()
{
$this->_object=new Application_Model_DbTable_Exceptions();
}


public function createException($m)
{
	$date = new Zend_Date();

// Output of the current timestamp Feb 13, 2012 10:28:59 PM 

//implement toString() output 2012-02-13 22:30:25

	
		$arr=array(
		'message'=>$m,
		'date'=> $date->toString('YYYY-MM-dd HH:mm:ss')
		);

$this->_object->insert($arr);
}



}

