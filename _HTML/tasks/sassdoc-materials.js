'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';
	import jsdocConfig from './jsdoc-theme/jsdoc.conf.json';

	// NodeJS
	import gulp from 'gulp4';
	import Vinyl from 'vinyl';
	import through2 from 'through2';
	const throughObj = through2.obj;
	import jsdoc3 from 'gulp-jsdoc3';

	// Хелперы
	import helpersClass from '../gulpfile.helpers.js';
	const Helpers = new helpersClass(l10n);
	const __ = Helpers.__;



/**
 * Компиляция главной страницы и туториалов для документации `scss` файлов
 *
 * @param		{Object}		options - передаваемые параметры
 * @return		{Function}
*/
module.exports = function(options) {


	// возвращаем задачу
	return function(cb) {

		// расширяем системный конфиг jsdoc на основе пользовательских параметров
		Helpers.jsdoc3Config(options, jsdocConfig);

		// составляем источник для jsdoc
		let src = [
			options.index,
			options.blank
		];

		// указываем флаг sassdoc
		jsdocConfig.sassdoc = true;

		// генерация документации
		gulp.src(src, {read: false})
			.pipe(jsdoc3(jsdocConfig, cb));
	};
};
