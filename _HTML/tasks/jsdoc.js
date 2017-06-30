'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';
	import jsdocConfig from './jsdoc-theme/jsdoc.conf.json';

	// NodeJS
	import gulp from 'gulp4';
	import jsdoc3 from 'gulp-jsdoc3';

	// Хелперы
	import helpersClass from '../gulpfile.helpers.js';
	const Helpers = new helpersClass(l10n);
	const __ = Helpers.__;



/**
 * Документация `js` файлов, на основе комментариев `jsdoc`
 *
 * @param	{Object} options - передаваемые параметры
 * @return	{Function}
*/
module.exports = function(options) {

	// возвращаем задачу
	return function(cb) {

		// расширяем системный конфиг jsdoc на основе пользовательских параметров
		Helpers.jsdoc3Config(options, jsdocConfig);

		// генерация документации
		gulp.src(options.src, {read: false})
			.pipe(jsdoc3(jsdocConfig, cb));
	};
};
