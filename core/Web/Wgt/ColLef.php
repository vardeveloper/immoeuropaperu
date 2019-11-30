<?php

class Web_Wgt_ColLef
{

    static public function render()
    {
        $obj = new Web_Db_Productos();
        $db = $obj->getAdapter();
        $select = $db->select()
                ->from('producto', array('pro_id', 'pro_nombre', 'pro_descripcion', 'pro_precio', 'pro_tipo', 'pro_key'))
                ->where('pro_estado != ?', 2)
                ->order('RAND()')
                ->limit(3);
        $rows = $db->fetchAll($select);
        
        foreach ($rows as $item) {
            $item->pro_precio = number_format($item->pro_precio, 2, '.', ',');
            $item->descripcion = Ey::recortar($item->pro_descripcion, 70);
            $item->imagen = BASE_WEB_ROOT . '/svc/get-img/productos-pro_' . $item->pro_id . '/244:122';
        }
        
        $smarty = new Smarty_Engine();
        $smarty->assign('productos', $rows);
        
        return $smarty->fetch(TPL_ROOT . DS . 'wgt-col-left.tpl');
    }

}