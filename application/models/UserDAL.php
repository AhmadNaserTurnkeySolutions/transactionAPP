<?php

class Application_Model_UserDAL
{
	private $_object;
	private $_ex;
	public function __construct()
	{
	
		$this->_object=new Application_Model_DbTable_User();
	
		$this->_ex=new Application_Model_ExceptionsDAL();
	
	}
	
	
	public function createUser($array)
	{
	
		try
		{
			$this->_object->insert($array);
		}
		catch(Zend_Db_Exception $e)
		{
			$this->_ex->createException($e->getMessage());
		}
	
	}
	
	
	
	public function updateUser($array,$id)
	{
		try
		{
			$this->_object->update($array,"user_id=$id");
		}
		catch(Zend_Db_Exception $e)
		{
			$this->_ex->createException($e->getMessage());
		}
	
	}
	
	
	
	public function getUsers()
	{
	
	
		$order="user_id desc";
		$count  = 450;
		$offset = 0;
		$sql=$this->_object->select()
		->order($order)
		->limit($count, $offset);
	
		return $this->_object->fetchAll($sql)->toArray();
	}
	
	
	public function deleteUser($id)
	{
		try
		{
			$this->_object->delete("user_id=$id");
		}
		catch(Zend_Db_Exception $e)
		{
			$this->_ex->createException($e->getMessage());
		}
	
	
	}
	
	
	
	

}

