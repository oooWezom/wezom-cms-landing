// formValidationConfig
// флаги
var is_validation_extended = false,
is_validation_translated = false,

// игнор элементов по селектору
form_ignore_selectos = ':hidden',

// классы
form_class = 'js-form',
form_selector = '.'+form_class,

form_class__submit = 'js-form-submit',
form_selector__submit = '.'+form_class__submit,

form_class__reset = 'js-form-reset',
form_selector__reset = '.'+form_class__reset,

form_selector__input_file = 'input[type="file"]',
form_selector__js_file = '.js-file',
form_selector__js_file__input = form_selector__js_file + '__input',
form_selector__js_file__result = form_selector__js_file + '__result',

form_class__control_holder = 'control-holder',
form_selector__control_holder = '.'+form_class__control_holder,

form_class__valid = 'form--valid',
form_class__no_valid = 'form--no-valid',

form_class__error = 'has-error',
form_class__success = 'has-success';

/**
 * Расширяем конфигурацию плагина `jquery-validate`
 *
 * @sourcecode  wHTML:formValidationConfig
 * @memberof    wHTML
 *
 * @tutorial    workwith-jquery-validate
 *
 * @return      {undefined}
 */
wHTML.prototype.formValidationConfig = function() {
	// если плагин еще не расширялся
	if (is_validation_extended) {
		return;
	}

	// расширяем валидатор
	//=include _whtml/form-validation/extend-defaults.js
	//=include _whtml/form-validation/extend-prototype.js
	//=include _whtml/form-validation/extend-methods.js
	//=include _whtml/form-validation/extend-div.js

	// включаем флаг, что уже расширили плагин
	is_validation_extended = true;

	// если плагин уже бл переведен или глобального объекта переводву нету - выходим
	if (is_validation_translated || window.validationTranslate === undefined) {
		return false;
	}
	// иначе делаем перевод
	//=include _whtml/form-validation/extend-translate.js

	// включаем флаг, что уже перевели плагин
	is_validation_translated = true;
};

//=include _whtml/form-validation/extend-rules.js
