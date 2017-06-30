<?php
use Core\HTML;
use Core\Config;
?>
<div class="screen7 js-anchor-block3">
    <div class="view-size">
        <div class="grid grid--space-def">
            <div class="gcell gcell--5 gcell--lg-5 order-opus">
                <div class="order-opus__inn">
                    <div class="order-title">Протестируйте Wezom.CMS бесплатно</div>
                    <div class="order-text"><?php echo Config::get('static.text_near_order_form')?></div>
                    <a href="<?php echo Config::get('basic.admin_link')?>" target="_blank" class="button button--svg button--lock button--mb10 visit_admin_panel">
                        <span>Перейти в админ-панель</span>
                        <svg>
                            <use xlink:href="<?php echo HTML::media('svg/sprite.svg#icon-lock')?>">
                        </svg>
                    </a>
                    <a href="<?php echo Config::get('basic.site_link')?>" target="_blank" class="button button--svg button--arrow visit_website">
                        <span>Перейти на демо-страницу</span>
                        <svg>
                            <use xlink:href="<?php echo HTML::media('svg/sprite.svg#icon-arrow')?>">
                        </svg>
                    </a>
                </div>
            </div>
            <div class="gcell gcell--7 gcell--lg-7" id="add-new">
                <div class="order-form form js-form" data-form="true" data-ajax="callback">
                    <div class="order-title">Готовы заказать сайт?</div>
                    <div class="order-slogan">Если вы хотите использовать Wezom.CMS и получить надежный и качественный сайт, просто оставьте вашу заявку. Наш менеджер свяжется с вами в кратчайшие сроки и обсудит все детали.</div>
                    <div class="control-holder control-holder--text">
                        <input id="order-name" data-name="name" class="js-order-input" type="text" name="order-name" required data-rule-word="true" data-rule-minlength="2">
                        <label for="order-name" class="form__label">Ваше имя</label>
                    </div>
                    <div class="control-holder control-holder--text">
                        <input id="order-email" data-name="email" class="js-order-input" type="email" name="order-email" required data-rule-email="true">
                        <label for="order-email" class="form__label">E-mail</label>
                    </div>
                    <?php if(array_key_exists('token', $_SESSION)): ?>
                        <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>" />
                    <?php endif; ?>
                    <div class="control-holder">
                        <button class="button js-form-submit">
                            <span>отправить заявку</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>