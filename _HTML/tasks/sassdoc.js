'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';

	// NodeJS
	import gulp from 'gulp4';
	import sassdoc from 'sassdoc';



/**
 * Документация `scss` файлов, на основе комментариев
 *
 * @param		{Object}		options - передаваемые параметры
 * @return		{Function}
*/
module.exports = function(options) {
	return function(cb) {
		let stream = sassdoc({
			dest: options.dest,
			verbose: true,
			theme: options.theme,
			display: {
				access: ['public', 'private'],
				alias: true,
				watermark: true
			},
			groups: options.groups
		});

		gulp.src(options.src)
			.pipe(stream);

		return stream.promise.then(function () {
			console.log('End of documentation process');
		});
	};
};
