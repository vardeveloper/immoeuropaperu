<?php

class Web_Galerias extends Web_BasePage
{

    public function mainContent()
    {
//        parent::set_title('');
//        parent::add_head_content('<meta name="description" content="" />');

        global $db;

        $rsGalerias = $db->fetchAll($db->select()
                        ->from('galeria')
                        ->where('gal_estado = ?', 1)
                        ->order('gal_id DESC'));

        $galerias = array();
        
        if (!empty($rsGalerias)) {

            foreach ($rsGalerias as $item) {
                $foto = $db->fetchRow($db->select()
                                ->from('foto')
                                ->where('fot_gal_id=?', $item->gal_id)
                                ->order('fot_id'));
                
                $galerias[] = array(
                    'nombre' => $item->gal_titulo,
                    'key' => $item->gal_key,
                    'imagen' => BASE_WEB_ROOT . '/svc/get-img/fotos-fot_' . $foto->fot_id . '/534:268'
                );            
                        
            }
        }

        $smarty = new Smarty_Engine();
        $smarty->assign('galerias', $galerias);

        return $smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'galerias.tpl');
    }

}
