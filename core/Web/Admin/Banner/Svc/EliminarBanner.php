<?php

class Web_Admin_Banner_Svc_EliminarBanner
{

    public function doIt()
    {
        $this->eliminar();
    }

    private function eliminar()
    {
        $id = Ey::getPrm(4);

        $obj = new Web_Db_Banner();

        $obj->delete('ba_id=' . $id);

        @unlink(DATA_DIR . DS . 'img' . DS . 'banner' . DS . 'banner_' . $id . '.jpg');

        Ey::goBack();
    }

}
