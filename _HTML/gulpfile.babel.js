'use strict';

// Подключение
// =================================
	// Данные
		import configJson from './config.json';
		import l10n from './l10n.json';
		import pkg from './package.json';

	// NodeJS
		import fs from 'fs';
		import path from 'path';
		import chalk from 'chalk';
		import gulp from 'gulp4';
		import browserSyncModule from 'browser-sync';
		import autowatch from 'gulp-autowatch';
		import yargs from 'yargs';
		const absolutePath = path.resolve('./');
		const browserSync = browserSyncModule.create();
		const argv = yargs.argv;


	// Хелперы
		import helpersClass from './gulpfile.helpers.js';
		const Helpers = new helpersClass(l10n);
		const __ = Helpers.__;



// Определения и Подготовка
// =================================

	// Статус версии сборки
	// =================================
		// имя запущенной задачи
		const startedTaskName = argv._[0];

		// флаги запуска задачи по именам,
		// на основе которых можем управлять поведением сборщика
		const isTaskForInkubator = /^inkubator/.test(startedTaskName);
		const isTaskForDocs = /^docs/.test(startedTaskName);
		const isTaskForStartingProject = /^start/.test(startedTaskName);
		const isCriticalTask = /^critical:/.test(startedTaskName);

		// версия сборки
		const isProduction = isTaskForInkubator || !!argv.p || !!argv.prod;
		const isDevelop = !isProduction;

		// компиляция для wezom сms
		const wezomCMS = (configJson.wezomCMS === true && isTaskForInkubator === false);


	// Дополнительные опции запуска
	// =================================
		// принудительное включение линтинга
		// const isLinting = configJson.gulp.linting || !!argv.l || !!argv.lint;

		// включение нотифаеров,
		// если включен конфиг или один из флагов
		const notifyOnDone = configJson.gulp.notify || (!!argv.n || !!argv.notify);


	// Основные флаги из config.json
	// =================================
		let checkProperty = (property) => {
			let prod = configJson.onProduction[property];
			let dev = configJson.onDevelop[property];
			return (isProduction && prod) ? prod : dev;
		};

		// ejs
		const beautifyHTML = checkProperty('beautifyHTML');
		// sass
		const minifyCSS = checkProperty('minifyCSS');
		const sourcemapsCSS = checkProperty('sourcemapsCSS');
		// js
		const minifyJS = checkProperty('minifyJS');
		const sourcemapsJS = checkProperty('sourcemapsJS');
		// трансфер статики
		const transferFilterMethod = checkProperty('transferMethod');
		const isOptimizeImages = checkProperty('optimizeImages');


	// Дополнительные инструменты
	// =================================
		// объект авто-вотчей
		const autoWatchSources = {};

		// временная директория
		const tmpFolder = './tmp';

		// директория итоговой сборки
		const distFolder = isTaskForInkubator ? tmpFolder + '/inkubator' : './dist';

		// директория медиа фаилов
		const mediaFolder = wezomCMS ? '../Media' : distFolder;

		// директория для todo.md
		const todoPath = wezomCMS ? './' : '../';

	// BrowserSync
	// =================================
		const useBS = configJson.browserSync.use && !isTaskForInkubator;
		const openBS = (!!argv.o || !!argv.open) ? 'external' : false;
		const reloadBS = !(!!argv.r || !!argv.noreload);

		// Инициализация browser-sync
		const browserSyncTask = (cb) => {
			if (useBS) {
				let port = configJson.browserSync.port;
				let open = openBS;

				if (configJson.browserSync.static) {
					let server = {
						baseDir: 'dist/'
					};

					browserSync.init({
						open,
						port,
						server
					});

				} else {
					let projectFolder = configJson.project.localFolder;
					let deepPath = configJson.browserSync.deepPath;
					let proxy = `http://${projectFolder}${deepPath}`;

					let init = {
						open,
						port,
						proxy
					}

					if (configJson.browserSync.useHost) {
						init.host = `${projectFolder}`;
					}

					browserSync.init(init);
				}

			} else {
				Helpers.logMsg( __('browserSyncDisabled'), 'warn');
				cb();
			}
		};


	// tmp директория
	// =================================
		try {
			fs.accessSync(tmpFolder);
		} catch(e) {
			Helpers.logMsg( __('tmpFolderCreated', [tmpFolder]) );
			fs.mkdirSync(tmpFolder);
		}

		Helpers.logMsg( __('distFolderIs', [distFolder]) );
		Helpers.logMsg( __('mediaFolderIs', [mediaFolder]), (wezomCMS ? 'warn' : 'info'));



