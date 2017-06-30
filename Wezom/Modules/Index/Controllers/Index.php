<?php
    namespace Wezom\Modules\Index\Controllers;

    use Wezom\Modules\Arguments\Models\Arguments;
    use Wezom\Modules\Contacts\Models\Callback;
    use Wezom\Modules\Projects\Models\Projects;
    use Core\View;

    class Index extends \Wezom\Modules\Base {

        function indexAction () {
            $this->_seo['h1'] = __('Панель управления');
            $this->_seo['title'] = __('Панель управления');

            $count_projects = Projects::countRows();
            $count_arguments = Arguments::countRows();
            $count_callbacks = Callback::countRows();

            $this->_content = View::tpl( [
                'count_projects' => $count_projects,
                'count_arguments' => $count_arguments,
                'count_callbacks' => $count_callbacks,
            ], 'Index/Main');
        }

    }