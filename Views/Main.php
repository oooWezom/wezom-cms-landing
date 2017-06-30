<?php use Core\Widgets; ?>
<!DOCTYPE html>
<html lang="ru-RU" dir="ltr" class="no-js">
<head>
    <?php echo Widgets::get('Head', $_seo); ?>
    <?php foreach ($_seo['scripts']['head'] as $script): ?>
        <?php echo $script; ?>
    <?php endforeach ?>
    <?php echo $GLOBAL_MESSAGE; ?>
</head>
<body>
<?php foreach ($_seo['scripts']['body'] as $script): ?>
    <?php echo $script; ?>
<?php endforeach ?>
<div class="view-wrapper">
    <!-- view-body -->
    <section class="view-section">
        <div class="widget">
            <?php echo Widgets::get('Index_Screen1')?>
            <?php echo Widgets::get('Index_Screen2')?>
        </div>
        <?php echo Widgets::get('Index_Screen3')?>
        <?php echo Widgets::get('Index_Screen4')?>
        <?php echo Widgets::get('Index_Screen5')?>
        <?php echo Widgets::get('Index_Screen6')?>
        <?php echo Widgets::get('Index_Screen7')?>
    </section>
</div>
<!-- #end widget -->

<?php echo Widgets::get('Footer', ['counters' => Core\Arr::get($_seo['scripts'], 'counter'), 'config' => $_config]); ?>
<!-- #end view-footer -->

<?php echo Widgets::get('HiddenData'); ?>
</body>
</html>

