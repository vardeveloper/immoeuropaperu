<?php

class Web_Db_Categorias extends Zend_Db_Table_Abstract
{

    protected $_name = 'categoria';
    protected $_primary = 'cat_id';
    protected $_sequence = true;

    const ID_PERU = 10;
    const ID_SPAIN = 11;

}
