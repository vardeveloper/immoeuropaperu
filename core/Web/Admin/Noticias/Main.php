<?php

class Web_Admin_Noticias_Main extends Web_Admin_MainPage
{

    public function mainContent()
    {
        parent::add_js_link(BASE_WEB_ROOT . '/wgt/alertbox/sexyalertbox.js');
        parent::add_css_link(BASE_WEB_ROOT . '/wgt/alertbox/sexyalertbox.css');

        $user = new Web_Admin_Noticias_Wgt_Noticias($this);
        return $user->render();
    }

}