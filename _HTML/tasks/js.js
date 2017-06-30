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
	let uglifyOptions = configJson.gulpOptions.uglify;
	let includeOptions = configJson.gulpOptions.include;

	// Sourcemaps
	let _sourcemaps = configJson.gulpOptions.sourcemaps;
	let mapsInitsOptions = _sourcemaps.initOptions;
	let mapsWriteTo = (typeof _sourcemaps.writeTo == 'string' && _sourcemaps.writeTo.length) ? _sourcemaps.writeTo : undefined;



/**
 * Модуль компиляции `js` файлов.
 *
 * @param		{Object}		options - передаваемые параметры
 * @return		{Function}
*/
module.exports = function(options) {

	let taskName = options.taskName;
	let newExtension = options.changeExt;
	let needToRename = !!newExtension;

	let minifyFiles = options.minify;
	let useSourcemaps = options.sourcemaps && !needToRename;

	let compiledFiles = [];

	// возврашаем функцию для задачи
	return function(cb) {

		return gulp.src(options.src, (options.base ? { base: options.base } : {}) )

			.pipe($.if(options.filterNewer,
				multipipe(
					$.rename((path) => {path.extname = newExtension || '.js';}),
					$.newer(options.dest),
					$.rename((path) => {path.extname = '.js';})
				)
			))

			.on('data', function(file) {
				Helpers.logTaskGetMsg( taskName, file.relative );
			})

			.pipe(multipipe(

					$.if(useSourcemaps,
						$.sourcemaps.init(mapsInitsOptions)),

					$.include(includeOptions),

					$.if(options.es6,
						$.babel({
							presets: ['es2015']
						}) ),

					$.if(minifyFiles,
						$.uglify(uglifyOptions)),

					$.if(useSourcemaps,
						$.sourcemaps.write(mapsWriteTo)),

					$.if((needToRename && /\.js$/),
						$.rename((path) => {path.extname = newExtension;}))

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
