<?php

class Web_Admin_Noticias_Svc_ActualizarNoticia
{

    public function doIt()
    {
        $this->actualizar();
    }

    private function actualizar()
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

        $id = Ey::getPrm(4);

        $obj = new Web_Db_Noticias();

        $row = array('not_titulo' => $_POST['not_titulo'],
                    'not_key' => Ey::urlAmigable($_POST['not_titulo']),
                    'not_descripcion' => addslashes(html_entity_decode($_POST['not_descripcion'])));

        $obj->update($row, 'not_id=' . $id);

        $handle = new Ey_Upload($_FILES['imagen']);

        if ($handle->uploaded) {
            @unlink(DATA_DIR . DS . 'img' . DS . 'noticias' . DS . 'not_' . $id . '.jpg');
            $handle->file_new_name_body = 'not_' . $id;
            $handle->file_new_name_ext = 'jpg';
//            $handle->image_resize = true;
//            $handle->image_ratio_crop = true;
//            $handle->image_x = 0;
//            $handle->image_y = 0;
            $handle->process(APP_ROOT . DS . '_data/img/noticias');
            $handle->clean();
        }

        Ey::redirect(WEB_ROOT . "/admin/noticias");
    }

}