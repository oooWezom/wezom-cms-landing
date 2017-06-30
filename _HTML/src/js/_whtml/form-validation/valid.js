/**
 * Принудительная валидация элемента
 *
 * @sourcecode  wHTML:formValidationValid
 * @memberof    wHTML
 *
 * @requires    {@link jQueryExtends.getMyElements }
 *
 * @param   {Element}   $element  текущий элемент
 *
 * @return  {boolean}
 */
wHTML.prototype.formValidationValid = function( $element ) {
	var element = $element[0];
	var $form = $element.getMyElements(
			'$myForm',
			form_selector,
			'closest'
		);

	return $form.data('validator').element(element);
};
