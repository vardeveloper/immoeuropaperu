<?php

abstract class Web_BasePage extends HTMLDocument
{

    public function __construct($title = NULL, $render_type = DOM::HTML5, $indent_style = DOM::INDENT_NICE)
    {
        parent::__construct($title, $render_type, $indent_style);
        parent::set_charset('utf-8');
        parent::add_head_content('<link rel="shortcut icon" href="' . BASE_WEB_ROOT . '/images/favicon.png" />');
        parent::add_head_content('<meta name="viewport" content="width=device-width, initial-scale=1.0">');
        parent::add_head_content('<link href="http://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">');
        parent::add_head_content('<link href="http://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet" type="text/css">');
        parent::add_head_content('<link href="' . BASE_WEB_ROOT . '/css/bootstrap.css" rel="stylesheet" media="all">');
        parent::add_head_content('<link href="' . BASE_WEB_ROOT . '/css/_responsive-utilities.css" rel="stylesheet" media="all">');
        parent::add_head_content('<link href="' . BASE_WEB_ROOT . '/css/font-awesome.min.css" rel="stylesheet" media="all">');
        parent::add_head_content('<link href="' . BASE_WEB_ROOT . '/css/responsive.css" rel="stylesheet" media="all">');
        parent::add_head_content('<link href="' . BASE_WEB_ROOT . '/js/flexslider/flexslider.css" rel="stylesheet" media="all">');
        parent::add_head_content('<link href="' . BASE_WEB_ROOT . '/js/prettyphoto/prettyPhoto.css" rel="stylesheet" media="all">');
        parent::add_head_content('<link href="' . BASE_WEB_ROOT . '/js/swipebox/swipebox.css" rel="stylesheet" media="all">');
        parent::add_head_content('<link href="' . BASE_WEB_ROOT . '/css/main.css" rel="stylesheet" media="all">');
        $this->contenido = new Container();
    }

    public function render()
    {
//        $prm = Ey::getPrm(0);
//        $url = (string) $prm;
//        echo $url;
        
        $smarty = new Smarty_Engine();
//        $smarty->assign('url', $url);
        $smarty->assign('header', Web_Wgt_Header::render());
        $smarty->assign('footer', Web_Wgt_Footer::render());
        $smarty->assign('contenido', $this->mainContent());
        $this->add($smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'base-page.tpl'));

        echo parent::render();
    }
    
    public function obtenerId($obj, $pref, $key)
    {
        $campId = $pref . '_id';
        $tabla = $obj->fetchRow($obj->select()->where($pref . '_key=?', $key));
        return $tabla->$campId;
    }

    public function obtenerKey($obj, $pref, $id)
    {
        $campKey = $pref . '_key';
        $tabla = $obj->fetchRow($obj->select()->where($pref . '_id=?', $id));
        return $tabla->$campKey;
    }

    abstract protected function mainContent();
}
