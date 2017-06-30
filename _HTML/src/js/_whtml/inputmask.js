/**
 * Инициализация плагина `jquery.inputmask`
 * @see  {@link http://robinherbots.github.io/Inputmask/}
 *
 * @sourcecode 	wHTML:inputMask
 * @memberof    wHTML
 *
 * @param   {Element}     [$context] - родительский элемен
 *
 * @return  {undefined}
 */
wHTML.prototype.inputMask = function( $context ) {

	var $maskElement = $( '.js-inputmask', $context );
	if ( !$maskElement.length ) {
		return;
	}

	$maskElement.each(function(index, el) {
		var $el = $(el);
		var maskInited = $el.data('mask-inited');
		if (maskInited) {
			return true;
		}

		var mask = $el.data('mask') || '+38(099)9999999';
		// фикс для андроидов, на которых "пригает каретка"
		if (Modernizr.android5) {
			mask = $el.data('android-fix-mask') || '+380999999999';
		}

		$el.data('mask-inited', true);
		$el.inputmask({
			mask: mask,
			clearMaskOnLostFocus: false
		});
	});
}
