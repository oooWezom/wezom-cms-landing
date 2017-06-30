var translateMessages = {};
for (var key in validationTranslate) {
	var value = validationTranslate[key];
	switch(key) {
		case 'maxlength':
		case 'maxlength_checker':
		case 'maxlength_select':

		case 'minlength':
		case 'minlength_checker':
		case 'minlength_select':

		case 'rangelength':
		case 'rangelength_checker':
		case 'rangelength_select':

		case 'range':
		case 'min':
		case 'max':

		case 'filetype':
		case 'filesize':
		case 'filesizeEach':
		case 'pattern':
			translateMessages[key] = $.validator.format(value);
			break;
		default:
			translateMessages[key] = value;
	}
}
$.extend($.validator.messages, translateMessages);
