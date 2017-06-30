<?php
use Core\Config;
?>
<header class="view-header clear-fix js-animation">
    <div class="header-left fll">
				<span class="js-anchor logo" data-anchor="1">
					<img src="<?php echo \Core\HTML::media('css/pic/logo.png')?>" alt="">
					<span>Результативное
						<br/>продвижение сайтов</span>
				</span>
    </div>
    <div class="header-right flr">
        <a href="tel:<?php echo preg_replace('/[^0-9]*/', '', Config::get('static.phone')); ?>" class="phone"><?php echo Config::get('static.phone')?></a>
        <span><?php echo Config::get('static.schedule')?></span>
    </div>
    <div class="header-center">
        <div class="menu">
            <span class="js-anchor" data-anchor="5">Услуги</span>
            <span class="js-anchor" data-anchor="8">Тарифы</span>
            <span class="js-anchor" data-anchor="3">Кейсы</span>
            <span class="js-anchor" data-anchor="10">Достижения</span>
            <span class="js-anchor" data-anchor="9">Команда</span>
        </div>
    </div>
</header>