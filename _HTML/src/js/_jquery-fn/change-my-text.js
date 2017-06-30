/**
 * Замена в элементе, в основном текстового, контента
 *  из его дата атрибутов.
 *
 * Удобно использовать при замене множества элементов,
 *  у которых должен свой свой индивидуальный текст,
 *  либо если этот текст зхависит от действий пользователя
 *
 * Пример - загрузка файлов. При смене инпута (file)
 *  можем узнать имя файла (если один)
 *  или их количество (при множественном выборе).
 *  Также мы можем узнать общий объем файлов и вывести все
 *  в удобный нам элемент, плюс простилизоват его.
 *
 *
 * @sourcecode 	jQueryExtends:changeMyText
 * @memberof 	jQueryExtends
 *
 * @requires    {@link wHelpers.replaceFromArray }
 *
 * @param   {string}    [prop="default"] - Ключ свойтсва с которого нужно взять текст для замены
 * @param   {Array}     [replaceArray=[]] - Массив значений с которых следует сделать замену паттернов
 *
 * @return  {undefined}
 */
$.fn.changeMyText = function( prop, replaceArray ) {

	return this.each( function(index, el) {
		var $element = $(el);
		var textData = $element.data('text');

		if ( typeof(textData) !== 'object' ) {
			console.warn( $element, 'Не имеет данных с тектом -> data-text=\'{"key": "value"}\'' );
			return true;
		}

		replaceArray = replaceArray || [];
		prop = prop || 'default';
		var value = textData[prop];

		if ( typeof(value) !== 'string' ) {
			console.warn( $element, 'Не имеет свойтва "' + prop + '"' );
			return true;
		}

		if ( replaceArray.length ) {
			value = _helpers.replaceFromArray( value, replaceArray );
		}

		$element.html( value );
	});
};