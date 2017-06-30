<?php
use Core\HTML;
use Core\View;

?>
<ul class="sitemap">
    <?php foreach ($pages[0] as $obj): ?>
        <li><a href="<?php echo HTML::link($obj->alias); ?>"><?php echo $obj->name; ?></a>
            <?php echo View::tpl(['result' => $pages, 'cur' => $obj->id, 'add' => ''], 'Sitemap/Recursive'); ?>
        </li>
    <?php endforeach; ?>
    <li><a href="<?php echo HTML::link('catalog'); ?>">Каталог</a>
        <?php echo View::tpl(['result' => $groups, 'cur' => 0, 'add' => '/catalog'], 'Sitemap/Recursive'); ?>
    </li>
    <li><a href="<?php echo HTML::link('new'); ?>/new">Новинки</a></li>
    <li><a href="<?php echo HTML::link('popular'); ?>/popular">Популярные</a></li>
    <li><a href="<?php echo HTML::link('sale'); ?>/sale">Акции</a></li>
    <li><a href="<?php echo HTML::link('viewed'); ?>/viewed">Просмотренные</a></li>
    <li><a href="<?php echo HTML::link('brands'); ?>/brands">Бренды</a>
        <?php if (count($brands)): ?>
            <ul>
                <?php foreach ($brands as $obj): ?>
                    <li><a href="<?php echo HTML::link('brands/' . $obj->alias); ?>"><?php echo $obj->name; ?></a>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>
    </li>
    <li><a href="<?php echo HTML::link('news'); ?>">Новости</a>
        <?php if (count($news)): ?>
            <ul>
                <?php foreach ($news as $obj): ?>
                    <li><a href="<?php echo HTML::link('news/' . $obj->alias); ?>"><?php echo $obj->name; ?></a>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>
    </li>
    <li><a href="<?php echo HTML::link('articles'); ?>">Статьи</a>
        <?php if (count($articles)): ?>
            <ul>
                <?php foreach ($articles as $obj): ?>
                    <li>
                        <a href="<?php echo HTML::link('articles/' . $obj->alias); ?>"><?php echo $obj->name; ?></a>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>
    </li>
    <li><a href="<?php echo HTML::link('sitemap'); ?>">Карта сайта</a></li>
</ul>