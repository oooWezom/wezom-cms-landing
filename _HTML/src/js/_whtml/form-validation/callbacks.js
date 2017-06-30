/**
 * Событие, после успешной валидации формы и отправки данных.
 *
 * @sourcecode  wHTML:formValidationAfterSubmit
 * @memberof    wHTML
 *
 * @event   wHTML#formValidationAfterSubmit
 *
 * @param   {Element}   $form - текущая форма, `jQuery element`
 * @param   {Object}    response - ответ по текущей форме
 *
 * @return  {undefined}
 */
wHTML.prototype.formValidationAfterSubmit = function( $form, response ) {
	console.info( 'HTML => Форма отправлена', response );
};