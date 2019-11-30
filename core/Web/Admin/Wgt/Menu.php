<?php

class Web_Admin_Wgt_Menu
{

    public function __construct()
    {
        $adm_user = $_SESSION['adm']['adm_user'];

        $menu = array(array('title' => 'Usuarios', 'link' => 'usuarios'),
            array('title' => 'Banner', 'link' => 'banner'),
            array('title' => 'Categorias', 'link' => 'categorias'),
            array('title' => 'Productos', 'link' => 'productos'),
            array('title' => 'Galerias', 'link' => 'galerias'),
            array('title' => 'Noticias', 'link' => 'noticias')
        );

        Ey::addConfig('menu', $menu);
    }

    public function render()
    {
        $menu = Ey::getConfig('menu');
        $activeMenu = Ey::getConfig('activemenu');

        $html = '<ul>';

        foreach ($menu as $item) {
            if ($item['link'] == $activeMenu) {
                $html.='<li class="selected"><a href="' . WEB_ROOT . '/admin/' . $item['link'] . '">' . $item['title'] . '</a></li>';
            } else {
                $html.='<li><a href="' . WEB_ROOT . '/admin/' . $item['link'] . '">' . $item['title'] . '</a></li>';
            }
        }

        $html.='</ul>';
        return $html;
    }

}