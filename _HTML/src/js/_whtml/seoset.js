// seoText
	var _seo_text_timer = null;
	var _seo_text_delay = 10;
	var $seoText;
	var $seoIframe;
	var $seoClone;

	/**
	 * Создаем iframe
	 * @memberof 	wHTML
	 * @private
	 * @param 		{Element}		$seoText - элемент сео текста
	 * @return 		{undefined}
	 */
	function _seoBuild($seoText) {
		var iframe = document.createElement('iframe');
		iframe.id = 'seoIframe';
		iframe.name = 'seoIframe';
		// вкидываем в блок Сео текста
		$seoText[0].appendChild(iframe);
		// ставим прослушку на ресайз contentWindow
		iframe.contentWindow.addEventListener('resize', function() {
			_self.seoText();
		});
		_self.seoText();
	}

	/**
	 * Инициализация `ajax` метода плагина `magnific-popup`
	 * > Метод отключен, по умолчанию
	 *
	 * @sourcecode 	wHTML:seoText
	 * @memberof 	wHTML
	 * @see 		{@link http://dimsemenov.com/plugins/magnific-popup/documentation.html#ajax-type}
	 * @return 		{undefined}
	 */
	wHTML.prototype.seoText = function() {
		var $seoText = $seoText || $('#seoText');
		if ($seoText.length) {
			var $seoIframe = $seoIframe || $seoText.children('#seoIframe');
			if ($seoIframe.length) {
				clearTimeout(_seo_text_timer);
				_seo_text_timer = setTimeout(function() {
					var $seoClone = $seoClone || $('#seoClone');
					if ($seoClone.length) {
						$seoClone.height($seoText.outerHeight(true));
						$seoText.css({
							top: $seoClone.offset().top
						});
						_seo_text_delay = 50;
					} else {
						console.warn('#seoClone - не найден');
					}
				}, _seo_text_delay);
			} else {
				_seoBuild($seoText);
			}
		}
	};
