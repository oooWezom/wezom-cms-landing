/**
 * Замена значений в строке по паттерну из массива.
 *
 * Паттерн в строке один, с определенным количеством повторений
 * 	Каждый элемент из массива заменить свой паттерн по порядковому номеру
 *
 * К примеру _replaceFromArray( '%s мыла %s', ['Мама', 'раму'] )
 * 	вернет - 'Мама мыла раму'
 *
 *
 * @sourcecode wHelpers:replaceFromArray
 * @memberof   wHelpers
 *
 * @param   {string}   replacingString - Строка в которой будем менять
 * @param   {Array}    values - массив значений
 * @param   {string}   [pattern="%s"] - паттерн для поиска
 *
 * @return  {string}   Заменненая строка
 */
wHelpers.prototype.replaceFromArray = function( replacingString, values, pattern ) {

	pattern = pattern || '%s';
	if ( !Array.isArray(values) ) {
		values = [values];
	}

	for ( var i = 0; i < values.length; i++ ) {
		var value = values[i];
		replacingString = replacingString.replace( pattern, value );
	}

	return replacingString;
}


/**
 * Установка пробелов между тысячами:
 *
 * ```
 *  153      ->  153
 *  7000     ->  7 000
 *  8500.50  ->  8 500.50
 *  7530.00  ->  7 530
 *  1000000  ->  1 000 000
 *
 * ```
 *
 * @sourcecode  wHelpers:setThousands
 * @memberof    wHelpers
 *
 * @param   {string|number}  numberText - число для формата
 * @param   {string} 		 [newSeparator="."] - новый разделитель, при необходимости
 * @param   {string} 		 [separator="."] - разделитель дробей
 *
 * @return  {string}
 */
wHelpers.prototype.setThousands = function( numberText, newSeparator, separator ) {

	newSeparator = newSeparator || '.';
	separator = separator || '.';
	numberText = ''+numberText;
	numberText =  numberText.split( separator );

	var numberPenny = numberText[1] || '';
	var numberValue = numberText[0];

	var thousandsValue = [];
	var counter = 0;

	for (var i = numberValue.length - 1; i >= 0; i--) {
		var num = numberValue[i];
		thousandsValue.push( num );

		if ( ++counter === 3 && i ) {
			thousandsValue.push( ' ' );
			counter = 0;
		}
	}

	thousandsValue = thousandsValue.reverse().join('');
	if ( numberPenny.length ) {
		return [thousandsValue, numberPenny].join( newSeparator );
	}
	return thousandsValue;
};