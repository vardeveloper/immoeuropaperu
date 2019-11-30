<?php

class Web_Main extends Web_BasePage
{

    public function mainContent()
    {
        parent::set_title('');
        parent::add_head_content('');
        
        $obj = new Web_Db_Productos();
        $db = $obj->getAdapter();
        $select = $db->select()
                ->from('producto', array('pro_id', 'pro_nombre', 'pro_descripcion', 'pro_precio', 'pro_tipo', 'pro_key'))
                ->where('pro_estado != ?', 2)
                ->where('pro_destacar = ?', 1)
                ->order('pro_id DESC')
                ->limit(8);
        $rows = $db->fetchAll($select);
        
        foreach ($rows as $item) {
            $item->pro_precio = number_format($item->pro_precio, 2, '.', ',');
            $item->descripcion = Ey::recortar($item->pro_descripcion, 70);
            $item->imagen = BASE_WEB_ROOT . '/svc/get-img/productos-pro_' . $item->pro_id . '/244:122';
        }

        $smarty = new Smarty_Engine();
        $smarty->assign('productos', $rows);
        $smarty->assign('slider', Web_Wgt_Banner::render());
        $smarty->assign('carousel', Web_Wgt_Carousel::render());

        return $smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'main.tpl');
    }

}
