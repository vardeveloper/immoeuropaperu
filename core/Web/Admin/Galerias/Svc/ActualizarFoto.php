<?php

class Web_Admin_Galerias_Svc_ActualizarFoto
{

    public function doIt()
    {
        $this->actualizar();
    }

    public function actualizar()
    {
//        if ($_POST['fot_titulo'] == '') {
//            $error['fot_titulo'] = 'Ingrese Titulo';
//        }

        if (count($error) > 0) {
            $_SESSION['post'] = $_POST;
            $_SESSION['error'] = $error;

            Ey::redirect($_SERVER['HTTP_REFERER']);
        }

        $fot_id = Ey::getPrm(4);

        $gal_id = Ey::getPrm(5);

        $obj = new Web_Db_Fotos();

        $row = array('fot_titulo' => $_POST['fot_titulo']);

        $obj->update($row, 'fot_id=' . $fot_id);

        $handle = new Ey_Upload($_FILES['imagen']);

        if ($handle->uploaded) {
            $handle->file_new_name_body = 'fot_' . $fot_id;
            $handle->file_new_name_ext = 'jpg';
//            $handle->image_resize = true;
//            $handle->image_ratio_crop = true;
//            $handle->image_x = 600;
//            $handle->image_y = 450;
//            $handle->image_watermark = APP_ROOT . DS . '_data/img/logo-grapkids-marca.png';
            $handle->process(APP_ROOT . DS . '_data/img/fotos');
//            $handle->clean();
        }
        
        $handleMedio = new Ey_Upload($_FILES['imagen']);
        if ($handleMedio->uploaded) {
            $handleMedio->file_new_name_body = 'fot_' . $fot_id . '_m';
            $handleMedio->file_new_name_ext = 'jpg';
            $handleMedio->image_resize = true;
//            $handleMedio->image_ratio_crop = true;
            $handleMedio->image_x = 378;
            $handleMedio->image_y = 189;
            $handleMedio->process(APP_ROOT . DS . '_data/img/fotos');
            $handleMedio->clean();
        }

        Ey::redirect(BASE_WEB_ROOT . '/admin/galerias/fotos/' . $gal_id);
    }

}
