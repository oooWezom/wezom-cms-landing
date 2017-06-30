/**
 * Поиск и оформление изображений в контентовом тексте
 *  более подробно читай описание `setTextImageClassSizes`
 *
 * Нужно больше иследовать
 *  как может вести себя текстовый редактор,
 *  какие "комбинации" кода могут быть.
 *  В этом основная проблема - что код может быть разным.
 *
 * Поэтому нужно больше тестов и возможно ограничить
 *  сам редактор при работе.
 *
 *
 * @sourcecode 	wHTML:viewTextImages
 * @memberof    wHTML
 *
 * @requires    {@link wHelpers:replaceFromArray }
 *
 * @param   {Element}    [$context] - родительский элемен
 *
 * @return  {undefined}
 */
wHTML.prototype.viewTextImages = function( $context ) {

	var $textElements = $( '.view-text', $context );
	if ( !$textElements.length ) {
		return;
	}

	var cssContetClass = 'content-image';
	var cssContetSelector = '.'+cssContetClass;

	$textElements.each(function(index, text) {
		var $text = $(text);
		if ($text.hasClass('js-ignore-content-images')) {
			return true;
		}

		var $images = $text.find('img');

		$images.each(function(index, img) {
			var $img = $(img);
			if ( $img.parent(cssContetSelector).length ) {
				return true;
			}

			var $img = $(this);

			var width = img.getAttribute('width') || '';
			if ( width.length ) {
				width = width.replace(/px/, '');
				if ( /%/.test(width) ) {
					width = width.replace(/%/, '');
					var parentWigth = $img.parent().width();
					width = parentWigth / 100 * parseFloat(width);
				}
				width = parseInt(width);
			} else {
				width = $img.width();
			}

			var classes = [ cssContetClass ];
			setTextImageClassSizes( classes, cssContetClass, 'width', width);

			var title = img.title;
			var inlineStyle = img.style.cssText;
			if (inlineStyle.length) {
				inlineStyle = ' style="'+inlineStyle+'"';
			}

			$img.addClass( classes.join(' ') );
		});
	});
};


/**
 * Устанавливает классы для изображения.
 *
 * Меряем ширину изображения по отрезкам в 100px
 *  [100-199, 200-299, 300-399, и тд.]
 *  При проверка ставим классы в зависимости от проверяемой величны.
 *
 * К примеру, есть у нас изображение с ширной 453px,
 *  то наша картинка получает классы:
 *
 * - _ .content-image--width-100-and-more _
 * - _ .content-image--width-200-and-more _
 * - _ .content-image--width-300-and-more _
 * - _ .content-image--width-400-and-more _
 *
 * Набор таких классов даст возможность предугадать
 *  на каком брейкпоинте и какое изображение адаптировать
 *
 * К примеру на медиа запросе в min-width 640px
 * все изображения в котнтенвом блоке с шириной 500 и больше - убрать флоаты
 *
 * ```
 *  .content-image {
 * 		&--width-500-and-more {
 * 		    include media( 640px ) {
 * 		    	display: block;
 *				float: none !important;
 *				margin-left: auto !important;
 *				margin-right: auto !important;
 * 			}
 * 		}
 *  }
 *
 * ```
 *
 * @sourcecode  setTextImageClassSizes
 * @private
 *
 * @param      {Array}   classes  The classes
 * @param      {string}  prefix   The prefix
 * @param      {string}  side     The side
 * @param      {number}  value    The value
 *
 * @return  {undefined}
 */
function setTextImageClassSizes( classes, prefix, side, value ) {
	var classMore = prefix + '--%s-and-more';

	for (var i = 1; i <= 20; i++) {
		var size = i * 100;
		var nextSize = size + 99;
		var modificator = side + '-' + size;

		if (value < size) {
			break;
		}
		if (value > size) {
			classes.push( _helpers.replaceFromArray(classMore, modificator) );
		}
	}
}