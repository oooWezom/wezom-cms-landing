/**
 * Сброс формы-дива
 *
 * @sourcecode  wHTML:formValidationReset
 * @memberof    wHTML
 *
 * @requires    {@link jQueryExtends.getMyElements }
 * @requires    {@link jQueryExtends.changeMyText }
 *
 * @param   {Element}   $form - текущая форма
 *
 * @return  {undefined}
 */
wHTML.prototype.formValidationReset = function($form) {
	var form = $form[0];
	var formValidator = $form.data('validator');
	var settings = formValidator.settings;

    formValidator.resetForm();

	_formResetInputs(settings, $form.find('input'));
	_formResetInputs(settings, $form.find('textarea'));
	_formResetSelects(settings, $form.find('select'));

	var $jsFiles = $form.getMyElements(
			'$jsFiles',
			form_selector__js_file__result,
			'find'
		);

	$jsFiles.each(function(index, el) {
		$(this).changeMyText();
	});

	$form
		.removeClass(form_class__valid)
		.removeClass(form_class__no_valid);
};
