<?php

class Web_Db_Productos extends Zend_Db_Table_Abstract
{

    protected $_name = 'producto';
    protected $_primary = 'pro_id';
    protected $_sequence = true;


    public function getCategories()
    {
        $select = $this->select()
                ->from(array('det' => 'categoria_detalle'), array(''))
                ->joinInner(array('cat' => 'categoria'), 'det.det_cat_id = cat.cat_id', array('cat_id', 'cat_nombre', 'cat_orden'))
                ->where('det_prod_id = ?', $this->pro_id)
                ->order('cat_orden');
        $rows = $db->fetchAll($select);
        return $rows;
    }

}
