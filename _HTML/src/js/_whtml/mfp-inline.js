/**
 * Инициализация `inline` метода плагина `magnific-popup`
 * @see  {@link http://dimsemenov.com/plugins/magnific-popup/documentation.html#inline-type}
 *
 * @sourcecode  wHTML:mfpInline
 * @memberof    wHTML
 *
 * @param   {string}   [selector='.js-mfp-inline'] - пользовательский css селектор для поиска и инита
 *
 * @return  {undefined}
 */
wHTML.prototype.mfpInline = function(selector) {
	selector = selector || '.js-mfp-inline';
	$(selector).each(function(index, el) {
		var $el = $(el);
		var customConfig = $el.data('mfpCustomConfig') || {};

		var currentConfig = $.extend(true, customConfig, {
			type: 'inline',
			closeBtnInside: true,
			removalDelay: 300,
			mainClass: 'zoom-in'
		});

		$el.magnificPopup(currentConfig);
	});
};
