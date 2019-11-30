<?php

class Web_Noticia extends Web_BasePage 
{

    public function mainContent() 
    {
//        parent::set_title('');
//        parent::add_head_content('<meta name="description" content="" />');
        
        $key = Ey::getPrm(1);
        
        $obj = new Web_Db_Noticias();
        $db = $obj->getAdapter();
        $select = $db->select()
                ->from('noticia')
                ->where('not_key like ?', $key);
        $rs = $db->fetchRow($select);
        
//        Zend_Debug::dump($rs);

        $smarty = new Smarty_Engine();
        $smarty->assign('noticia', $rs);
        $smarty->assign('wgt_noticias', Web_Wgt_Noticias::render());

        return $smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'noticia.tpl');
    }

}