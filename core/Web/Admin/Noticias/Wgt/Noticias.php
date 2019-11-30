<?php

class Web_Admin_Noticias_Wgt_Noticias
{

    public function render()
    {
        return $this->lista();
    }

    private function lista()
    {
        Ey::addConfig('activemenu', Ey::getPrm(1));

        $obj = new Web_Db_Noticias();

        $db = $obj->getAdapter();

        $select = $db->select()
                    ->from('noticia')
                    ->order('not_id DESC');

        $pager = new Ey_Pager($select, WEB_ROOT . '/admin/noticias/main', Ey::getPrm(3), 15);

        $rows = $pager->fetchAll();

        $navegador = $pager->getNavigation();

        if (!is_null($rows)) {

            $noticias = array();

            foreach ($rows as $row) {
                if ($sw == 1) {
                    $bgcolor = 'second';
                    $sw = 0;
                } else {
                    $bgcolor = 'first';
                    $sw = 1;
                }

                if ($row->not_estado != 1) {
                    $bloquear = Ey::crearBoton(WEB_ROOT . '/admin/noticias/svc/activar-noticia/' . $row->not_id . '/1', 'Activar', 'adm_btn_ok');
                } else {
                    $bloquear = Ey::crearBoton(WEB_ROOT . '/admin/noticias/svc/activar-noticia/' . $row->not_id . '/0', 'Bloquear', 'adm_btn_alert');
                }

                $modificar = Ey::crearBoton(WEB_ROOT . '/admin/noticias/modificar-noticia/' . $row->not_id, 'Modificar', 'adm_btn_ok');

                $eliminar = Ey::crearBoton(WEB_ROOT . '/admin/noticias/svc/eliminar-noticia/' . $row->not_id, 'Eliminar', 'adm_btn_alert adm_alert_delete');

                $html2 = '<a class="deta" href="' . WEB_ROOT . '/admin/noticias/detalle-noticia/' . $row->not_id . '">' . $row->not_titulo . '</a>';

                $noticia = array('id' => $row->not_id,
                                'html2' => $html2,
                                'descripcion' => Ey::recortar($row->not_descripcion, 250),
                                'fecha' => $row->not_fecha,
                                'bloquear' => $bloquear,
                                'modificar' => $modificar,
                                'eliminar' => $eliminar,
                                'bgcolor' => $bgcolor);

                $noticias[] = $noticia;
            }
            
//            echo "<pre>";
//            print_r($noticia);
//            echo "</pre>";
//            exit;

            $smarty = new Smarty_Engine();
            $smarty->assign('navigator', $navegador);
            $smarty->assign('noticias', $noticias);
            $smarty->assign('total', $pager->recordCount());

            if (count($rows) <= 0) {
                $smarty->assign('footermsg', 'Aun no se han creado Noticias');
            }

            return $smarty->fetch(ADMIN_NOTICIAS_DIR . DS . 'tpl' . DS . 'noticias.tpl');
        }
    }

}