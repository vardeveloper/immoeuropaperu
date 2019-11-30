<?php

class Web_Wgt_Header
{

    static public function render()
    {
        $obj = new Web_Db_Categorias();
        $db = $obj->getAdapter();
        $select = $db->select()
                ->from('categoria', array('cat_id', 'cat_padre_id', 'cat_nombre', 'cat_estado', 'cat_key'))
                ->where('cat_padre_id=?', 0)
                ->where('cat_estado<>?', 2)
                ->order('cat_nombre');
        $rows = $db->fetchAll($select);
        
//        Zend_Debug::dump($rows);
        
        $smarty = new Smarty_Engine();
        $smarty->assign('categorias', $rows);

        return $smarty->fetch(TPL_ROOT . DS . 'wgt-header.tpl');
    }

}