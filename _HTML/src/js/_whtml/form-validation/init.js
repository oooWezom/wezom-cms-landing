/**
 * Инициализация плагина `jquery-validate`
 *
 * @sourcecode  wHTML:formValidation
 * @memberof    wHTML
 *
 * @fires       wHTML#formOnSubmit
 *
 * @param   {Element}    [$context] - родительский элемен
 *
 * @return  {undefined}
 */
wHTML.prototype.formValidation = function( $context ) {

	var $forms = $( form_selector, $context );
	if ( !$forms.length ) {
		return;
	}

	// раширяем при первом ините
	_self.formValidationConfig();

	$forms.each(function(index, el) {
		var $form = $(el);
		var validator = $form.data('validator');

		// если форма инитилась -> выходим
		if (undefined !== validator) {
			return;
		}

		// если элемент `form`
		if ($form.is('form')) {
			$form.on('submit', function(event) {
				return false;
			});
		}

		// конфиг для каждой формы
		var validateConfig = {};

		// если нужна последовательная подсветка ошибок, а не всех сразу
		// добавь к форме data-errors-by-step="true"
		if ($form.data('errors-by-step') === true) {
			_formErrorsByStep(validateConfig);
		}

		// инитим плагин
		$form.validate(validateConfig);

		// если форма - блок
		if ($form.is('div')) {
			$form
				// сабмит
				.on('click', form_selector__submit, function(event) {
					$form.submit();
				})
				// ресет
				.on('click', form_selector__reset, function(event) {
					_self.formValidationReset($form);
				})
		}

		// файл
		$form.on('change', form_selector__input_file, function(event) {
			var $this = $(this);
			var $jsFile = $this.closest( form_selector__js_file );

			if ($jsFile.length) {
				_self.formJsChangeFile( $this, $jsFile );
			} else {
				_self.formValidationValid( $this );
			}
		});
	});
};