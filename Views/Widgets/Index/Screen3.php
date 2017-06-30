<?php
use Core\HTML;
use Core\Config;
?>
<div class="screen3">
    <div class="view-size view-size--big block-with-underground">
        <div class="title--underground title--fiol title--center">Доверие</div>
        <div class="view-size">
            <div class="title tac title--white">Проекты, реализованные на нашей CMS</div>
            <div class="screen1-slogan tac screen1-slogan--center">Агентство Wezom является лидером рынка по созданию сложных и многофункциональных сайтов. Нам доверили проекты более 600 клиентов – и их число постоянно растёт!</div>
        </div>
        <div class="grid portfolio grid--space-def">
            <?php foreach ($result as $obj):?>
            <div class="gcell gcell--12 gcell--xs-6 gcell--md-4 gcell--lg-3 is-animation js-animation">
                <a href="<?php echo $obj->link?>" target="_blank" class="portfolio-item">
                    <?php if (is_file(HOST . HTML::media('/images/projects/' . $obj->image))): ?>
                        <img src="<?php echo HTML::media('/images/projects/' . $obj->image); ?>" alt="">
                    <?php else:?>
                        <img src="<?php echo HTML::media('/images/no-image/400x260.png'); ?>" alt="">
                    <?php endif ?>
                    <span class="portfolio-link">
								<svg>
									<use xlink:href="<?php echo HTML::media('svg/sprite.svg#icon-link')?>">
								</svg>
								<span><?php echo $obj->name?></span>
							</span>
                </a>
            </div>
            <?php endforeach;?>
            <div class="gcell gcell--12 gcell--xs-6 gcell--md-4 gcell--lg-3 is-animation js-animation posRel">
                <div class="js-acnhor anchor-link add-new" data-anchor="3">
                    <div class="add-new__text"><span>+</span>Создать свой</div>
                </div>
            </div>
        </div>
        <div class="portfolio-link__all tac">
            <a href="<?php echo Config::get('basic.portfolio_link')?>" target="_blank" class="button button--svg button--arrow">
                <span>Все проекты</span>
                <svg>
                    <use xlink:href="<?php echo HTML::media('svg/sprite.svg#icon-arrow')?>">
                </svg>
            </a>
        </div>
    </div>
</div>