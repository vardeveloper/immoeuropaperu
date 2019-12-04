<?php

class Web_Inmueble extends Web_BasePage 
{

    public function mainContent() 
    {
//        parent::set_title('');
//        parent::add_head_content('<meta name="description" content="" />');

        $pro_key = Ey::getPrm(1);

        $obj = new Web_Db_Productos();
        $db = $obj->getAdapter();
        $select = $db->select()
                ->from('producto', array('pro_id', 'pro_nombre', 'pro_descripcion', 'pro_precio', 'pro_video', 'pro_tipo', 'pro_tipo_moneda'))
                ->where('pro_estado != ?', 2)
                ->where('pro_key=\'' . $pro_key . '\'');
        $rows = $db->fetchRow($select);
        
        $rows->pro_precio = number_format($rows->pro_precio, 2, '.', ',');
        $rows->categories = Web_Db_Function::getCategories($rows->pro_id);

        $imagenes = '';
        for ($i = 1; $i < 7; $i++) {
            if (file_exists(DATA_DIR . DS . 'img' . DS . 'productos' . DS . 'pro_' . $rows->pro_id . '_' . $i . '.jpg')) {
                $imagenes.= '<li data-thumb="' . BASE_WEB_ROOT . '/svc/get-img/productos-pro_' . $rows->pro_id . '_' . $i . '">'
                        . '<a href="' . BASE_WEB_ROOT . '/svc/get-img/productos-pro_' . $rows->pro_id . '_' . $i . '" class="swipebox">'
                        . '<img src="' . BASE_WEB_ROOT . '/svc/get-img/productos-pro_' . $rows->pro_id . '_' . $i . '" />'
                        . '</a>'
                        . '</li>';
            }
        }

        /*   Obtenemos el nombre de la categoria   */

        $obj2 = new Web_Db_CategoriasDetalle();
        $db2 = $obj2->getAdapter();
        $select2 = $db2->select()
                ->from('categoria_detalle', array('det_padre_id'))
                ->where('det_pro_id=?', $rows->pro_id);
        $cate = $db2->fetchRow($select2);
        $cateNombre = Web_Db_Function::getUnidadNombre($cate->det_padre_id);

        $obj3 = new Web_Db_Categorias();
        $cat_key = $this->obtenerKey($obj3, 'cat', $cate->det_padre_id);
        
        
        $smarty = new Smarty_Engine();
        $smarty->assign('producto', $rows);
        $smarty->assign('imagenes', $imagenes);
        $smarty->assign('cat_key', $cat_key);
        $smarty->assign('cat_nombre', ucwords($cateNombre));
        $smarty->assign('col_left', Web_Wgt_ColLef::render());

        return $smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'inmueble.tpl');
    }

}