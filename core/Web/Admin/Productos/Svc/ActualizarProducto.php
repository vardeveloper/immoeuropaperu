<?php

class Web_Admin_Productos_Svc_ActualizarProducto
{

    public function doIt()
    {
        $this->actualizar();
    }

    private function actualizar()
    {
        if ($_POST['pro_nombre'] == '') {
            $error['pro_nombre'] = 'Ingrese Nombre';
        }
        if ($_POST['pro_descripcion'] == '') {
            $error['pro_descripcion'] = 'Ingrese Descripcion';
        }
        if ($_POST['pro_precio_s'] == '') {
            $error['pro_precio_s'] = 'Ingrese Precio Soles';
        }
        if (count($error) > 0) {
            $_SESSION['post'] = $_POST;
            $_SESSION['error'] = $error;
            Ey::redirect($_SERVER['HTTP_REFERER']);
        }

        $id = Ey::getPrm(4);

        $obj = new Web_Db_Productos();

        $row = array(
            'pro_nombre' => $_POST['pro_nombre'],
            'pro_tipo_moneda' => $_POST['pro_tipo_moneda'],
            'pro_precio' => $_POST['pro_precio_s'],
            'pro_descripcion' => $_POST['pro_descripcion'],
            'pro_video' => $_POST['pro_video'],
            'pro_tipo' => $_POST['pro_tipo'],
            'pro_key' => Ey::urlAmigable($_POST['pro_nombre'])
        );

        $obj->update($row, 'pro_id=' . $id);

        // Subir imagenes
        $handle = new Ey_Upload($_FILES['imagen']);
        if ($handle->uploaded) {
            
            @unlink(DATA_DIR . DS . 'img' . DS . 'productos' . DS . 'pro_' . $id . '.jpg');
            @unlink(DATA_DIR . DS . 'img' . DS . 'productos' . DS . 'pro_' . $id . '_small.jpg');
            @unlink(DATA_DIR . DS . 'img' . DS . 'productos' . DS . 'pro_' . $id . '_m.jpg');
            
            
            $handle->file_new_name_body = 'pro_' . $id;
            $handle->file_new_name_ext = 'jpg';
//            $handle->image_resize = true;
//            $handle->image_ratio_crop = true;
//            $handle->image_x = 600;
//            $handle->image_y = 450;
            $handle->process(APP_ROOT . DS . '_data/img/productos');
//            $handle->clean();
        }

        $handleSmall = new Ey_Upload($_FILES['imagen']);
        if ($handleSmall->uploaded) {
            $handleSmall->file_new_name_body = 'pro_' . $id . '_small';
            $handleSmall->file_new_name_ext = 'jpg';
            $handleSmall->image_resize = true;
//            $handleSmall->image_ratio_crop = true;
            $handleSmall->image_x = 244;
            $handleSmall->image_y = 122;
            $handleSmall->process(APP_ROOT . DS . '_data/img/productos');
//            $handleSmall->clean();
        }

        $handleMedio = new Ey_Upload($_FILES['imagen']);
        if ($handleMedio->uploaded) {
            $handleMedio->file_new_name_body = 'pro_' . $id . '_m';
            $handleMedio->file_new_name_ext = 'jpg';
            $handleMedio->image_resize = true;
            $handleMedio->image_ratio_crop = true;
            $handleMedio->image_x = 246;
            $handleMedio->image_y = 162;
            $handleMedio->process(APP_ROOT . DS . '_data/img/productos');
            $handleMedio->clean();
        }


        $handle1 = new Ey_Upload($_FILES['imagen1']);
        if ($handle1->uploaded) {
            @unlink(DATA_DIR . DS . 'img' . DS . 'productos' . DS . 'pro_' . $id . '_1.jpg');
            $handle1->file_new_name_body = 'pro_' . $id . '_1';
            $handle1->file_new_name_ext = 'jpg';
            $handle1->process(APP_ROOT . DS . '_data/img/productos');
            $handle1->clean();
        }

        $handle2 = new Ey_Upload($_FILES['imagen2']);
        if ($handle2->uploaded) {
            @unlink(DATA_DIR . DS . 'img' . DS . 'productos' . DS . 'pro_' . $id . '_2.jpg');
            $handle2->file_new_name_body = 'pro_' . $id . '_2';
            $handle2->file_new_name_ext = 'jpg';
            $handle2->process(APP_ROOT . DS . '_data/img/productos');
            $handle2->clean();
        }

        $handle3 = new Ey_Upload($_FILES['imagen3']);
        if ($handle3->uploaded) {
            @unlink(DATA_DIR . DS . 'img' . DS . 'productos' . DS . 'pro_' . $id . '_3.jpg');
            $handle3->file_new_name_body = 'pro_' . $id . '_3';
            $handle3->file_new_name_ext = 'jpg';
            $handle3->process(APP_ROOT . DS . '_data/img/productos');
            $handle3->clean();
        }

        $handle4 = new Ey_Upload($_FILES['imagen4']);
        if ($handle4->uploaded) {
            @unlink(DATA_DIR . DS . 'img' . DS . 'productos' . DS . 'pro_' . $id . '_4.jpg');
            $handle4->file_new_name_body = 'pro_' . $id . '_4';
            $handle4->file_new_name_ext = 'jpg';
            $handle4->process(APP_ROOT . DS . '_data/img/productos');
            $handle4->clean();
        }

        $handle5 = new Ey_Upload($_FILES['imagen5']);
        if ($handle5->uploaded) {
            @unlink(DATA_DIR . DS . 'img' . DS . 'productos' . DS . 'pro_' . $id . '_5.jpg');
            $handle5->file_new_name_body = 'pro_' . $id . '_5';
            $handle5->file_new_name_ext = 'jpg';
            $handle5->process(APP_ROOT . DS . '_data/img/productos');
            $handle5->clean();
        }

        $handle6 = new Ey_Upload($_FILES['imagen6']);
        if ($handle6->uploaded) {
            @unlink(DATA_DIR . DS . 'img' . DS . 'productos' . DS . 'pro_' . $id . '_6.jpg');
            $handle6->file_new_name_body = 'pro_' . $id . '_6';
            $handle6->file_new_name_ext = 'jpg';
            $handle6->process(APP_ROOT . DS . '_data/img/productos');
            $handle6->clean();
        }

        Ey::redirect(WEB_ROOT . "/admin/productos");
    }

}
