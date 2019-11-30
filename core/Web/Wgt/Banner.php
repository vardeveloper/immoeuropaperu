<?php

class Web_Wgt_Banner
{

    static public function render()
    {
        global $db;

        $banners = $db->fetchAll($db->select()
                                ->from('banner', array('ba_id', 'ba_titulo', 'ba_url'))
                                ->where('ba_estado=?', 1));
        
        $smarty = new Smarty_Engine();
        $smarty->assign('banners', $banners);
        
        return $smarty->fetch(TPL_ROOT . DS . 'wgt-banner.tpl');
    }

}