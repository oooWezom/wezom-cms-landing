<?php   
    
    return [
        // System pages
        'wezom/control/index' => 'content/control/index',
        'wezom/control/index/page/<page:[0-9]*>' => 'content/control/index',
        'wezom/control/edit/<id:[0-9]*>' => 'content/control/edit',
        // Content
        'wezom/content/index' => 'content/content/index',
        'wezom/content/index/page/<page:[0-9]*>' => 'content/content/index',
        'wezom/content/edit/<id:[0-9]*>' => 'content/content/edit',
        'wezom/content/delete/<id:[0-9]*>' => 'content/content/delete',
        'wezom/content/add' => 'content/content/add',

    ];