// Методы
// =================================
	/**
	 * Метод "ленивой" загрузки и подключения задач из внутрених модулей.
	 * Кроме передаваемых значений из каждой задачи, метод добавляет автоматически параметры:
	 * - `taskOptions.taskName` - имя задчи
	 * - `taskOptions.browserSync` - `browser-sync`
	 * - `taskOptions.browserSyncReload` - флаг авторелоада `browser-sync`
	 *
	 * Также если в параметрах задачи указать свойство `watch`
	 * - автоматически добавит в глобальный объект `autoWatchSources` ключ (имя задачи)
	 * и значение указанное в свойстве.
	 * Для использования модулем `gulp-autowatch` в задаче `gulp watch`
	 *
	 * @param	{String} taskName - имя задачи
	 * @param	{String} taskFile - путь к файлу, без учета родительской директории задач - `./tasks/`
	 * @param	{Object} [taskOptions={}] - передавемые параметры
	 */
		let lazyRequireTask = (taskName, taskFile, taskOptions={}) => {
			taskOptions.taskName = taskName;
			taskOptions.isProduction = isProduction;
			taskOptions.isDevelop = isDevelop;
			taskOptions.isTaskForInkubator = isTaskForInkubator;
			taskOptions.browserSync = taskOptions.browserSync || browserSync;
			if (undefined === taskOptions.browserSyncReload) {
				taskOptions.browserSyncReload = useBS && reloadBS;
			}

			if (taskOptions.watch && undefined === autoWatchSources[taskName]) {
				autoWatchSources[taskName] = taskOptions.watch;
			}

			gulp.task(taskName, function(cb) {
				let task = require(taskFile).call(this, taskOptions);
				return task(cb);
			});
		};



