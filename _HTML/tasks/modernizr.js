'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';

	// NodeJS
	import gulp from 'gulp4';
	import multipipe from 'multipipe';
	import through2 from 'through2';
	const throughObj = through2.obj;
	import gulpLoadPlugins from 'gulp-load-plugins';
	const $ = gulpLoadPlugins();

	// Хелперы
	import helpersClass from '../gulpfile.helpers.js';
	const Helpers = new helpersClass(l10n);
	const __ = Helpers.__;


// Определения
// =================================
	// Список запущенных задач
	let initedTasks = {};

	// Параметры из config.json
	let notifyTime = configJson.gulpOptions.notify.time;
	let modernizrOptions = configJson.gulpOptions.modernizr;
	let uglifyOptions = configJson.gulpOptions.uglify;


/**
 * Модуль компиляции `js` файлов.
 *
 * @param		{Object}		options - передаваемые параметры
 * @return		{Function}
*/
module.exports = function(options) {

	let taskName = options.taskName;
	let minifyFiles = options.minify;
	let compiledFiles = [];

	// возврашаем функцию для задачи
	return function(cb) {

		return gulp.src(options.src)

			.pipe(multipipe(

					$.modernizr(modernizrOptions),

					$.if(minifyFiles,
						$.uglify(uglifyOptions))

				).on('error', Helpers.gulpNotifyOnError(taskName))
			)

			.pipe($.changed(options.dest, {
				hasChanged: $.changed.compareSha1Digest
			}))

			.pipe(gulp.dest(options.dest))

			.on('data', (file) => {
				compiledFiles.push(file.relative)
			})

			.pipe($.if(options.notify,
				Helpers.gulpNotifyOnLast(taskName, compiledFiles, notifyTime)
			))

			.pipe($.if(
				options.browserSyncReload,
				throughObj(
					(file, enc, cb) => {
						cb();
					},
					(cb) => {
						if (compiledFiles.length) {
							options.browserSync.reload();
						}
						cb();
					}
				)
			));
	};
};
