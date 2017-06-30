'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';

	// NodeJS
	import gulp from 'gulp4';
	import multipipe from 'multipipe';
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
	let cssnanoOptions = configJson.gulpOptions.cssnano;



/**
 * Модуль составления задачи для трансфера файлов.
 * Используеться для переброса файлов без обработки.
 *
 * @param	{Object} options - передаваемые параметры
 * @return	{Function}
*/
module.exports = function(options) {

	let taskName = options.taskName;
	// оптимизировать изображения ?
	let isImageMin = !!options.imagemin;
	// использовать метод ?
	let isNewer = options.isNewer;
	let isSince = options.isSince;
	let isChanged = options.isChanged;
	//
	let newExtension = options.changeExt;
	let needToRename = !!newExtension;

	let minifyCss = options.cssnano;
	let isBkpCritical = !!options.criticalBkp && options.isProduction;

	let compiledFiles = [];

	if (undefined === initedTasks[taskName]) {
		initedTasks[taskName] = true;
		switch(options.filter) {
			case 'since':
				options.isSince = true;
				break;
			case 'newer':
				options.isNewer = true;
				break;
			case 'changed':
				options.isChanged = true;
				break;
			default:
				options.isSince = false;
				options.isNewer = false;
				options.isChanged = false;
		};
		isNewer = options.isNewer;
		isSince = options.isSince;
		isChanged = options.isChanged;
	}



	return function(cb) {
		return gulp.src(options.src, {
				buffer: isImageMin || isChanged,
				since: isSince ? gulp.lastRun(options.taskName) : 0
			})

			.pipe(multipipe(

					$.if((needToRename),
						$.rename((path) => {path.extname = newExtension;})),

					$.if(minifyCss,
						$.cssnano(cssnanoOptions)),

					$.if(isNewer,
						$.newer(options.dest)),

					$.if(isChanged,
						$.changed(options.dest, {
							hasChanged: $.changed.compareSha1Digest
						})),


					$.if(isImageMin,
						$.imagemin()
					)

				).on('error', Helpers.gulpNotifyOnError(taskName))
			)

			.pipe(gulp.dest(options.dest))

			.pipe($.if(isBkpCritical,
				gulp.dest(options.criticalBkp)
			))

			.on('data', (file) => {
				compiledFiles.push(file.relative)
			})

			.pipe($.if(options.notify,
				Helpers.gulpNotifyOnLast(taskName, compiledFiles, notifyTime)
			))

			.pipe($.if(
				(options.browserSyncReload || options.reloadBS),
				options.browserSync.stream({
					match: "**/*.css"
				})
			));
	};
};
