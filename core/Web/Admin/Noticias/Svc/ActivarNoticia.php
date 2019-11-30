<?php

class Web_Admin_Noticias_Svc_ActivarNoticia
{

    public function doIt()
    {
        $this->activar();
    }

    private function activar()
    {
        $id = Ey::getPrm(4);

        $opc = Ey::getPrm(5);

        $obj = new Web_Db_Noticias();

        if ($opc == "1") {
            $row = array('not_estado' => '1');
        } else {
            $row = array('not_estado' => '0');
        }

        $obj->update($row, 'not_id=' . $id);

        Ey::goBack();
    }

}