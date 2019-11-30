<?php

class Web_Admin_Noticias_DetalleNoticia extends Web_Admin_MainPage
{

    public function mainContent()
    {
        return $this->detalle();
    }

    private function detalle()
    {
        $id = Ey::getPrm(3);

        $obj = new Web_Db_Noticias();

        $rs = $obj->fetchRow($obj->select()
                                ->where('not_id=?', $id));

        $noticia = array('not_id' => $rs->not_id,
                        'not_titulo' => $rs->not_titulo,
                        'not_descripcion' => $rs->not_descripcion,
                        'not_fecha' => $rs->not_fecha,
                        'imagen' => BASE_WEB_ROOT . '/svc/get-img/noticias-not_' . $id . '/480:360');

        $smarty = new Smarty_Engine();
        $smarty->assign('noticia', $noticia);

        return $smarty->fetch(ADMIN_NOTICIAS_DIR . DS . 'tpl' . DS . 'detalle-noticia.tpl');
    }

}