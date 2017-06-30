'use strict';

(function(window, $) {

/**
 * @namespace jQueryExtends
 */
	//=include _jquery-fn/get-my-elements.js
	//=include _jquery-fn/change-my-text.js

/**
 * @namespace wHTML
 */
	var _self,
	wHTML = function(){
		_self = this;

		// если wHTML уже существует
		// к примеру, из-за асинхроности, объявлен ранее в programmer
		if (window.wHTML) {
			// копируем методы
			for (var key in window.wHTML) {
				_self[key] = window.wHTML[key];
			}
		}

		if ( undefined === _self.formValidationOnSubmit) {
			/**
			 * Событие, при успешной валидации формы.
			 * Будет замененно при программировании.
			 *
			 * @sourcecode  wHTML:formValidationOnSubmit
			 * @memberof    wHTML
			 *
			 * @fires   wHTML#formValidationAfterSubmit
			 * @event   wHTML#formValidationOnSubmit
			 *
			 * @param   {Element}   $form - текущая форма, `jQuery element`
			 *
			 * @return  {undefined}
			 */
			_self.formValidationOnSubmit = function($form) {
				// отправка на сервак
				// ...
				// в ответе
				var response = {}
				_self.formValidationAfterSubmit( $form, response );
			}
		}
	};

/**
 * @namespace wHelpers
 */
	var _helpers,
	wHelpers = function() {
		_helpers = this;
	};

	// methods
	// ========================================
	//include _whtml/inputmask.js
	//=include _whtml/mfp-inline.js
	//=include _whtml/mfp-ajax.js
	//=include _whtml/table-wrapper.js
	//=include _whtml/view-text-media.js
	//=include _whtml/view-text-images.js
	//
	//=include _whtml/form-validation/config.js
	//=include _whtml/form-validation/init.js
	//=include _whtml/form-validation/valid.js
	//=include _whtml/form-validation/reset.js
	//=include _whtml/form-validation/callbacks.js
	//=include _whtml/form-validation/file.js
	//=include _whtml/form-validation/private.js
	//
	//=include _whtml/helpers.js

	window.wHTML = new wHTML();
	window.wHelpers = new wHelpers();

})(window, jQuery);


jQuery(document).ready(function($) {
	$('.add-new').click(function(){
		$('html, body').animate({
			scrollTop: $('#add-new').offset().top
		}, 1000);
	});

	// magnific-popup
	wHTML.mfpInline();
	wHTML.mfpAjax();

	// forms
	// wHTML.inputMask();
	wHTML.formValidation();

	// text
	wHTML.viewTextMedia();
	wHTML.tableWrapper();

	$('.js-anchor').on('click', function(){
		var anchor = $(this).attr('data-anchor');
		var offset = $('.js-anchor-block'+anchor).offset().top;
		if(anchor == '3') {
			offset = offset - 75;
		}
        $('body, html').stop().animate({
            scrollTop: offset
        }, 500);
	});






       $('.no-touchevents .js-screen-link').on('click', function(){
           $('.js-screen-link').removeClass('cur');
           $(this).addClass('cur');
           var _screen = $(this).attr('data-screen');
           $('.js-screen-item img').attr('src',_screen);
       });

    $('.touchevents .js-screen-link').on('touchend', function(){
        $('.js-screen-link').removeClass('cur');
        $(this).addClass('cur');
        var _screen = $(this).attr('data-screen');
        $('.js-screen-item img').attr('src',_screen);
    });




	$('.js-order-input').on('blur', function(){
		if(!$(this).val().length) {
			$(this).removeClass('show');
		}
		else {
			if($(this).val() !== '') {
				$(this).addClass('show');
			}
			else {
				$(this).removeClass('show');
			}
		}
	});

    $('.js-scroll_up').on('click', function(){
        $('body, html').stop().animate({
            scrollTop: 0
        }, 500);
    });

});


jQuery(window).on('scroll', function() {
	// action
	if($('.js-scroll_up').length) {
        ($(this).scrollTop() > 300) ? $('.js-scroll_up').show() : $('.js-scroll_up').hide();
    }
});


jQuery(window).on('resize', function() {
	// action
});


jQuery(window).on('load', function() {
	// content-image
	wHTML.viewTextImages();

	setTimeout(function(){
		$('.screen1').addClass('show');
	},500);
	$('.js-animation').on('inview', function(event, isInView) {
		if (isInView) {
			$(this).removeClass('is-animation');
		}
	});
});
