/**
 * Инициализация `ajax` метода плагина `magnific-popup`
 * @see  {@link http://dimsemenov.com/plugins/magnific-popup/documentation.html#ajax-type}
 *
 * @sourcecode  wHTML:mfpAjax
 * @memberof    wHTML
 *
 * @requires    {@link wHTML.inputMask }
 * @requires    {@link wHTML.tableWrapper }
 * @requires    {@link wHTML.viewTextImages }
 * @requires    {@link wHTML.viewTextMedia }
 * @requires    {@link wHTML.formValidation }
 *
 * @param   {string}    [selector='.js-mfp-ajax'] - пользовательский css селектор для поиска и инита
 *
 * @return  {undefined}
 */
wHTML.prototype.mfpAjax = function(selector) {
	selector = selector || '.js-mfp-ajax';
	$('body').magnificPopup({
		type: 'ajax',
		delegate: selector,
		removalDelay: 300,
		mainClass: 'zoom-in',
		callbacks: {

			elementParse: function(item) {
				var itemData = item.el.data('param') || {};
				var itemUrl = item.el.data('url');
				var itemType = item.el.data('type') || 'POST';

				this.st.ajax.settings = {
					url: itemUrl,
					type: itemType.toUpperCase(),
					data: itemData
				};
			},

			ajaxContentAdded: function() {
				var $content = this.content || [];
				if ( $content.length ) {
					// _self.inputMask( $content );
					_self.tableWrapper( $content );
					_self.viewTextImages( $content );
					_self.viewTextMedia( $content );
				}

				_self.formValidation( $content );
			}
		}
	});
};
