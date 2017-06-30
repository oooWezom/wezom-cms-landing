<?php
use Core\HTML;
use Core\Config;
?>
<div class="js-scroll_up scroll_up">
    <svg>
        <use xlink:href="<?php echo HTML::media('svg/sprite.svg#icon_arrow_up')?>"></use>
    </svg>
</div>
<a href="" id="to-site" target="_blank"></a>
<a href="" id="to-admin" target="_blank"></a>
<footer class="view-footer">
    <div class="view-size">
        <div class="footer-top">
            <div class="footer-top__text">
                <div class="question">Остались вопросы? Позвоните нам</div>
                <a href="tel:<?php echo preg_replace('/[^0-9]*/','',Config::get('static.phone'))?>?call" class="phone"><?php echo Config::get('static.phone')?></a>
                <a href="mailto:office@wezom.com.ua" class="email"><?php echo Config::get('static.contact_email')?></a>
            </div>
        </div>
        <div class="footer-bot">
            <a href="http://wezom.com.ua" target="_blank"><?php echo Config::get('static.copyright'); ?></a>
        </div>
    </div>
</footer>
<?php if (isset($counters)): ?>
    <?php foreach ($counters as $counter): ?>
        <?php echo $counter; ?>
    <?php endforeach ?>
<?php endif ?>
