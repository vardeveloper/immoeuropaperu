<?php

class Web_Wgt_Footer
{

    static public function render()
    {
//        $obj = new Web_Db_Noticias();
//        $db = $obj->getAdapter();
//        $select = $db->select()
//                ->from('noticia')
//                ->where('not_estado =?', 1)
//                ->order('not_id DESC')
//                ->limit(5);
//        $rows = $db->fetchAll($select);
//        
//        foreach ($rows as $item) {
//            $item->titulo = Ey::recortar($item->not_titulo, 25);
//        }
        
        $smarty = new Smarty_Engine();
//        $smarty->assign('noticias', $rows);
        
        return $smarty->fetch(TPL_ROOT . DS . 'wgt-footer.tpl');
    }

}