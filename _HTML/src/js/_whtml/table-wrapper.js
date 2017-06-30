/**
 * Оформление таблиц при вертикальном скроле
 *
 * @sourcecode  wHTML:tableWrapper
 * @memberof    wHTML
 *
 * @param   {Element}     [$context] - родительский элемен
 *
 * @return  {undefined}
 */
wHTML.prototype.tableWrapper = function( $context ) {

	var selector = '.js-table-wrapper';
	var $tableWrappers = $( selector, $context );
	if ( !$tableWrappers.length ) {
		return;
	}

	$tableWrappers.each(function(index, el) {
		var $tableWrapper = $(el);

		if ( $tableWrapper.data('scroll-inited') ) {
			return true;
		}
		$tableWrapper.data( 'scroll-inited', true );

		var $tableHolder = $tableWrapper.children( selector+'__holder' );
		var $table = $tableHolder.children( selector+'__table' );
		checkScrolledTable( $tableWrapper, $tableHolder, $table );

		var timer = null;

		$tableHolder.on('scroll', function() {
			checkScrolledTable( $tableWrapper, $tableHolder, $table );
		});

		$(window).on('resize', function() {
			clearTimeout( timer );
			timer = setTimeout(function() {
				checkScrolledTable( $tableWrapper, $tableHolder, $table );
			}, 10);
		});

	});
};


/**
 * Проверка таблицы и ее враппераб, смотрим:
 *  влезает таблица в контейнер?
 *  таблица прокручена?
 *  прокрученна до конца?
 *
 * @sourcecode  checkScrolledTable
 * @private
 *
 * @param  {Element}  $wrapper
 * @param  {Element}  $holder
 * @param  {Element}  $table
 *
 * @return  {undefined}
 */
function checkScrolledTable( $wrapper, $holder, $table ) {

	var holderWidth = $holder.innerWidth();
	var holderScroll = $holder.scrollLeft();
	var holderScrollOffset = $holder.scrollLeft()  + holderWidth + 10;
	var tableWidth = $table.innerWidth();

	var doClassLeft = 'removeClass';
	var doClassRight = 'removeClass';

	if ( holderScroll > 20) {
		doClassLeft = 'addClass';
	}

	if ( tableWidth > holderWidth && tableWidth > holderScrollOffset ) {
		doClassRight = 'addClass';
	}

	$wrapper[doClassLeft]('table-wrapper--outside-left');
	$wrapper[doClassRight]('table-wrapper--outside-right');
}
