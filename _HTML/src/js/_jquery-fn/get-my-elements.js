/**
 * Поиск на странице или получение с даты нужного элемента.
 *
 * Сперва, смотрим в дата объект на определенное свойство.
 * 	Если здесь пусто - ищем элемент по указанному селектору в заданом направлении.
 * 	При нахождении, записываем его в дата объект, чтобы
 * 	при следующих обращениях - получить быстрее и без поисков.
 *
 * !!! Если в обращении элементов большего одного,
 *  то метод выполниться только для первого
 *
 *
 * @sourcecode 	jQueryExtends:getMyElements
 * @memberof 	jQueryExtends
 *
 * @param   {string}    dataKey - ключ свойства из data объекта элемента.
 * @param   {Selector}  [selector] - селектор поиска
 * @param   {string}    [direction="document"] - направление где искать - `[closest, perent, children, find, prev, next, siblings]`
 * @param   {boolean}    [notSelf] - позволяет не учитывать себя (текущий `this`) при поиске элементов в `document` по такому же селектору, как у текущего элемента
 *
 * @return  {Element}
 */
$.fn.getMyElements = function( dataKey, selector, direction, notSelf ) {

	direction = direction || 'document';
	var $element = this.eq(0);
	var keyIsSelector = ( typeof( dataKey ) == 'string' );
	var $target = keyIsSelector ? $element.data( dataKey ) : undefined;

	// debug
	// if ( $target ) {
	// 	console.log( 'get from data -> ', dataKey );
	// } else {
	// 	console.log( 'look -> ', direction );
	// }

	if ( undefined === $target ) {
		if (direction === 'document') {
			$target = $( selector );
			if ( $target.length && notSelf ) {
				$target = $target.not( $element );
			}
		} else {
			$target = $element[direction]( selector );
		}
		$element.data( dataKey, $target );
	}

	if ( !$target.length ) {
		// console.log( selector + ' не найден!' );
		$element.data( dataKey, undefined );
	}


	return $target;
};