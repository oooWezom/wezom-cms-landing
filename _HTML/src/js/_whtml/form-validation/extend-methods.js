// добавляем пользовательские правила
$.extend($.validator.methods, {

	email: function( value, element ) {
		return this.optional(element) || /^(([a-zA-Z0-9\&\+\-\=\_])+((\.([a-zA-Z0-9\&\+\-\=\_]){1,})+)?){1,64}\@([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,6}$/.test(value);
	},

	password: function(value, element) {
		return this.optional(element) || /^\S.*$/.test(value);
	},

	filesize: function(value, element, param) {
		var kb = 0;
		for (var i = 0; i < element.files.length; i++) {
			kb += element.files[i].size;
		}
		return this.optional(element) || (kb / 1024 <= param);
	},

	filesizeEach: function(value, element, param) {
		var flag = true;
		for (var i = 0; i < element.files.length; i++) {
			if (element.files[i].size / 1024 > param) {
				flag = false;
				break;
			}
		}
		return this.optional(element) || (flag);
	},

	filetype: function(value, element, param) {
		var result;
		param = typeof param === "string" ? param.replace(/,/g, "|") : "png|jpe?g|doc|pdf|gif|zip|rar|tar|html|swf|txt|xls|docx|xlsx|odt";
		if (element.multiple) {
			var files = element.files;
			for (var i = 0; i < files.length; i++) {
				var value = files[i].name;
				result = this.optional(element) || value.match(new RegExp(".(" + param + ")$", "i"));
				if (result === null) {
					break;
				}
			}
		} else {
			var result = this.optional(element) || value.match(new RegExp("\\.(" + param + ")$", "i"));
		}
		return result;
	},

	or: function(value, element, param) {
		var $module = $(element).parents('.js-form');
		return $module.find('.' + param + ':filled').length;
	},

	word: function(value, element) {
		return this.optional(element) || /^[a-zA-Zа-яА-ЯіІїЇєёЁЄґҐ\'\`\- ]*$/.test(value);
	},

	login: function(value, element) {
		return this.optional(element) || /^[0-9a-zA-Zа-яА-ЯіІїЇєЄёЁґҐ][0-9a-zA-Zа-яА-ЯіІїЇєЄґҐ\-\._]+$/.test(value);
	},

	phoneUA: function(value, element, param) {
		return this.optional(element) || /^(((\+?)(38))\s?)?(([0-9]{3})|(\([0-9]{3}\)))(\-|\s)?(([0-9]{3})(\-|\s)?([0-9]{2})(\-|\s)?([0-9]{2})|([0-9]{2})(\-|\s)?([0-9]{2})(\-|\s)?([0-9]{3})|([0-9]{2})(\-|\s)?([0-9]{3})(\-|\s)?([0-9]{2}))$/.test(value);
	},

	phone: function(value, element, param) {
		return this.optional(element) || /^(((\+?)(\d{1,3}))\s?)?(([0-9]{0,4})|(\([0-9]{3}\)))(\-|\s)?(([0-9]{3})(\-|\s)?([0-9]{2})(\-|\s)?([0-9]{2})|([0-9]{2})(\-|\s)?([0-9]{2})(\-|\s)?([0-9]{3})|([0-9]{2})(\-|\s)?([0-9]{3})(\-|\s)?([0-9]{2}))$/.test(value);
	},

	validTrue: function(value, element, param) {
		if ($(element).data('valid') === true) {
			return true;
		} else {
			return false;
		}
	}
});
