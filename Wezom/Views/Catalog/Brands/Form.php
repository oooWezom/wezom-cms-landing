<?php echo \Forms\Builder::open(); ?>
    <div class="form-actions" style="display: none;">
        <?php echo \Forms\Form::submit(['name' => 'name', 'value' => 'Отправить', 'class' => 'submit btn btn-primary pull-right']); ?>
    </div>
    <div class="col-md-12">
        <div class="widget box">
            <div class="widgetHeader">
                <div class="widgetTitle">
                    <i class="fa fa-reorder"></i>
                    <?php echo __('Основные данные'); ?>
                </div>
            </div>
            <div class="widgetContent">
                <div class="form-vertical row-border">
                    <ul class="liTabs t_wrap">
                        <li class="t_item">
                            <a class="t_link" href="#"><?php echo __('Основные данные'); ?></a>
                            <div class="t_content">
                                <div class="form-group">
                                    <?php echo \Forms\Builder::bool($obj->status); ?>
                                </div>
                                <div class="form-group">
                                    <?php echo \Forms\Builder::input([
                                        'name' => 'FORM[name]',
                                        'value' => $obj->name,
                                        'class' => ['valid', 'translitSource'],
                                    ], __('Название')); ?>
                                </div>
                                <div class="form-group">
                                    <?php echo \Forms\Builder::alias([
                                        'name' => 'FORM[alias]',
                                        'value' => $obj->alias,
                                        'class' => 'valid',
                                    ], [
                                        'text' => _('Алиас'),
                                        'tooltip' => __('<b>Алиас (англ. alias - псевдоним)</b><br>Алиасы используются для короткого именования страниц. <br>Предположим, имеется страница с псевдонимом «<b>about</b>». Тогда для вывода этой страницы можно использовать или полную форму: <br><b>http://domain/?go=frontend&page=about</b><br>или сокращенную: <br><b>http://domain/about.html</b>'),
                                    ]); ?>
                                </div>
                            </div>
                        </li>
                        <li class="t_item">
                            <a class="t_link" href="#"><?php echo __('Мета-данные'); ?></a>
                            <div class="t_content">
                                <div class="form-group">
                                    <?php echo \Forms\Builder::input([
                                        'name' => 'FORM[h1]',
                                        'value' => $obj->h1,
                                    ], [
                                        'text' => 'H1',
                                        'tooltip' => __('Рекомендуется, чтобы тег h1 содержал ключевую фразу, которая частично или полностью совпадает с title'),
                                    ]); ?>
                                </div>
                                <div class="form-group">
                                    <?php echo \Forms\Builder::input([
                                        'name' => 'FORM[title]',
                                        'value' => $obj->title,
                                    ], [
                                        'text' => 'Title',
                                        'tooltip' => __('<p>Значимая для продвижения часть заголовка должна быть не более 12 слов</p><p>Самые популярные ключевые слова должны идти в самом начале заголовка и уместиться в первых 50 символов, чтобы сохранить привлекательный вид в поисковой выдаче.</p><p>Старайтесь не использовать в заголовке следующие знаки препинания – . ! ? – </p>'),
                                    ]); ?>
                                </div>
                                <div class="form-group">
                                    <?php echo \Forms\Builder::textarea([
                                        'name' => 'FORM[keywords]',
                                        'rows' => 5,
                                        'value' => $obj->keywords,
                                    ], [
                                        'text' => 'Keywords',
                                    ]); ?>
                                </div>
                                <div class="form-group">
                                    <?php echo \Forms\Builder::textarea([
                                        'name' => 'FORM[description]',
                                        'value' => $obj->description,
                                        'rows' => 5,
                                    ], [
                                        'text' => 'Description',
                                    ]); ?>
                                </div>
                                <div class="form-group">
                                    <?php echo \Forms\Builder::tiny([
                                        'name' => 'FORM[text]',
                                        'value' => $obj->text,
                                    ], [
                                        'text' => __('SEO текст'),
                                    ]); ?>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
<?php echo \Forms\Form::close(); ?>