<?php
use Core\HTML;
use Core\Config;
?>
<div class="screen5 js-anchor-block4">
    <div class="view-size view-size--big block-with-underground">
        <div class="title--underground title--blue title--center">SEO</div>
        <div class="view-size">
            <div class="title title--white tac">Wezom.CMS идеально подходит под SEO</div>
            <div class="screen1-slogan tac screen1-slogan--center2">Потому что мы тоже продвигаем! В структуру агентства Wezom входит SEO-студия Elit-Web, в
                которой 70 сотрудников ежедневно трудятся над более чем 200 проектами. Поэтому внутренние
                требования к «чистоте» исходного кода очень высоки, ведь от этого зависит успех SEO-студии.</div>
            <div class="grid grid--space-def seo-block">
                <div class="gcell gcell--12 gcell--lg-5">
                    <div class="screen5-title">Мы внедрили целый ряд «фишек», которые упрощают жизнь SEO-шнику:</div>
                    <?php $count = 1;?>
                    <?php foreach ($result as $obj):?>
                    <div class="screen-changer">
                        <?php if (is_file(HOST . HTML::media('/images/arguments/' . $obj->image))): ?>
                        <div class="screen-link js-screen-link <?php echo $count==1?'cur':''?>" data-screen="<?php echo HTML::media('/images/arguments/' . $obj->image); ?>">
                            <span><?php echo $obj->name?></span>
                        </div>
                        <?php endif ?>
                    </div>
                        <?php $count ++?>
                    <?php endforeach;?>
                </div>
                <div class="gcell gcell--12 gcell--lg-7">
                    <div class="notebook is-animation js-animation">
                        <img src="<?php echo HTML::media('css/pic/note.png')?>" alt="">
                        <div class="notebook-screen js-screen-item">
                            <?php if (is_file(HOST . HTML::media('/images/arguments/' . $result[0]->image))): ?>
                            <img src="<?php echo HTML::media('/images/arguments/' . $result[0]->image); ?>" alt="">
                            <?php endif ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="comment-block clearfix">
                <div class="comment-left fll js-animation is-animation">
                    <img src="<?php echo HTML::media('images/comment.png')?>" alt="">
                </div>
                <div class="comment-right flr">
                    <div class="comment-text">
                        <div class="comment-text__main">Используя Wezom.CMS ваш сайт будет выглядеть дружелюбным в глазах поисковых систем, а ваш SEO специалист будет иметь все возможности для работы!»</div>
                        <div class="comment-text__man"><span><?php echo Config::get('static.name_director')?>,</span>Директор <a href="<?php echo Config::get('static.link_elit')?>" target="_blank">агентства интернет-маркетинга «Elit-web»</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>