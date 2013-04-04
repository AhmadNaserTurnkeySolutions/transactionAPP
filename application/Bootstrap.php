<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
	protected function _initLogger()
	{
		//$bootstrap = $this->getInvokeArg('bootstrap');
		$dbResource = $this->getPluginResource('db');
		$db = $dbResource->getDbAdapter();
		Zend_Registry::set('database', $db);
	}

}

