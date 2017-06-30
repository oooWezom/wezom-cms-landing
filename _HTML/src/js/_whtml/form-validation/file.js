/**
 * JS подхват перед загрузкой фалов.
 *  Метод используеться для кастоных кнопок
 *  аля "upload file".
 *  Основная задача:
 *
 * - Определить прошел ли файл валидацию
 * - Есть ли файлы (валидацию может пройти и пустой `input[file]`, если он не `required`)
 * - Получить нужные данные для показа - имя / размер / количество и тд
 * - Вывести полченную инфу на элемент
 *
 * Выводим при помощи вспомогательных методов
 *  (смотри requires'ы и их описания)
 *
 *
 * @sourcecode	wHTML:formJsChangeFile
 * @memberof 	wHTML
 *
 * @requires    {@link jQueryExtends.getMyElements }
 * @requires    {@link jQueryExtends.changeMyText }
 * @requires    {@link wHelpers.setThousands }
 *
 * @param   {Element}   $element  input[type="file"]
 * @param   {Element}   $jsFile   родительский блок
 *
 * @return  {undefined}
 */
wHTML.prototype.formJsChangeFile = function( $element, $jsFile ) {

	var isValid = _self.formValidationValid( $element );
	var $inputResult = $jsFile.getMyElements(
			'$inputResul',
			form_selector__js_file__result,
			'find'
		);

	if (!isValid) {
		$inputResult.changeMyText();
		return false;
	}

	var fileList = $element[0].files;
	if (!fileList.length) {
		$inputResult.changeMyText();
		return false;
	}

	var names = [];
	var sizes = 0;
	for (var i = 0; i < fileList.length; i++) {
		var file = fileList[i];
		names.push( file.name );
		sizes += file.size;
	}

	sizes = ( sizes / 1024 ).toFixed(2);
	sizes = _helpers.setThousands( sizes ) + 'kb';

	if (names.length > 1) {
		names = names.length;
	} else {
		names = names[0];
		names = '<span class="_ellipsis" title="' + names + '">' + names + '</span>';
	}

	$inputResult.changeMyText( 'changed', [names, sizes] );
};
