<?php

abstract class Web_BasePageError extends HTMLDocument
{

    public function __construct($title = NULL, $render_type = DOM::HTML5, $indent_style = DOM::INDENT_NICE)
    {
        parent::__construct($title, $render_type, $indent_style);
        parent::set_charset('utf-8');
        parent::add_head_content('<link rel="shortcut icon" href="' . BASE_WEB_ROOT . '/images/favicon.png" />');
        parent::add_head_content('<meta name="viewport" content="width=device-width, initial-scale=1.0">');
        parent::add_head_content('<link href="' . BASE_WEB_ROOT . '/css/bootstrap.css" rel="stylesheet" media="all">');
        $this->contenido = new Container();
    }

    public function render()
    {
        $smarty = new Smarty_Engine();
        $smarty->assign('contenido', $this->mainContent());
        $this->add($smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'base-page-error.tpl'));

        echo parent::render();
    }
    
    abstract protected function mainContent();

}
