<?php

// Paksa environment ke development agar error ditampilkan
define('ENVIRONMENT', 'development');

/*
 * ERROR REPORTING
 * Whoops error handler ditambahkan untuk menampilkan error yang lebih informatif
 */
use Whoops\Handler\PrettyPageHandler;
use Whoops\Handler\JsonResponseHandler;

define('ENABLE_WHOOPS', true);

require_once 'vendor/autoload.php';

switch (ENVIRONMENT)
{
    case 'development':
        error_reporting(-1);
        ini_set('display_errors', 1);

        // Tambahkan handler Whoops
        $whoops = new \Whoops\Run;
        $whoops->pushHandler(new PrettyPageHandler);

        if (\Whoops\Util\Misc::isAjaxRequest()) {
            $jsonHandler = new JsonResponseHandler();
            $jsonHandler->setJsonApi(true);
            $whoops->pushHandler($jsonHandler);
        }

        if (ENABLE_WHOOPS) {
            $whoops->register();
        }

        break;

    case 'testing':
    case 'production':
        ini_set('display_errors', 0);
        if (version_compare(PHP_VERSION, '5.3', '>=')) {
            error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED & ~E_STRICT & ~E_USER_NOTICE & ~E_USER_DEPRECATED);
        } else {
            error_reporting(E_ALL & ~E_NOTICE & ~E_STRICT & ~E_USER_NOTICE);
        }
        break;

    default:
        header('HTTP/1.1 503 Service Unavailable.', TRUE, 503);
        echo 'The application environment is not set correctly.';
        exit(1); // EXIT_ERROR
}

/*
 * SYSTEM DIRECTORY NAME
 */
$system_path = 'system';

/*
 * APPLICATION DIRECTORY NAME
 */
$application_folder = 'application';

/*
 * VIEW DIRECTORY NAME
 */
$view_folder = '';

/*
 * DEFAULT CONTROLLER (optional)
 */
// $routing['directory'] = '';
// $routing['controller'] = '';
// $routing['function'] = '';

/*
 * CUSTOM CONFIG VALUES (optional)
 */
// $assign_to_config['name_of_config_item'] = 'value of config item';

/*
 * DO NOT EDIT BELOW THIS LINE
 * ---------------------------------------------------------------
 */

// Set the current directory correctly for CLI requests
if (defined('STDIN')) {
    chdir(dirname(__FILE__));
}

if (($_temp = realpath($system_path)) !== FALSE) {
    $system_path = $_temp . DIRECTORY_SEPARATOR;
} else {
    $system_path = rtrim($system_path, '/\\') . DIRECTORY_SEPARATOR;
}

if (!is_dir($system_path)) {
    header('HTTP/1.1 503 Service Unavailable.', TRUE, 503);
    echo 'Your system folder path does not appear to be set correctly. Please open the following file and correct this: ' . pathinfo(__FILE__, PATHINFO_BASENAME);
    exit(3); // EXIT_CONFIG
}

define('SELF', pathinfo(__FILE__, PATHINFO_BASENAME));
define('BASEPATH', $system_path);
define('FCPATH', dirname(__FILE__) . DIRECTORY_SEPARATOR);
define('SYSDIR', basename(BASEPATH));

// Resolve application path
if (is_dir($application_folder)) {
    if (($_temp = realpath($application_folder)) !== FALSE) {
        $application_folder = $_temp;
    } else {
        $application_folder = rtrim($application_folder, '/\\');
    }
} elseif (is_dir(BASEPATH . $application_folder . DIRECTORY_SEPARATOR)) {
    $application_folder = BASEPATH . rtrim($application_folder, '/\\');
} else {
    header('HTTP/1.1 503 Service Unavailable.', TRUE, 503);
    echo 'Your application folder path does not appear to be set correctly. Please open the following file and correct this: ' . SELF;
    exit(3); // EXIT_CONFIG
}

define('APPPATH', $application_folder . DIRECTORY_SEPARATOR);

// Resolve view path
if (!isset($view_folder[0]) && is_dir(APPPATH . 'views' . DIRECTORY_SEPARATOR)) {
    $view_folder = APPPATH . 'views';
} elseif (is_dir($view_folder)) {
    if (($_temp = realpath($view_folder)) !== FALSE) {
        $view_folder = $_temp;
    } else {
        $view_folder = rtrim($view_folder, '/\\');
    }
} elseif (is_dir(APPPATH . $view_folder . DIRECTORY_SEPARATOR)) {
    $view_folder = APPPATH . rtrim($view_folder, '/\\');
} else {
    header('HTTP/1.1 503 Service Unavailable.', TRUE, 503);
    echo 'Your view folder path does not appear to be set correctly. Please open the following file and correct this: ' . SELF;
    exit(3); // EXIT_CONFIG
}

define('VIEWPATH', $view_folder . DIRECTORY_SEPARATOR);

/*
 * LOAD THE BOOTSTRAP FILE
 */
require_once __DIR__ . '/vendor/autoload.php';
require_once BASEPATH . 'core/CodeIgniter.php';
