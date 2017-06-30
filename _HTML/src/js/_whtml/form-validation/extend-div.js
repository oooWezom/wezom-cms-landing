// переопределяем методы для работы с дивами
$.extend($.validator.prototype, {
	init: function() {
		this.labelContainer = $(this.settings.errorLabelContainer);
		this.errorContext = this.labelContainer.length && this.labelContainer || $(this.currentForm);
		this.containers = $(this.settings.errorContainer).add(this.settings.errorLabelContainer);
		this.submitted = {};
		this.valueCache = {};
		this.pendingRequest = 0;
		this.pending = {};
		this.invalid = {};
		this.reset();

		var groups = (this.groups = {}),
			rules;
		$.each(this.settings.groups, function(key, value) {
			if (typeof value === "string") {
				value = value.split(/\s/);
			}
			$.each(value, function(index, name) {
				groups[name] = key;
			});
		});
		rules = this.settings.rules;
		$.each(rules, function(key, value) {
			rules[key] = $.validator.normalizeRule(value);
		});

		function delegate2(event) {
			// WezomFix
			var validator, form, eventType;
			form = this.form;

			if (!form) {
				form = $(this).closest("div[data-form='true']").get(0);
			}
			validator = $.data(form, "validator");
			eventType = "on" + event.type.replace(/^validate/, "");
			/*this.settings = validator.settings;
			if (this.settings[eventType] && !this.is(this.settings.ignore)) {
				this.settings[eventType].call(validator, this[0], event);
			}*/
			var settings = validator.settings;
			if (settings[eventType] && !$(this).is(settings.ignore)) {
				settings[eventType].call(validator, this, event);
			}
		}

		$(this.currentForm)
			.on("focusin.validate focusout.validate keyup.validate",
				":text, [type='password'], [type='file'], select, textarea, [type='number'], [type='search'], " +
				"[type='tel'], [type='url'], [type='email'], [type='datetime'], [type='date'], [type='month'], " +
				"[type='week'], [type='time'], [type='datetime-local'], [type='range'], [type='color'], " +
				"[type='radio'], [type='checkbox']", delegate2)
			// Support: Chrome, oldIE
			// "select" is provided as event.target when clicking a option
			.on("click.validate", "select, option, [type='radio'], [type='checkbox']", delegate2);

		if (this.settings.invalidHandler) {
			$(this.currentForm).on("invalid-form.validate", this.settings.invalidHandler);
		}

		// Add aria-required to any Static/Data/Class required fields before first validation
		// Screen readers require this attribute to be present before the initial submission http://www.w3.org/TR/WCAG-TECHS/ARIA2.html
		$(this.currentForm).find("[required], [data-rule-required], .required").attr("aria-required", "true");
	}
});

// переписываем ститческое правило для работы с дивами
$.validator.staticRules = function(element) {
	// WezomFix
	if (element.form) {
		validator = $.data(element.form, "validator");
	} else {
		validator = $.data($(element).closest("div[data-form='true']").get(0), "validator");
	}

	var rules = {},
		//validator = $.data(element.form, "validator");
		validator = validator; // WezomFix

	if (validator.settings.rules) {
		rules = $.validator.normalizeRule(validator.settings.rules[element.name]) || {};
	}
	return rules;
};
