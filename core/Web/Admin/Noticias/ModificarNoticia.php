<?php

class Web_Admin_Noticias_ModificarNoticia extends Web_Admin_MainPage
{

    public function mainContent()
    {
        $this->add_js_link(BASE_WEB_ROOT . '/wgt/tiny_mce/tiny_mce.js');
        return $this->actualizar();
    }

    private function actualizar()
    {
        $error = null;

        if (isset($_SESSION['error'])) {
            $error = $_SESSION['error'];
            unset($_SESSION['error']);
        }

        $id = Ey::getPrm(3);

        $obj = new Web_Db_Noticias();

        $rs = $obj->fetchRow($obj->select()
                                ->where('not_id=?', $id));

        $noticia = array('not_id' => $rs->not_id,
                        'not_titulo' => $rs->not_titulo,
                        'not_descripcion' => $rs->not_descripcion,
                        'imagen' => BASE_WEB_ROOT . '/svc/get-img/noticias-not_' . $id . '/116');

        $smarty = new Smarty_Engine();
        $smarty->assign('error', $error);
        $smarty->assign('noticia', $noticia);

        return $smarty->fetch(ADMIN_NOTICIAS_DIR . DS . 'tpl' . DS . 'modificar-noticia.tpl');
    }

}