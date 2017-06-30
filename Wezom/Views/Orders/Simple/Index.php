<div class="rowSection">
    <div class="col-md-12">
        <div class="widget">
        <div class="widgetHeader">
            <div class="widgetTitle">
                <i class="fa fa-reorder"></i>
                <?php echo $pageName; ?>
                <span class="label label-primary"><?php echo $count; ?></span>
            </div>
            <div class="toolbar no-padding" id="ordersToolbar" data-uri="<?php echo Core\Arr::get($_SERVER, 'REQUEST_URI'); ?>">
                <div class="btn-group">
                    <li class="btn btn-xs">
                        <a href="/wezom/<?php echo Core\Route::controller(); ?>/index">
                            <i class="fa fa-refresh"></i>
                            <span class="hidden-xx"><?php echo __('Сбросить'); ?></span>
                        </a>
                    </li>
                    <span class="btn btn-xs dropdownToggle dropdownSelect">
                         <i class="fa fa-filter"></i>
                         <span class="current-item"><?php echo isset($_GET['status']) ? ( Core\Arr::get( $_GET, 'status' ) ? __('Прочитанные') : __('Непрочитанные') ) : __('Все'); ?></span>
                         <span class="caret"></span>
                    </span>
                    <ul class="dropdownMenu pull-right">
                        <li>
                            <a href="<?php echo Core\Support::generateLink('status', NULL); ?>">
                                <i class="fa fa-filter"></i><?php echo __('Все'); ?>
                            </a>
                        </li>
                        <li>
                            <a href="<?php echo Core\Support::generateLink('status', 1); ?>">
                                <i class="fa fa-filter"></i><?php echo __('Прочитанные'); ?>
                            </a>
                        </li>
                        <li>
                            <a href="<?php echo Core\Support::generateLink('status', 0); ?>">
                                <i class="fa fa-filter"></i><?php echo __('Непрочитанные'); ?>
                            </a>
                        </li>
                    </ul>

                    <li title="<?php echo __('Выберите дату или период'); ?>" class="range rangeOrderList btn btn-xs bs-tooltip">
                        <a href="#">
                            <i class="fa fa-calendar"></i>
                            <span><?php echo Core\Support::getWidgetDatesRange(); ?></span>
                            <i class="caret"></i>
                        </a>
                    </li>

                </div>
            </div>
        </div>
        <div class="widget">
            <div class="widgetContent">
                <table class="table table-striped table-hover checkbox-wrap ">
                    <thead>
                        <tr>
                            <th class="checkbox-head">
                                <label><input type="checkbox"></label>
                            </th>
                            <th>IP</th>
                            <th><?php echo __('Товар'); ?></th>
                            <th><?php echo __('Телефон'); ?></th>
                            <th><?php echo __('Дата'); ?></th>
                            <th><?php echo __('Опубликовано'); ?>?</th>
                            <th class="nav-column textcenter">&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ( $result as $obj ): ?>
                            <tr data-id="<?php echo $obj->id; ?>">
                                <td class="checkbox-column">
                                    <label><input type="checkbox"></label>
                                </td>
                                <td><?php echo $obj->ip ? $obj->ip : '<i class="color: #ccc;">( ' . __('Администратор') . ' )</i>'; ?></td>
                                <td>
                                    <?php if ( $obj->item_name ): ?>
                                        <a href="/wezom/items/edit/<?php echo $obj->catalog_id ?>" target="_blank"><?php echo $obj->item_name; ?></a>
                                    <?php else: ?>
                                        <i style="color: #aaa;">( <?php echo __('Удален'); ?> )</i>
                                    <?php endif ?>
                                </td>
                                <td><a href="/wezom/<?php echo Core\Route::controller(); ?>/edit/<?php echo $obj->id ?>"><?php echo $obj->phone; ?></a></td>
                                <td><?php echo $obj->created_at ? date('d.m.Y', $obj->created_at) : '---'; ?></td>
                                <td width="45" valign="top" class="icon-column status-column">
                                    <?php echo Core\View::widget(['status' => $obj->status, 'id' => $obj->id], 'StatusList'); ?>
                                </td>
                                <td class="nav-column">
                                    <ul class="table-controls">
                                        <li>
                                            <a class="bs-tooltip dropdownToggle" href="javascript:void(0);" title="<?php echo __('Управление'); ?>"><i class="fa fa-cog size14"></i></a>
                                            <ul class="dropdownMenu pull-right">
                                                <li>
                                                    <a href="/wezom/<?php echo Core\Route::controller(); ?>/edit/<?php echo $obj->id; ?>" title="<?php echo __('Редактировать'); ?>"><i class="fa fa-pencil"></i> <?php echo __('Редактировать'); ?></a>
                                                </li>
                                                <li>
                                                    <a href="/wezom/items/edit/<?php echo $obj->catalog_id; ?>" title="<?php echo __('Перейти к товару'); ?>"><i class="fa fa-inbox"></i> <?php echo __('Перейти к товару'); ?></a>
                                                </li>
                                                <li class="divider"></li>
                                                <li>
                                                    <a onclick="return confirm('<?php echo __('Это действие необратимо. Продолжить?'); ?>');" href="/wezom/<?php echo Core\Route::controller(); ?>/delete/<?php echo $obj->id; ?>" title="<?php echo __('Удалить'); ?>"><i class="fa fa-trash-o text-danger"></i> <?php echo __('Удалить'); ?></a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
                <?php echo $pager; ?>
            </div>
        </div>
    </div>
</div>
<span id="parameters" data-table="<?php echo $tablename; ?>"></span>