// Задачи по файлам
// =================================

	// Critical CSS
	// =================================

		if (isCriticalTask) {
			let allFiles = (startedTaskName == 'critical:-all');
			let filesList = fs.readdirSync('./dist/');
			let exclude = configJson.gulpOptions.critical.exclude;
			let criticalTasksList = [];

			Helpers.logMsg(__(
				'criticalExcludedFiles',
				[ chalk.yellow(exclude.join('\n\t')) ]
			), 'get');

			if (allFiles) {

				filesList.forEach( (file) => {
					if (!/.html$/.test(file)) {
						return true;
					}
					if (exclude.indexOf(file) >= 0) {
						return true;
					}

					let fileAlias = file.replace(/\.html$/, '');
					let fileTask = `critical:${fileAlias}`;
					criticalTasksList.push(fileTask);

					lazyRequireTask(fileTask, './tasks/critical', {
						fileSrc: file,
						fileAlias: fileAlias,
						mediaFolder: mediaFolder,
						base: `${distFolder}/`,
						dest: './src/markup/widgets/criticals-css-by-views/'
					});

				});

			} else {
				let fileAlias = startedTaskName.replace(/^critical:/, '');
				let fileAliases = fileAlias.split(':');
				fileAliases.forEach( (alias) => {
					let htmlFile = `${alias}.html`;

					if (filesList.indexOf(htmlFile) < 0) {
						Helpers.logError(__(
							'criticalNoFile',
							[ htmlFile ]
						), true);
					}

					if (exclude.indexOf(htmlFile) >= 0) {
						Helpers.logError(__(
							'criticalExcludedFile',
							[ htmlFile ]
						), true);
					}

					let fileTask = `critical:${alias}:file`;
					criticalTasksList.push(fileTask);

					lazyRequireTask(fileTask, './tasks/critical', {
						fileSrc: htmlFile,
						fileAlias: alias,
						mediaFolder: mediaFolder,
						base: `${distFolder}/`,
						dest: './src/markup/widgets/criticals-css-by-views/'
					});
				});
			}

			if (startedTaskName.length === 0) {
				Helpers.logError(__('criticalNoFiles'), true);
			}

			gulp.task(startedTaskName,
				gulp.series(...criticalTasksList)
			);
		}

	// EJS
	// =================================
		// данные для locals
		let ejsLocalData = {
			_PROJECT_NAME: configJson.project.name,
			_PROJECT_DESCRIPTION: configJson.project.description,
			_PROJECT_IS_RESPONSIVE: configJson.project.responsive,
			_PROJECT_IS_WEZOM: configJson.project.wezom,
			_IS_PRODUCTION: isProduction,
			_IS_DEVELOP: isDevelop,
			_IS_TASK_FOR_INKUBATOR: isTaskForInkubator
		};

		let ejsTaskMainData = {
			notify: notifyOnDone,
			beautify: beautifyHTML,
			locals: ejsLocalData,
			configFile: './src/markup/_config.ejs',
			src: './src/markup/!(_*)*.ejs',
			dest: distFolder,
			settings: {
				ext: '.html',
				layoutsFolder: './src/markup/layouts',
				partialsFolder: './src/markup/widgets'
			}
		};

		// Задача компиляции *.ejs файлов разработки
		// при смене конфигов
		lazyRequireTask('ejs:components', './tasks/ejs', ( Object.assign( {}, ejsTaskMainData, {
			isComponents: true,
			watch: [
				'./src/markup/configs/**/*.ejs',
				'./src/markup/controls/**/*.ejs'
			]
		}) ));

		// Задача компиляции *.ejs файлов разработки
		// при смене самих въюх
		lazyRequireTask('ejs:views', './tasks/ejs', ( Object.assign( {}, ejsTaskMainData, {
			filterNewer: true,
			watch: [
				'./src/markup/!(_*)*.ejs'
			]
		}) ));

		// Задача компиляции *.ejs файлов разработки
		// при смене компонентов
		lazyRequireTask('ejs:markup', './tasks/ejs', ( Object.assign( {}, ejsTaskMainData, {
			watch: [
				'./src/markup/_config.ejs',
				'./src/markup/layouts/**/*.ejs',
				'./src/markup/widgets/**/*.ejs'
			]
		}) ));

		// Задача компиляции *.ejs файлов hidden
		lazyRequireTask('ejs:hidden', './tasks/ejs', ( Object.assign( {}, ejsTaskMainData, {
			browserSyncReload: false,
			src: './src/markup/hidden/**/*.ejs',
			dest: `${ distFolder }/hidden`,
			watch: [
				'./src/markup/_config.ejs',
				'./src/markup/hidden/**/*.ejs',
				'./src/markup/layouts/**/*.ejs',
			],
			settings: {
				ext: '.php',
				layoutsFolder: './src/markup/layouts',
				partialsFolder: './src/markup/widgets'
			}
		}) ));

		// Копирование ejs шаблонов
		lazyRequireTask('ejs:templates', './tasks/transfer', {
			notify: true,
			filter: 'newer',
			src: './src/markup/widgets/_templates/**/*.ejs',
			dest: `${ mediaFolder }/templates`,
			watch: './src/markup/widgets/_templates/**/*.ejs'
		});


	// Sass
	// =================================
		// Задача компиляции *.scss файлов разработки
		lazyRequireTask('sass:main', './tasks/sass', {
			notify: notifyOnDone,
			minify: minifyCSS,
			sourcemaps: sourcemapsCSS,
			filterNewer: true,
			src: './src/sass/!(_*)*.scss',
			dest: `${mediaFolder}/css`,
			watch:  [
				'./src/sass/!(_*)*.scss'
			]
		});

		// Задача компиляции подлючаемых частей для *.scss файлов разработки
		lazyRequireTask('sass:files', './tasks/sass', {
			notify: notifyOnDone,
			minify: minifyCSS,
			sourcemaps: sourcemapsCSS,
			src: './src/sass/*.scss',
			dest: `${mediaFolder}/css`,
			watch:  [
				'./src/sass/_config.scss',
				'./src/sass/_custom-config.scss',
				'./src/sass/_functions/*.scss',
				'./src/sass/_mixins/*.scss',
				'./src/sass/_partials/*.scss'
			]
		});

		// Задача компиляции "ручних" критикал стилей
		lazyRequireTask('sass:criticals', './tasks/sass', {
			notify: notifyOnDone,
			minify: true,
			sourcemaps: false,
			changeExt: '.ejs',
			src: './src/sass/_criticals/*.scss',
			dest: './src/markup/widgets/criticals-css',
			watch: './src/sass/_criticals/*.scss'
		});

		let srcSassFolders = configJson.watchForFolders.sass || [];
		srcSassFolders.forEach( (folder, i) => {
			srcSassFolders[i] = `./src/sass/${folder}/**/*.scss`;
		});
		let watchSassFolders = srcSassFolders.concat(['./src/sass/_libs/**/*.scss']);

		// Задача компиляции дополнительных библиотек
		lazyRequireTask('sass:folders', './tasks/sass', {
			notify: notifyOnDone,
			minify: minifyCSS,
			sourcemaps: sourcemapsCSS,
			base: './src/sass/',
			src: srcSassFolders,
			dest: `${mediaFolder}/css/`,
			watch: watchSassFolders
		});


	// JS
	// =================================
		// Задача компиляции *.js файлов разработки
		lazyRequireTask('js:main', './tasks/js', {
			notify: notifyOnDone,
			minify: minifyJS,
			es6: true,
			sourcemaps: sourcemapsJS,
			filterNewer: true,
			src: './src/js/*.js',
			dest: `${mediaFolder}/js`,
			watch: [
				'./src/js/*.js'
			]
		});
		// Компиляции подлючаемых частей для *.js файлов разработки
		lazyRequireTask('js:files', './tasks/js', {
			notify: notifyOnDone,
			minify: minifyJS,
			sourcemaps: sourcemapsJS,
			es6: true,
			src: './src/js/*.js',
			dest: `${mediaFolder}/js`,
			watch: [
				'./src/js/_whtml/**/*.js',
				'./src/js/_jquery-fn/**/*.js',
				'./src/js/_partials/**/*.js'
			]
		});

		// Компиляции "ручних" критикал скриптов
		lazyRequireTask('js:criticals', './tasks/js', {
			notify: notifyOnDone,
			minify: true,
			sourcemaps: false,
			es6: true,
			changeExt: '.ejs',
			src: './src/js/_criticals/*.js',
			dest: './src/markup/widgets/criticals-js',
			watch: [
				'./src/js/_criticals/*.js'
			]
		});

		let srcJsFolders = configJson.watchForFolders.js || [];
		srcJsFolders.forEach( (folder, i) => {
			srcJsFolders[i] = `./src/js/${folder}/**/*.js`;
		});
		let watchJsFolders = srcJsFolders.concat(['./src/js/_libs/**/*.js']);

		// Задача компиляции дополнительных библиотек
		lazyRequireTask('js:folders', './tasks/js', {
			notify: notifyOnDone,
			minify: minifyJS,
			sourcemaps: sourcemapsJS,
			es6: false,
			base: './src/js/',
			src: srcJsFolders,
			dest: `${mediaFolder}/js`,
			watch: watchJsFolders
		});


	// Modernizr
	// =================================
		lazyRequireTask('modernizr:add', './tasks/transfer', {
			notify: true,
			filter: 'newer',
			src: './tasks/modernizr-tests/**/*.js',
			dest: './node_modules/modernizr/feature-detects'
		});

		lazyRequireTask('modernizr:scan', './tasks/modernizr', {
			notify: true,
			minify: minifyJS,
			src: [
				`${mediaFolder}/js/*.js`,
				`!${mediaFolder}/js/modernizr.js`,
				`${mediaFolder}/css/*.css`,
				`!${mediaFolder}/css/fonts.woff.css`,
				`!${mediaFolder}/css/fonts.woff2.css`,
				'./src/markup/widgets/criticals-css/*.ejs',
				'./src/markup/widgets/criticals-js/*.ejs'
			],
			dest: `${mediaFolder}/js/vendor`
		});


	// Statics
	// =================================
		lazyRequireTask('statics', './tasks/transfer', {
			notify: notifyOnDone,
			filter: transferFilterMethod,
			imagemin: isOptimizeImages,
			src: './src/statics/**/*.*',
			dest: mediaFolder,
			watch: './src/statics/**/*.*'
		});


	// Backup Criticals
	// =================================
		lazyRequireTask('backup:criticals:css', './tasks/transfer', {
			notify: notifyOnDone,
			filter: 'changed',
			changeExt: '.css',
			src: './src/markup/widgets/criticals-css/*.ejs',
			dest: './backup_critical/css/',
			watch: './src/markup/widgets/criticals-css/*.ejs'
		});

		lazyRequireTask('backup:criticals:js', './tasks/transfer', {
			notify: notifyOnDone,
			filter: 'changed',
			changeExt: '.js',
			src: './src/markup/widgets/criticals-js/*.ejs',
			dest: './backup_critical/js/',
			watch: './src/markup/widgets/criticals-js/*.ejs'
		});

		lazyRequireTask('backup:criticals:cssbyviews', './tasks/transfer', {
			notify: notifyOnDone,
			filter: 'changed',
			changeExt: '.css',
			src: './src/markup/widgets/criticals-css-by-views/*.ejs',
			dest: './backup_critical/css-by-views/',
			watch: './src/markup/widgets/criticals-css-by-views/*.ejs'
		});


	// SvgSprite
	// =================================
		lazyRequireTask('svgsprite', './tasks/svgsprite', {
			notify: true,
			filter: false,
			gradientsFile: './src/markup/widgets/svg/gradients.ejs',
			listFile: './src/markup/widgets/svg/ids.ejs',
			src: './src/svgsprite/**/!(_)*.svg',
			dest: `${mediaFolder}/svg`,
			watch: [
				'./src/svgsprite/**/!(_)*.svg'
			],
		});



