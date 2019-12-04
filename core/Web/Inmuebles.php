<?php

class Web_Inmuebles extends Web_BasePage 
{

    public function mainContent() 
    {
//        parent::set_title('');
//        parent::add_head_content('<meta name="description" content="" />');

        $cat_key = Ey::getPrm(1);

        /*      Obtenemos el id de la categoria     */
        $obj = new Web_Db_Categorias();
        $cat_id = $this->obtenerId($obj, 'cat', $cat_key);

        /*      Nombre de la Categoria */
        $cat_nombre = Web_Db_Function::getUnidadNombre($cat_id);

        if ($cat_id) {
            $obj = new Web_Db_Productos();
            $db = $obj->getAdapter();
            $select = $db->select()
                    ->from(array('pro' => 'producto'), array('pro_id', 'pro_estado', 'pro_nombre', 'pro_key', 'pro_precio', 'pro_descripcion', 'pro_tipo', 'pro_tipo_moneda'))
                    ->joinInner(array('det' => 'categoria_detalle'), 'pro.pro_id = det.det_pro_id', array('det_padre_id', 'det_cat_id'))
                    ->where('pro_estado <> ?', 2)
                    ->where('det_padre_id = ?', $cat_id)
                    ->group('pro_id')
                    ->order(array('pro_id DESC', ''));

            $pager = new Ey_Pagination($select, WEB_ROOT . '/inmuebles/' . $cat_key, Ey::getPrm(2), 9);
            $rows = $pager->fetchAll();
            $pagination = $pager->getNavigation();

            foreach ($rows as $item) {
                $item->pro_precio = number_format($item->pro_precio, 2, '.', ',');
                $item->descripcion = Ey::recortar($item->pro_descripcion, 250);
                $item->imagen = BASE_WEB_ROOT . '/svc/get-img/productos-pro_' . $item->pro_id . '/244:122';
            }
        }
        
//        Zend_Debug::dump($rows);

        $smarty = new Smarty_Engine();
        $smarty->assign('cat_key', $cat_key);
        $smarty->assign('cat_id', $cat_id);
        $smarty->assign('categoria', $cat_nombre);
        $smarty->assign('productos', $rows);
        $smarty->assign('pagination', $pagination);
        $smarty->assign('col_left', Web_Wgt_ColLef::render());

        return $smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'inmuebles.tpl');
    }

}