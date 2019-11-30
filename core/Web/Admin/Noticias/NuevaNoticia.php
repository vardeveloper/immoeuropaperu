<?php

class Web_Admin_Noticias_NuevaNoticia extends Web_Admin_MainPage
{

    public function mainContent()
    {
        $this->add_js_link(BASE_WEB_ROOT . '/wgt/tiny_mce/tiny_mce.js');
        return $this->insertar();
    }

    private function insertar()
    {
        $error = null;
        $post = null;
        
        if (isset($_SESSION['error'])) {
            $error = $_SESSION['error'];
            unset($_SESSION['error']);
        }

        if (isset($_SESSION['post'])) {
            $post = $_SESSION['post'];
            unset($_SESSION['post']);
        }

        $smarty = new Smarty_Engine();
        $smarty->assign('post', $post);
        $smarty->assign('error', $error);
//        $smarty->assign('date', date('Y-m-d'));

        return $smarty->fetch(ADMIN_NOTICIAS_DIR . DS . 'tpl' . DS . 'insertar-noticia.tpl');
    }

}