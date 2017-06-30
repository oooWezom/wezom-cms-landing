<?php
use Core\HTML;
use Core\View;

?>
<?php if (isset($result[$cur]) and count($result[$cur])): ?>
    <ul>
        <?php foreach ($result[$cur] as $obj): ?>
            <li><a href="<?php echo HTML::link($add . '/' . $obj->alias); ?>"><?php echo $obj->name; ?></a>
                <?php echo View::tpl(['result' => $result, 'cur' => $obj->id, 'add' => $add], 'Sitemap/Recursive'); ?>
            </li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>