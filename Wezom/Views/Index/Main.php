<div class="rowSection clearFix row-bg">
    <?php if( \Core\User::get_access_for_controller('projects') != 'no' || \Core\User::god() ): ?>
        <div class="col-sm-6 col-md-3">
            <div class="statbox widget box box-shadow">
                <div class="widgetContent">
                    <div class="visual cyan">
                        <i class="fa fa-inbox"></i>
                    </div>
                    <div class="title">
                        <?php echo __('Проекты'); ?>
                    </div>
                    <div class="value">
                        <?php echo $count_projects; ?>
                    </div>
                    <a href="/wezom/projects/index" class="more"><?php echo __('Подробнее'); ?> <i class="pull-right fa fa-angle-right"></i></a>
                </div>
            </div>
        </div>
    <?php endif; ?>
    <?php if( \Core\User::get_access_for_controller('arguments') != 'no' || \Core\User::god() ): ?>
        <div class="col-sm-6 col-md-3">
            <div class="statbox widget box box-shadow">
                <div class="widgetContent">
                    <div class="visual green">
                        <i class="fa fa-comments-o"></i>
                    </div>
                    <div class="title">
                        <?php echo __('Аргументы под сео'); ?>
                    </div>
                    <div class="value">
                        <?php echo $count_arguments; ?>
                    </div>
                    <a href="/wezom/arguments/index" class="more"><?php echo __('Подробнее'); ?> <i class="pull-right fa fa-angle-right"></i></a>
                </div>
            </div>
        </div>
    <?php endif; ?>
    <?php if( \Core\User::get_access_for_controller('callbacks') != 'no' || \Core\User::god() ): ?>
        <div class="col-sm-6 col-md-3">
            <div class="statbox widget box box-shadow">
                <div class="widgetContent">
                    <div class="visual yellow">
                        <i class="pull-right fa fa-fixed-width">&#xf11b;</i>
                    </div>
                    <div class="title">
                        <?php echo __('Заказы сайтов'); ?>
                    </div>
                    <div class="value">
                        <?php echo $count_callbacks; ?>
                    </div>
                    <a href="/wezom/callback/index" class="more"><?php echo __('Подробнее'); ?> <i class="pull-right fa fa-angle-right"></i></a>
                </div>
            </div>
        </div>
    <?php endif; ?>
   <!-- <?php /*if( \Core\User::get_access_for_controller('users') != 'no' || \Core\User::god() ): */?>
        <div class="col-sm-6 col-md-3">
            <div class="statbox widget box box-shadow">
                <div class="widgetContent">
                    <div class="visual cyan">
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="title">
                        <?php /*echo __('Кейсы'); */?>
                    </div>
                    <div class="value">
                        <?php /*echo $count_cases; */?>
                    </div>
                    <a href="/wezom/cases/index" class="more"><?php /*echo __('Подробнее'); */?> <i class="pull-right fa fa-angle-right"></i></a>
                </div>
            </div>
        </div>
    --><?php /*endif; */?>
</div>

<?php echo \Core\Widgets::get('Index_Visitors'); ?>

<?php /*if( \Core\User::get_access_for_controller('orders') != 'no' || \Core\User::god() ): */?><!--
    <?php /*echo \Core\Widgets::get('Index_Orders'); */?>
--><?php /*endif; */?>

<?php if(\Core\User::god()): ?>
    <div class="rowSection clearFix">
        <div class="col-md-6">
            <div class="widget">
                <?php echo \Core\Widgets::get('Index_Log'); ?>
            </div>
        </div>
        <div class="col-md-6">
            <div class="widget">
                <?php echo \Core\Widgets::get('Index_News'); ?>
            </div>
        </div>
    </div>
    <?php /*echo \Core\Widgets::get('Index_Readme');*/ ?>
<?php else: ?>
    <div class="rowSection clearFix">
        <div class="col-md-6">
            <div class="widget">
                <?php echo \Core\Widgets::get('Index_News'); ?>
            </div>
        </div>
    </div>
<?php endif; ?>