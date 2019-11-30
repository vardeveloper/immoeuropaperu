<?php

class Web_Admin_Galerias_Svc_ActualizarGaleria
{

    public function doIt()
    {
        $this->actualizar();
    }

    public function actualizar()
    {
        if ($_POST['gal_titulo'] == '') {
            $error['gal_titulo'] = 'Ingrese Titulo';
        }

        if (count($error) > 0) {
            $_SESSION['post'] = $_POST;
            $_SESSION['error'] = $error;
            Ey::redirect($_SERVER['HTTP_REFERER']);
        }

        $id = Ey::getPrm(4);
        $obj = new Web_Db_Galerias();
        $row = array('gal_titulo' => $_POST['gal_titulo'],
            'gal_key' => Ey::urlAmigable($_POST['gal_titulo']));
        $obj->update($row, 'gal_id=' . $id);

        $handle = new Ey_Upload($_FILES['imagen']);
        if ($handle->uploaded) {
            @unlink(DATA_DIR . DS . 'img' . DS . 'galerias' . DS . 'gal_' . $id . '.jpg');
            $handle->file_new_name_body = 'gal_' . $id;
            $handle->file_new_name_ext = 'jpg';
            //$handle->image_resize = true;
            //$handle->image_x = 1002;
            //$handle->image_y = 550;
            $handle->process(APP_ROOT . DS . '_data/img/galerias');
            $handle->clean();
        }

        Ey::redirect(BASE_WEB_ROOT . '/admin/galerias');
    }

}
