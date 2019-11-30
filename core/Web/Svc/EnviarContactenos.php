<?php

class Web_Svc_EnviarContactenos
{

    public function doIt()
    {
        $this->enviarformulario();
    }

    private function enviarformulario()
    {
//        if ($_POST['name'] == '') {
//            $error['total'] = 'Ingrese nombre';
//        }
//        if ($_POST['email'] == '') {
//            $error['total'] = 'Ingrese email';
//        } else {
//            $validator = new Zend_Validate_EmailAddress();
//            if (!$validator->isValid(Ey_Util::getPost('email'))) {
//                $error['total'] = 'Ingrese un Email válido';
//            }
//        }
//        if ($_POST['asunto'] == '') {
//            $error['total'] = 'Ingrese asunto';
//        }
//        if ($_POST['mensaje'] == '') {
//            $error['total'] = 'Ingrese mensaje';
//        }
//        if (count($error) > 0) {
//            $_SESSION['post'] = $_POST;
//            $_SESSION['error'] = $error;
//            Ey::goBack();
//        }

        $comentario = stripslashes($_POST['message']);
        $dar_enters = str_replace("\n", "<br>", $comentario);
        $dar_espacops = str_replace(" ", "&nbsp; ", $dar_enters);
        $comentario_ok = $dar_espacops;

        $_POST['message'] = $comentario_ok;

        $html = '';
        $html.='<table style="font:14px/22px \'Trebuchet MS\',Arial,Helvetica,sans-serif">';
        foreach ($_POST as $key => $value) {
            if ($key != 'submit') {
                $html.='<tr><td width="150"><b>' . ucwords($key) . '</b> : </td><td width="450">' . $value . '</td></tr>';
            }
        }
        $html.='</table>';

        $smarty = new Smarty_Engine();
        $smarty->assign('html', $html);
        $message_body = Ey::utfToIso($smarty->fetch(APP_ROOT . DS . 'tpl' . DS . 'mail-contactenos.tpl'));

        $mail = new Zend_Mail();
        $mail->setBodyHtml($message_body);
        $mail->setFrom('immo.europa.peru@gmail.com', 'INMOBILIARI');
        $mail->addTo('immo.europa.peru@gmail.com');
//        $mail->addBcc('grap_kids@hotmail.com');
        $mail->setSubject(Ey::utfToIso('Contacto' . $_POST['subject']));
        $mail->send();

        $_SESSION['envio'] = 'Su información se ha enviado con éxito';

        Ey::goBack();
    }

}