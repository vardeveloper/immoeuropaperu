<?php

class Web_Admin_Noticias_Svc_GuardarNoticia
{

    public function doIt()
    {
        $this->guardar();
    }

    private function guardar()
    {
        if ($_POST['not_titulo'] == '') {
            $error['not_titulo'] = 'Ingrese el Titulo';
        }
        
        if ($_POST['not_descripcion'] == '') {
            $error['not_descripcion'] = 'Ingrese la Descripcion';
        }

        if (count($error) > 0) {
            $_SESSION['post'] = $_POST;
            $_SESSION['error'] = $error;
            Ey::goBack();
        }

        $obj = new Web_Db_Noticias();

        $row = array('not_titulo' => $_POST['not_titulo'],
                    'not_key' => Ey::urlAmigable($_POST['not_titulo']),
                    'not_descripcion' => addslashes(html_entity_decode($_POST['not_descripcion'])),
//                    'not_fecha' => date('Y-m-d H:m:s'),
                    'not_estado' => 0);

        $obj->insert($row);

        $id = $obj->getAdapter()->lastInsertId();

        $handle = new Ey_Upload($_FILES['imagen']);

        if ($handle->uploaded) {
            $handle->file_new_name_body = 'not_' . $id;
            $handle->file_new_name_ext = 'jpg';
//            $handle->image_resize = true;
//            $handle->image_ratio_crop = true;
//            $handle->image_x = 0;
//            $handle->image_y = 0;
            $handle->process(APP_ROOT . DS . '_data/img/noticias');
            $handle->clean();
        }

        Ey::redirect(BASE_WEB_ROOT . '/admin/noticias');
    }

}