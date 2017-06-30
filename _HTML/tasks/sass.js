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

	// Глобальные параметры из config.json
	let notifyTime = configJson.gulpOptions.notify.time;
	let sassOptions = configJson.gulpOptions.sass;
	let pleeeaseOptions =  configJson.gulpOptions.pleeease;

	// Sourcemaps
	let _sourcemaps = configJson.gulpOptions.sourcemaps;
	let sourcemapsOptions = _sourcemaps.initOptions;
	let sourcemapsWriteTo = (typeof _sourcemaps.writeTo == 'string' && _sourcemaps.writeTo.length) ? _sourcemaps.writeTo : undefined;

/**
 * Модуль составления задачи для компиляции `scss` файлов.
 *
 * @param	{Object} options - передаваемые параметры
 * @return	{Function}
*/
module.exports = function(options) {

	let taskName = options.taskName;
	// список скпомпиленных / переброшенных файлов
	let compiledFiles = [];

	// при первом ините готовим параметры задачи
	if ( undefined === initedTasks[taskName] ) {
		initedTasks[taskName] = true;

		// параметры src для gulp.src
		options.srcOptions = options.base ? { base: options.base } : {}

		// параметры копируем параметры для  `pleeease`;
		options.pleeeaseOptions = Object.assign( {}, pleeeaseOptions );

		// если минимизировать не нужно
		// отключаем настрайки `minifier`
		if ( false === options.minify ) {
			options.pleeeaseOptions.minifier = false;
		}

		// если будем использовать `sourcemaps`
		// добавлем настройки
		if ( options.sourcemaps ) {

			// delete options.pleeeaseOptions.sourcemaps = {
			// 	"map": {
			// 		"inline": false
			// 	}
			// }
		}

		delete options.pleeeaseOptions.sourcemaps;
	}

	// возврашаем функцию для задачи
	return function(cb) {

		return gulp.src( options.src, options.srcOptions )

			// меняем расширение и сверяем даты файлов
			// только если исходный файл новее итогового
			// возвращаем расширение и пускаем дальше на поток
			.pipe( $.if( options.filterNewer,
				multipipe(
					$.rename( (path) => path.extname = options.changeExt || '.css' ),
					$.newer( options.dest ),
					$.rename( (path) => path.extname = '.scss' )
				)
			))

			// лог получения файлов
			.on( 'data', function(file) {
				Helpers.logTaskGetMsg( taskName, file.relative );
			})

			// основной пайп компиляции sass
			.pipe(
				multipipe(
					// баг внешних `sourcemaps` в `gulp-pleeeease + gulp + sass`
					// https://github.com/danielhusar/gulp-pleeease#source-map-support
					// https://github.com/iamvdo/pleeease/issues/57
					//
					// инитим `sourcemaps`
					$.if( options.sourcemaps,
						$.sourcemaps.init( sourcemapsOptions ) ),

					// компилим scss
					$.sass( sassOptions ),

					// отдаем на постпроцессоры
					// - автопрефиксер
					// - объединение mq
					// - минифайер
					// - sourcemaps
					$.pleeease( options.pleeeaseOptions ),

					// пишем внешние `sourcemaps`
					$.if( options.sourcemaps,
						$.sourcemaps.write( sourcemapsWriteTo ) ),

					// меняем расширение при необходимости
					// к примеру компиляция critical файлов
					// с расширением файлов *.ejs
					$.if( (!!options.changeExt && /\.css$/ ),
						$.rename( (path) => path.extname = options.changeExt ) ),

					// сверяем контент исходного и итогового файлов
					// идем дальше, если отличаются
					$.changed( options.dest, {
						hasChanged: $.changed.compareSha1Digest
					}),

					// сохраняем новый итоговый файл
					gulp.dest(options.dest)

				// бъем в колокола при ошибке в пайпе
				).on( 'error', Helpers.gulpNotifyOnError(taskName) )
			)

			// для лога нотифаера
			// пушим имена скомпиленных файлов в массив
			.on( 'data', (file) => {
				compiledFiles.push( file.relative )
			})

			// уведомляем верстальщика,
			// если он не отключил notify
			.pipe( $.if( options.notify,
				Helpers.gulpNotifyOnLast( taskName, compiledFiles, notifyTime )
			))

			// делаем "инъекцию" стилей browserSync
			.pipe( $.if( options.browserSyncReload,
				options.browserSync.stream({
					match: "**/*.css"
				})
			));
	};
};

