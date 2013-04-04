<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
	protected function _initLogger()
	{
		
		Zend_Registry::set('foo', "foo value");
	}

}

