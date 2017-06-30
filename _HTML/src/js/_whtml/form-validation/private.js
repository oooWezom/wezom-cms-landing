/** @private */
function _formGetTypeName(type) {
	var type_name;
	switch (type) {
		case 'select-one':
		case 'select-multiple':
			type_name = '_select';
		break;
		case 'radio':
		case 'checkbox':
			type_name = '_checker';
		break;
		default:
			type_name = '';
	}
	return type_name;
}

/** @private */
function _formGetMethodMsgName(element, method) {
	var method_name;
	switch (method) {
		case 'required':
		case 'maxlength':
		case 'minlength':
		case 'rangelength':
			method_name = method + _formGetTypeName(element.type);
		break;
		default:
			method_name = method;
	}
	return method_name;
}

/** @private */
function _formErrorsByStep(validateConfig) {
	validateConfig.showErrors = function(errorMap, errorList) {
		if (errorList.length) {
			var firstError = errorList.shift();
			var newErrorList = [];
			newErrorList.push(firstError);
			this.errorList = newErrorList;
		}
		this.defaultShowErrors();
	};
}

/** @private */
function _formResetInputs(settings, elements) {
	for (var i = 0; i < elements.length; i++) {
		var element = elements[i];
		var $element = $(element);

		if ($element.hasClass('js-form-element-noreset')) {
			continue;
		}

		switch (element.type) {
			case 'submit':
			case 'reset':
			case 'button':
			case 'image':
				break;

			case 'radio':
			case 'checkbox':
				element.checked = element.defaultChecked;
				$element.trigger('change');
				break;

			case 'file':
				element.outerHTML = element.outerHTML;
				$element.trigger('change');
				break;

			default:
				element.value = element.defaultValue;
				$element.trigger('change');
		}

	}
}

/** @private */
function _formResetSelects(settings, elements) {
	for (var i = 0; i < elements.length; i++) {
		[].forEach.call(elements[i].options, function(element) {
			element.selected = element.defaultSelected;
		});
	}
}
