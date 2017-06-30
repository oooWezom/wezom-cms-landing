<?php
namespace Core;

use Modules\Catalog\Models\Groups;
use Modules\Catalog\Models\Items;
use Modules\News\Models\News;
use Core\QB\DB;
use Modules\Cart\Models\Cart;
use Modules\Catalog\Models\Filter;

/**
 *  Class that helps with widgets on the site
 */
class Widgets
{

    static $_instance; // Constant that consists self class

    public $_data = []; // Array of called widgets
    public $_tree = []; // Only for catalog menus on footer and header. Minus one query

    // Instance method
    static function factory()
    {
        if (self::$_instance == NULL) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    /**
     *  Get widget
     * @param  string $name [Name of template file]
     * @param  array $array [Array with data -> go to template]
     * @return string        [Widget HTML]
     */
    public static function get($name, $array = [], $save = true, $cache = false)
    {
        $arr = explode('_', $name);
        $viewpath = implode('/', $arr);

        if (APPLICATION == 'backend' && !Config::get('error')) {
            $w = WidgetsBackend::factory();
        } else {
            $w = Widgets::factory();
        }

        $_cache = Cache::instance();
        if ($cache) {
            if (!$_cache->get($name)) {
                $data = NULL;
                if ($save && isset($w->_data[$name])) {
                    $data = $w->_data[$name];
                } else {
                    if ($save && isset($w->_data[$name])) {
                        $data = $w->_data[$name];
                    } else if (method_exists($w, $name)) {
                        $result = $w->$name($array);
                        if ($result !== null && $result !== false) {
                            $array = array_merge($array, $result);
                            $data = View::widget($array, $viewpath);
                        } else {
                            $data = null;
                        }
                    } else {
                        $data = $w->common($viewpath, $array);
                    }
                }
                $_cache->set($name, HTML::compress($data, true));
                return $w->_data[$name] = $data;
            } else {
                return $_cache->get($name);
            }
        }
        if ($_cache->get($name)) {
            $_cache->delete($name);
        }
        if ($save && isset($w->_data[$name])) {
            return $w->_data[$name];
        }
        if (method_exists($w, $name)) {
            $result = $w->$name($array);
            if ($result !== null && $result !== false) {
                if (is_array($result)) {
                    $array = array_merge($array, $result);
                }
                return $w->_data[$name] = View::widget($array, $viewpath);
            } else {
                return $w->_data[$name] = null;
            }
        }
        return $w->_data[$name] = $w->common($viewpath, $array);
    }

    /**
     *  Common widget method. Uses when we have no widgets called $name
     * @param  string $viewpath [Name of template file]
     * @param  array $array [Array with data -> go to template]
     * @return string            [Widget HTML or NULL if template doesn't exist]
     */
    public function common($viewpath, $array)
    {
        if (file_exists(HOST . '/Views/Widgets/' . $viewpath . '.php')) {
            return View::widget($array, $viewpath);
        }
        return null;
    }


    public function Index_Screen3()
    {
        $result = Common::factory('projects')->getRows(1, 'sort');
        if (!sizeof($result)) {
            return false;
        }
        return ['result' => $result];
    }

    public function Index_Screen5()
    {
        $result = Common::factory('arguments')->getRows(1, 'sort');
        if (!sizeof($result)) {
            return false;
        }
        return ['result' => $result];
    }


    /*public function Footer()
    {
        $contentMenu = Common::factory('sitemenu')->getRows(1, 'sort');
        $array['contentMenu'] = $contentMenu;
        return $array;
    }*/

    /*public function Header()
    {
        $contentMenu = Common::factory('sitemenu')->getRows(1, 'sort');
        $array['contentMenu'] = $contentMenu;
        $array['user'] = User::info();
        return $array;
    }*/

    public function HiddenData()
    {
        $styles = [
            HTML::media('css/vendor/jquery-plugins.css'),
            HTML::media('css/fonts.css'),
//                HTML::media('css/programmer/magnific.css'),
            HTML::media('css/style.css'),
            HTML::media('css/responsive.css'),
            HTML::media('css/wnoty/jquery.wnoty-2.0.css'),
            HTML::media('css/wnoty/jquery.wnoty-theme-default.css'),
            HTML::media('css/programmer/my.css'),
            HTML::media('css/wPreloader.css'),
        ];
        $scripts = [
            HTML::media('js/vendor/modernizr.js'),
            HTML::media('js/vendor/jquery.js'),
            HTML::media('js/vendor/jquery-plugins.js'),
            HTML::media('js/init.js'),
            HTML::media('js/wPreloader.js'),
            HTML::media('js/wnoty/jquery.wnoty-2.0.js'),
            HTML::media('js/programmer/my.js'),
        ];
        $scripts_no_minify = [
            HTML::media('js/programmer/ulogin.js'),
        ];
        return ['scripts' => $scripts, 'styles' => $styles, 'scripts_no_minify' => $scripts_no_minify];
    }

}

