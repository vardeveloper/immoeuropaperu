<?php

class Web_ErrorDocument extends Web_BasePageError 
{

    public function mainContent() 
    {
//        parent::set_title('');
//        parent::add_head_content('<meta name="description" content="" />');

        $smarty = new Smarty_Engine();
        return $smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'error-document.tpl');
    }

}