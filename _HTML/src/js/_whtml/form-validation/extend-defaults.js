// параметры по умолчанию
$.extend($.validator.defaults, {
	// переписываем дефолтные значения
	errorClass: form_class__error,
	validClass: form_class__success,
	controlHolder: form_selector__control_holder,
	inputFile: form_selector__input_file,
	ignore: form_ignore_selectos,

	// метод подсветки ошибок
	highlight: function(element, errorClass, validClass) {
		var $el;
		if (element.type === "radio") {
			$el = this.findByName(element.name);
		} else {
			var $el = $(element);
		}

		$el.add($el.closest(form_selector__control_holder))
			.addClass(errorClass)
			.removeClass(validClass);
	},

	// метод отключения подсветки ошибок
	unhighlight: function(element, errorClass, validClass) {
		var $el;
		if (element.type === "radio") {
			$el = this.findByName(element.name);
		} else {
			var $el = $(element);
		}

		$el.add($el.closest(form_selector__control_holder))
			.removeClass(errorClass)
			.addClass(validClass);
	},

	// обработчик ошибок
	invalidHandler: function(form, validator) {
		$(this)
			.addClass(form_class__no_valid)
			.data('validator').focusInvalid();
	},

	// обработчик сабмита
	submitHandler: function(form) {
		var $currentForm = $(form);
		$currentForm.removeClass(form_class__no_valid).addClass(form_class__valid);
		_self.formValidationOnSubmit($currentForm);
	}
});
