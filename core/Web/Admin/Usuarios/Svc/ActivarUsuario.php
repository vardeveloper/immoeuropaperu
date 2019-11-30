<?php

class Web_Admin_Usuarios_Svc_ActivarUsuario
{

    public function doIt()
    {
        $this->activarUsuario();
    }

    private function activarUsuario()
    {
        $id = Ey::getPrm(4);

        $opc = Ey::getPrm(5);

        $obj = new Web_Db_Admin();

        if ($opc == 1) {
            $row = array('adm_estado' => '1');
        } else {
            $row = array('adm_estado' => '0');
        }
        $obj->update($row, 'adm_id=' . $id);

        Ey::goBack();
    }

}