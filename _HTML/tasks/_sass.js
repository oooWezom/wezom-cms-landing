'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';

	// NodeJS
	import gulp from 'gulp4';
	import chalk from 'chalk';
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
	let sassOptions = configJson.gulpOptions.sass;
	let autoprefixerOptions = configJson.gulpOptions.autoprefixer;
	let cssnanoOptions = configJson.gulpOptions.cssnano;
	let notifyTime = configJson.gulpOptions.notify.time;

	// Sourcemaps
	let _sourcemaps = configJson.gulpOptions.sourcemaps;
	let mapsInitsOptions = _sourcemaps.initOptions;
	let mapsWriteTo = (typeof _sourcemaps.writeTo == 'string' && _sourcemaps.writeTo.length) ? _sourcemaps.writeTo : undefined;



/**
 * Модуль составления задачи для компиляции `scss` файлов.
 *
 * @param	{Object} options - передаваемые параметры
 * @return	{Function}
*/
module.exports = function(options) {

	let taskName = options.taskName;

	let newExtension = options.changeExt;
	let needToRename = !!newExtension;

	let minifyFiles = options.minify;
	let useSourcemaps = options.sourcemaps && !needToRename;

	let compiledFiles = [];

	if (undefined === initedTasks[taskName]) {
		initedTasks[taskName] = true;
	}

	// возврашаем функцию для задачи
	return function(cb) {

		return gulp.src(options.src, (options.base ? { base: options.base } : {}) )

			.pipe($.if(options.filterNewer,
				multipipe(
					$.rename((path) => {path.extname = newExtension || '.css';}),
					$.newer(options.dest),
					$.rename((path) => {path.extname = '.scss';})
				)
			))

			.on('data', function(file) {
				Helpers.logTaskGetMsg( taskName, file.relative );
			})

			.pipe(
				multipipe(

					$.if(useSourcemaps,
						$.sourcemaps.init(mapsInitsOptions)),

					$.sass(sassOptions),

					$.autoprefixer(autoprefixerOptions),

					$.combineMq({beautify: true}),

					$.if(minifyFiles,
						$.cssnano(cssnanoOptions)),

					$.if(useSourcemaps,
						$.sourcemaps.write(mapsWriteTo)),

					$.if((needToRename && /\.css$/),
						$.rename((path) => {path.extname = newExtension;})),

					$.changed(options.dest, {
						hasChanged: $.changed.compareSha1Digest
					}),

					gulp.dest(options.dest)

				).on('error', Helpers.gulpNotifyOnError(taskName))
			)

			.on('data', (file) => {
				compiledFiles.push(file.relative)
			})

			.pipe($.if(options.notify,
				Helpers.gulpNotifyOnLast(taskName, compiledFiles, notifyTime)
			))

			.pipe($.if(
				options.browserSyncReload,
				options.browserSync.stream({
					match: "**/*.css"
				})
			));
	};
};
