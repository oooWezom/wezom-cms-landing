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
<table class="error-view">
    <tr>
        <td>
            <div class="error-view__block">
                <div class="error-view__code">404</div>
                <div class="error-view__msg">
                    <p>
                        <strong>Страница не найдена.</strong>
                        <br>
                        <small><em>К сожалению, страница, которую Вы запросили, не была найдена</em>.</small>
                    </p>
                    <p>Возможные причины такой "ошибки":</p>
                    <ul style="opacity: .8;">
                        <li>
                            <small>Неверный URL-адресс страницы - проверьте его на наличие ошибок</small>
                        </li>
                        <li>
                            <small>Страница не существует</small>
                        </li>
                        <li>
                            <small>Страница временно недоступна или удалена</small>
                        </li>
                    </ul>
                    <p>Вы можете перейти на <a href="/">Главную страницу</a></p>
                </div>
            </div>
        </td>
    </tr>
</table>
<link rel="stylesheet" href="<?php echo \Core\HTML::media('css/error.css')?>">

</body>

</html>
