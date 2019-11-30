<?php

class Web_Noticias extends Web_BasePage 
{

    public function mainContent() 
    {
//        parent::set_title('');
//        parent::add_head_content('<meta name="description" content="" />');
        
        $obj = new Web_Db_Noticias();
        $db = $obj->getAdapter();
        $select = $db->select()
                ->from('noticia')
                ->where('not_estado =?', 1)
                ->order('not_id DESC');
//        $rows = $db->fetchAll($select);
        
        $pager = new Ey_Pagination($select, WEB_ROOT . '/noticias', Ey::getPrm(1), 9);
        $rows = $pager->fetchAll();
        $pagination = $pager->getNavigation();
        
        foreach ($rows as $item) {
            $item->descripcion = Ey::recortar($item->not_descripcion, 250);
            $item->imagen = BASE_WEB_ROOT . '/svc/get-img/noticias-not_' . $item->not_id . '';
        }
        
//        Zend_Debug::dump($rows);

        $smarty = new Smarty_Engine();
        $smarty->assign('noticias', $rows);
        $smarty->assign('pagination', $pagination);
        $smarty->assign('col_left', Web_Wgt_ColLef::render());

        return $smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'noticias.tpl');
    }

}