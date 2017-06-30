'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';

	// NodeJS
	import gulp from 'gulp4';
	import vinylFtp from 'vinyl-ftp';
	import gulpLoadPlugins from 'gulp-load-plugins';
	const $ = gulpLoadPlugins();

	// Хелперы
	import helpersClass from '../gulpfile.helpers.js';
	const Helpers = new helpersClass(l10n);
	const __ = Helpers.__;


// Определения
// =================================
	// Параметры из config.json
	let notifyTime = configJson.gulpOptions.notify.time;



/**
 * Модуль который експортирует задачу загрузки файлов на фтп.
 * По умолчанию это фтп хост инкубатора,
 * параметры подключения к хосту указываються в конфигурации задачи `connect`.
 *
 * @param	{Object} options - передаваемые параметры
 * @return	{Function}
*/
module.exports = function(options) {

	return function(cb) {

		let taskName = options.taskName;
		// создаем подключение
		let ftpConnect = vinylFtp.create(configJson.inkubatorConnect);
		let remotePath = ftpConnect.config.remotePath + configJson.project.inkubatorFolder;

		// список загруженных файлов
		let compiledFiles = [];

		return gulp.src(options.src, {buffer: false})
			.pipe(ftpConnect.newer(remotePath))
			.pipe(ftpConnect.dest(remotePath))
			.on('data', (file) => {
				compiledFiles.push(file.relative)
			})
			.pipe($.if(options.notify,
				Helpers.gulpNotifyOnLast(taskName, compiledFiles, notifyTime)
			));

	};
};
