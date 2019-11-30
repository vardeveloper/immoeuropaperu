<?php

class Web_Galeria extends Web_BasePage 
{

    public function mainContent() 
    {
//        parent::set_title('');
//        parent::add_head_content('<meta name="description" content="" />');

        $gal_key = Ey::getPrm(1);
        $obj = new Web_Db_Galerias();
        $gal_id = $this->obtenerId($obj, 'gal', $gal_key);
        
        global $db;
        
        $galeria = $db->fetchRow($db->select()
                                ->from('galeria')
                                ->where('gal_estado = ?', 1)
                                ->where('gal_id = ?', $gal_id)
                                ->limit(1));
        
        if (!empty($galeria)){
            $nombreGaleria = $galeria->gal_titulo;
            
            $fotos = $db->fetchAll($db->select()
                                    ->from('foto')
                                    ->where('fot_gal_id=?', $galeria->gal_id)
                                    ->order('fot_id'));
        }
        
        $smarty = new Smarty_Engine();
        $smarty->assign('fotos', $fotos);
        $smarty->assign('galeria', $nombreGaleria);

        return $smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'galeria.tpl');
    }

}