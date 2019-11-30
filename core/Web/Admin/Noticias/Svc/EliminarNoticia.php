<?php

class Web_Admin_Noticias_Svc_EliminarNoticia
{

    public function doIt()
    {
        $this->eliminar();
    }

    private function eliminar()
    {
        $not_id = Ey::getPrm(4);

        $obj = new Web_Db_Noticias();

        $obj->delete('not_id=' . $not_id);

        @unlink(DATA_DIR . DS . 'img' . DS . 'noticias' . DS . 'not_' . $not_id . '.jpg');

        Ey::goBack();
    }

}