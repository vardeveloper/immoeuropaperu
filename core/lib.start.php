<?php

// Contantes con los PATH mas importantes
// Const Separador de directorios
define('DS', DIRECTORY_SEPARATOR);

// Directorio Base de la aplicación Web
define('DOC_ROOT', dirname(dirname(__FILE__)));

// Directorio de librerias
define('LIB_ROOT', DOC_ROOT . DS . '_library');

// Raiz de aplicaciones
define('CORE_ROOT', DOC_ROOT . DS . 'core');
define('CACHE_DIR', DOC_ROOT . DS . 'cache');

// Identificador de la aplicación (nombre o acrónimo)
define('APP_NAME', 'Web');

// Directoro raiz de la aplicación
define('APP_ROOT', CORE_ROOT . DS . APP_NAME);

// Directorio Data
define('DATA_DIR', APP_ROOT . DS . '_data');

// Directoro raiz del admin
define('ADMIN_ROOT', APP_ROOT . DS . 'Admin');

// Directorio de plantillas
define('TPL_ROOT', APP_ROOT . DS . 'tpl');

// Directorio de plantillas del admin
define('ADMIN_TPL', ADMIN_ROOT . DS . 'tpl');

// Raiz de la dirección Web (url)
define('BASE_WEB_ROOT', 'http://local.inmoeuropaperu.com');

// Simbolo de moneda predeterminado
//define('APP_TITLE',':: Tikariy :: AGENCIA DE VIAJES');
// Email de la Web
define('INFO_MAIL', 'vitucho_6@hotmail.com');

//Directorio para las imagenes de la carpeta media
define('PUB_DIR', DOC_ROOT . DS . 'public_html');

define('MOD_USUARIOS', 'usuarios');
define('MOD_BANNER', 'banner');
define('MOD_CATEGORIAS', 'categorias');
define('MOD_PRODUCTOS', 'productos');
define('MOD_GALERIAS', 'galerias');
define('MOD_NOTICIAS', 'noticias');

/**
 * PATH de busqueda para archivos de inclusión
 */
set_include_path(LIB_ROOT . PATH_SEPARATOR . LIB_ROOT . DS . 'Dom' .
        PATH_SEPARATOR . CORE_ROOT);

/**
 * Zona horaria de la web
 */
date_default_timezone_set('America/Lima');
Zend_Date::setOptions(array('format_type' => 'iso'));

/**
 * Iniciar la Sesión
 */
Zend_Session::start();

/**
 * Conexión con el servidor de datos
 */
$serverConfig = array(
    'host' => 'localhost', /* Servidor de base de datos */
    'username' => 'root', /* Usuario del servidor MySQL */
    'password' => '123456', /* Password */
    'dbname' => 'inmoeuro');

$db = new Zend_Db_Adapter_Mysqli($serverConfig);

$db->setFetchMode(Zend_Db::FETCH_OBJ);
$db->getConnection();
$db->setFetchMode(Zend_Db::FETCH_OBJ);

Zend_Db_Table_Abstract::setDefaultAdapter($db);

$stmt = new Zend_Db_Statement_Mysqli($db, "SET CHARACTER SET utf8");
$stmt->execute();
$stmt = new Zend_Db_Statement_Mysqli($db, "SET NAMES utf8");
$stmt->execute();
/**
 * Iniciar el controlador
 */
$controller = new Controlador();
$controller->addModule('admin');
$controller->addModule('admin/usuarios');
$controller->addModule('admin/banner');
$controller->addModule('admin/categorias');
$controller->addModule('admin/productos');
$controller->addModule('admin/galerias');
$controller->addModule('admin/noticias');

/*
 * Configurar el login de la aplicacion (front end)
 */

//Ey_Login::setLoginInfo('Web_Db_Cliente','cli_user','cli_pass');

/**
 * Configurar los idiomas
 */
Idioma::addIdioma('Español', 'es', 'es', 1, 'es_PE');
//Idioma::addIdioma('Ingles', 'en', 'en', 2, 'en_US');

/**
 *  Idioma predeterminado
 */
define('APP_LANG', 'es');

/**
 * Cargar el idioma
 */
Idioma::loadLanguage();

/**
 * Cargar las URL y sus traducciones
 */
//Url::cargarUrls();

/**
 * Function de autocarga de objetos
 */
function __autoload($cls) {
    $file = str_replace('_', DS, $cls) . '.php';
    include_once($file);
}

/**
 * Iniciar el controlador
 */
$controller->start();