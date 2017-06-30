'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';

	// NodeJS
	import gulp from 'gulp4';
	import path from 'path';
	import critical from 'critical';
	import deepExtend from 'deep-extend';

	// Хелперы
	import helpersClass from '../gulpfile.helpers.js';
	const Helpers = new helpersClass(l10n);
	const __ = Helpers.__;

// Увелечение лимита EventEmitter memory
// =================================
	process.setMaxListeners(configJson.maxListeners);


// Определения
// =================================
	// Список запущенных задач
	let initedTasks = {};

	// Параметры из config.json
	let notifyTime = configJson.gulpOptions.notify.time;

	// critical
	let criticalConfig = configJson.gulpOptions.critical;
	let criticalOptions = criticalConfig.moduleOptions;
		// generates CSS
		criticalOptions.inline = false;
		// no HTML source
		delete criticalOptions.html;
		// ignore regex
		criticalOptions.ignore.push(/url\(/g);


/**
 * Модуль составления задачи для компиляции `scss` файлов.
 *
 * @param	{Object} options - передаваемые параметры
 * @return	{Function}
*/
module.exports = function(options) {

	let taskName = options.taskName;
	let destPath = path.resolve(`${options.dest}critical-${options.fileAlias}.ejs`);

	let taskOptions = deepExtend({
		base: options.base,
		src: options.fileSrc,
		dest: destPath
	}, criticalOptions);

	if (taskOptions.css && taskOptions.css.length) {
		for (var i = 0; i < taskOptions.css.length; i++) {
			let cssPath = taskOptions.css[i];
			cssPath = cssPath.replace('{mediaFolder}', options.mediaFolder);
			taskOptions.css[i] = cssPath;
		}
	}

	// console.log(taskOptions);

	return function(cb) {
		Helpers.logMsg( __('criticalWillWriteFile', [taskOptions.dest]));
		return critical.generate(taskOptions);
	};
};