// Задачи документации
// ===========================================
	// SASS
	// =================================
		// Генерация документации scss файлов
		lazyRequireTask('docs:sass:doc', './tasks/sassdoc', {
			theme: './tasks/sassdoc-theme',
			dest: './docs/sass',
			groups: {
				'undefined': 'Без группы'
			},
			src: [
				'./src/sass/*.scss',
				'./src/sass/_**/**/*.scss',
				'!./src/sass/_libs/**/*.scss'
			]
		});

		// Компиляция главной страницы и туториалов для документации scss файлов
		lazyRequireTask('docs:sass:materials', './tasks/sassdoc-materials', {
			systemName: 'SASSDoc',
			tutorials: './tutorials/sass',
			dest: './docs/sass',
			blank: './tasks/sassdoc-theme/blank.js',
			index: './tutorials/sass-index.md'
		});

		// Трансфер дополнительных файлов.
		lazyRequireTask('docs:sass:assets', './tasks/transfer', {
			src: './tutorials/sass/assets/**/*.*',
			dest: './docs/sass/assets',
			filter: 'newer',
			notify: notifyOnDone,
			notifyIsShort: true
		});

		// Комплексная задача создания документации `*.scss` файлов
		gulp.task('docs:sass',
			gulp.series(
				'docs:sass:doc',
				'docs:sass:materials',
				'docs:sass:assets'
			)
		);


	// JS client
	// =================================
		// Очистка директории документации скриптов верстки
		lazyRequireTask('docs:clean:js', './tasks/clean', {
			src: './docs/js'
		});

		// Генерация документации скриптов верстки
		lazyRequireTask('docs:jsdoc:js', './tasks/jsdoc', {
			systemName: 'JSDoc',
			tutorials: './tutorials/js',
			dest: './docs/js',
			src: [
				'./tutorials/js-index.md',
				'./src/js/*.js',
				'./src/js/_**/**/*.js',
				'!./src/js/_libs/**/*.js'
			]
		});

		// Трансфер дополнительных файлов.
		lazyRequireTask('docs:jsdoc:js:assets', './tasks/transfer', {
			src: './tutorials/js/assets/**/*.*',
			dest: './docs/js/assets',
			filter: 'newer',
			notify: notifyOnDone,
			notifyIsShort: true
		});

		// Комплексная задача создания документации скриптов верстки
		gulp.task('docs:js',
			gulp.series(
				'docs:clean:js',
				'docs:jsdoc:js',
				'docs:jsdoc:js:assets'
			)
		);


	// HTML todo
	// =================================

		// Генерация документации с html страниц
		lazyRequireTask('docs:html', './tasks/htmltodo', {
			dest: `${todoPath}TODO.md`,
			src: [
				'./tophp.md',
				'./dist/**/!(ui)*.{html,php}'
			]
		});


	// ALL
	// =================================
		// Очистка очистка корневой директории
		lazyRequireTask('docs:clean', './tasks/clean', {
			src: './docs'
		});

		// Трансфер статических файлов для оформления документаций
		lazyRequireTask('docs:assets', './tasks/transfer', {
			src: './tasks/_docs-assets/**/*.*',
			dest: './docs/_assets',
			filter: 'newer',
			notify: notifyOnDone,
			notifyIsShort: true
		});


		// Генерация документаций по всем разделам
		gulp.task('docs', gulp.series(
			'docs:clean',
			'docs:assets',
			'docs:jsdoc:js',
			'docs:jsdoc:js:assets',
			'docs:html',
			'docs:sass'
		));




