<?php
use Core\HTML;
use Core\Config;
?>
<div class="screen1">
    <div class="monitors">
        <div class="monitor1">
            <img src="<?php echo HTML::media('css/pic/monitor1.png')?>" alt="">
        </div>
        <div class="monitor2">
            <img src="<?php echo HTML::media('css/pic/monitor2.png')?>" alt="">
        </div>
        <div class="graf3"><img src="<?php echo HTML::media('css/pic/graf3.png')?>" alt=""></div>
        <div class="graf2"><img src="<?php echo HTML::media('css/pic/graf2.png')?>" alt=""></div>
        <div class="graf1"><img src="<?php echo HTML::media('css/pic/graf1.png')?>" alt=""></div>
    </div>
    <div class="view-size view-size--big">
        <div class="left-size">
					<span class="logo">
						<img src="<?php echo HTML::media('css/pic/logo.png')?>" alt="">
					</span>
            <div class="screen1-title">Надежная CMS<br/>и ничего лишнего</div>
            <div class="screen1-slogan">Гибкая система управления сайтом без разовой и ежемесячной оплаты за лицензию</div>
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
</div>