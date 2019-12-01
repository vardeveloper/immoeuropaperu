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
                ->joinLeft('categoria_detalle', 'pro_id = det_pro_id',array())
                ->joinLeft('categoria', 'det_padre_id = cat_id', array('cat_nombre'))
                ->where('pro_estado != ?', 2)
                ->where('pro_destacar = ?', 1)
                ->where('cat_id in (?)', array(Web_Db_Categorias::ID_PERU, Web_Db_Categorias::ID_SPAIN))
                ->order(array('cat_id', 'pro_id DESC'))
                ->limit(8);
        $products = $db->fetchAll($select);
        
        foreach ($products as $item) {
            $item->pro_precio = number_format($item->pro_precio, 2, '.', ',');
            $item->descripcion = Ey::recortar($item->pro_descripcion, 70);
            $item->imagen = BASE_WEB_ROOT . '/svc/get-img/productos-pro_' . $item->pro_id . '/244:122';
            $item->categories = Web_Db_Function::getCategories($item->pro_id);
        }

        //echo '<pre>';
        //print_r($products);
        //echo '</pre>';
        //exit;

        $smarty = new Smarty_Engine();
        $smarty->assign('productos', $products);
        $smarty->assign('slider', Web_Wgt_Banner::render());
        $smarty->assign('carousel', Web_Wgt_Carousel::render());

        return $smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'main.tpl');
    }

}
