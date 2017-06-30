// фикс вывода пользовательских сообщений
$.extend($.validator.prototype, {
	defaultMessage: function(element, rule) {
		var method = rule.method;
		// WezomFix
		var method_name = _formGetMethodMsgName(element, method);
		var message = this.findDefined(
				this.customMessage(element.name, method),
				this.customDataMessage(element, method),
				// title is never undefined, so handle empty string as undefined
				!this.settings.ignoreTitle && element.title || undefined,
				$.validator.messages[method_name],
				"<strong>Warning: No message defined for " + element.name + "</strong>"
			),
			theregex = /\$?\{(\d+)\}/g;
		if ( typeof message === "function" ) {
			message = message.call( this, rule.parameters, element );
		} else if ( theregex.test( message ) ) {
			message = $.validator.format( message.replace( theregex, "{$1}" ), rule.parameters );
		}

		return message;
	}
});
