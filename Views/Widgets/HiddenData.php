<?php
use Core\HTML;
?>
<?php $css = Minify\Core::factory('css')->minify($styles); ?>
<?php foreach ($css as $file_style): ?>
    <?php echo HTML::style($file_style) . "\n"; ?>
<?php endforeach; ?>
<?php $js = Minify\Core::factory('js')->minify($scripts); ?>
<?php foreach ($js as $file_script): ?>
    <?php echo HTML::script($file_script) . "\n"; ?>
<?php endforeach; ?>

<?php foreach ($scripts_no_minify as $file_script): ?>
    <?php echo HTML::script($file_script) . "\n"; ?>
<?php endforeach; ?>

<!-- @TODO @all Демо скрипт с переводами, в основном для jquery-validate. заменить на программный файл, который должен содержать глобальный объект `validationTranslate` -->
<script src="<?php echo HTML::media('js/programmer/translate-ru.js')?>"></script>

<!--wold.js settings -->
<!-- @TODO @all Изменить путь к изображению на относительный от корня сайта, в переменной `$wzmOld_URL_IMG` -->
<script>var $wzmOld_URL_IMG = '<?php echo \Core\HTML::link('css/pic/wezom-info-red.gif')?>';</script>
<script async="async" defer="defer" src="<?php echo HTML::media('js/wold.js')?>"></script>

<!-- noscript-msg -->
<noscript>
    <link rel="stylesheet" href="<?php echo HTML::media('css/noscript-msg.css')?>">
    <input id="noscript-msg__close" type="checkbox" title="Закрити">
    <div id="noscript-msg">
        <label id="noscript-msg__times" for="noscript-msg__close" title="Закрити">&times;</label>
        <a href="http://wezom.com.ua/" target="_blank" title="Cтудія Wezom" id="noscript-msg__link">&nbsp;</a>
        <div id="noscript-msg__block">
            <div id="noscript-msg__text">
                <p>В Вашем браузере отключен
                    <strong>JavaScript</strong>! Для корректной работы с сайтом необходима поддержка Javascript.</p>
                <p>Мы рекомендуем Вам включить использование JavaScript в настройках вашего браузера.</p>
            </div>
        </div>
    </div>
</noscript>