<?php

class Web_Admin_Usuarios_Svc_DeleteUsuario
{

    public function doIt()
    {
        $this->eliminar();
    }

    private function eliminar()
    {
        $id = Ey::getPrm(4);
        
        $obj = new Web_Db_Privilegios();
        
        $db = $obj->getAdapter();
        
        $rs = $db->fetchAll($obj->select()->where('mod_id_admin=?', $id));
        
        foreach ($rs as $value) {
             $obj->delete('mod_id_admin=' . $id);
        }

        $obj = new Web_Db_Admin();

        $obj->delete('adm_id=' . $id);

        Ey::goBack();
    }

}