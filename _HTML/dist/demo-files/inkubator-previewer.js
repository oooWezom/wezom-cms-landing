(function(window, $) {

	if ($ === undefined) {
		return false;
	}

	var $iPreviewer = $('#inkubatorPreviewer'),
		$iPreviewerOverlay = $('#inkubatorPreviewer__overlay'),
		$iPreviewerTitle = $('#inkubatorPreviewer__title'),
		$iPreviewerList = $('#inkubatorPreviewer__list'),
		$iPreviewerCount = $('#inkubatorPreviewer__count'),
		$iPreviewerOpen = $('#inkubatorPreviewer__open'),
		$iPreviewerHome = $('#inkubatorPreviewer__home'),
		$iPreviewerPrev = $('#inkubatorPreviewer__prev'),
		$iPreviewerNext = $('#inkubatorPreviewer__next'),
		$iPreviewerNav = $('#inkubatorPreviewer__nav');
		$iPreviewerCloseMenu = $('#inkubatorPreviewer__closeMenu');

	function closeMenu() {
		$iPreviewerNav.css('display', 'none');
	}

	function close() {
		$iPreviewer.removeClass('is-active');
	}

	function open() {
		$iPreviewer.addClass('is-active');
	}

	function show() {
		$iPreviewer.addClass('is-builded');
	}

	function sibling(goTo) {
		var $iPreviewerActivePage = $('.inkubatorPreviewer__item.is-active');
		var $iPreviewerNewPage = $iPreviewerActivePage[goTo]();
		if (!$iPreviewerNewPage.length) {
			var orderIndex = 'first';
			if (goTo == 'prev') {
				orderIndex = 'last';
			}
			$iPreviewerNewPage = $('.inkubatorPreviewer__item')[orderIndex]();
		}
		$iPreviewerNewPage[0].click();
	}

	function build() {
		var itemList = [];
		console.log(inkubatorPreviewerData);
		$iPreviewer.addClass('inkubatorPreviewer__side-'+inkubatorPreviewerData.side);
		$iPreviewerHome.attr('href', inkubatorPreviewerData.home + '.html');
		inkubatorPreviewerData.list.forEach(function(page, index) {
			var activePageClass = '';
			if (inkubatorPreviewerActive === page.alias) {
				activePageClass = ' is-active';
			}
			itemList.push(''+
				'<a href="'+page.alias+'.html" class="inkubatorPreviewer__item ' + activePageClass + '">'+
					'<div class="inkubatorPreviewer__block">'+
						'<div class="inkubatorPreviewer__name">' + page.title + '</div>'+
						'<div class="inkubatorPreviewer__alias">' + page.alias + '.html</div>'+
					'</div>'+
				'</a>');
		});
		$iPreviewerList.html(itemList.join('\n'));
		$iPreviewerCount.html(itemList.length);
		show();
	}

	$iPreviewer.on('click', '.inkubatorPreviewer__close', function(event) {
		close();
	});

	$iPreviewerOverlay.on('click', function(event) {
		close();
	});

	$iPreviewerCloseMenu.on('click', function(event) {
		closeMenu();
	});

	$iPreviewerOpen.on('click', function(event) {
		open();
	});

	if (inkubatorPreviewerData.list.length > 1) {

		$iPreviewerPrev.on('click', function(event) {
			sibling('prev');
		});

		$iPreviewerNext.on('click', function(event) {
			sibling('next');
		});

	} else {
		$iPreviewerPrev
			.add($iPreviewerNext)
			.add($iPreviewerHome)
			.css('display', 'none');
	}

	setTimeout(function() {
		build();
	}, 500);

})(window, window.jQuery);