// Основные задачи
// =================================

	// Watch
	// =================================
		const watch = () => {
			autowatch(gulp, autoWatchSources);
		}


	// Clean
	// =================================
		lazyRequireTask('clean', './tasks/clean', {
			src: [
				distFolder,
				'./backup_critical',
				'./src/markup/widgets/criticals-js',
				'./src/markup/widgets/criticals-css'
			]
		});


	// Compile
	// =================================
		const compile = gulp.series(
			'sass:files',
			'svgsprite',
			'sass:criticals',
			'js:criticals',
			'js:files',
			'sass:folders',
			'js:folders',
			'statics',
			'modernizr:scan',
			'ejs:hidden',
			'ejs:components',
			'ejs:templates',
			'backup:criticals:css',
			'backup:criticals:js',
			'backup:criticals:cssbyviews'
		);


	// Rebuild
	// =================================
		gulp.task('rebuild',
			gulp.series(
				'clean',
				compile
			)
		);


	// Default
	// =================================
		gulp.task('default',
			gulp.parallel(watch, browserSyncTask)
		);


	// Build
	// =================================
		gulp.task('build',
			gulp.series(
				'rebuild',
				'default'
			)
		);


	// Start
	// =================================
		gulp.task('start',
			gulp.series(
				'modernizr:add',
				'build'
			)
		);



// Загрузка файлов на инкубатор
// =================================
	let inkubatorSeries = [
		'inkubator:upload'
	];

	lazyRequireTask('inkubator:upload', './tasks/upload', {
		src: `${distFolder}/**/*.*`,
		notify: notifyOnDone
	});

	let itemPreviewer = configJson.itemPreviewer;
	if (itemPreviewer.use) {
		lazyRequireTask('inkubator:previewer', './tasks/previewer', {
			src: `${distFolder}/*.html`,
			dest: `${distFolder}/demo-files/`,
			side: itemPreviewer.side,
			home: itemPreviewer.home,
			order: itemPreviewer.order,
			exclude: itemPreviewer.exclude
		});

		inkubatorSeries.unshift('inkubator:previewer');
	}

	gulp.task('inkubator',
		gulp.series(
			compile,
			gulp.series(...inkubatorSeries)
		)
	);

	gulp.task('inkubator:rebuild',
		gulp.series(
			'rebuild',
			gulp.series(...inkubatorSeries)
		)
	);
