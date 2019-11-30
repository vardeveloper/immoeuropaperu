<?php

class Web_Svc_DoSearch
{

    public function doIt()
    {
        $criterio = Ey::getPost('q');
        
        if ($criterio != "") {
            $v0 = urlencode($criterio);
        } else {
            $v0 = '...';
        }
        
        Ey::redirect(BASE_WEB_ROOT . '/busqueda/texto:' . $v0);
    }

}