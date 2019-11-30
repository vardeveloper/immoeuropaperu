<?php

class Web_Contacto extends Web_BasePage 
{

    public function mainContent() 
    {
//        parent::set_title('');
//        parent::add_head_content('<meta name="description" content="" />');

        $error = null;
        $post = null;
        $envio = null;

        if (isset($_SESSION['error'])) {
            $error = $_SESSION['error'];
            unset($_SESSION['error']);
        }
        if (isset($_SESSION['post'])) {
            $post = $_SESSION['post'];
            unset($_SESSION['post']);
        }
        if (isset($_SESSION['envio'])) {
            $envio = $_SESSION['envio'];
            unset($_SESSION['envio']);
        }

        $smarty = new Smarty_Engine();
        $smarty->assign('post', $post);
        $smarty->assign('error', $error);
        $smarty->assign('envio', $envio);
        $smarty->assign('col_left', Web_Wgt_ColLef::render());

        return $smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'contacto.tpl');
    }

}