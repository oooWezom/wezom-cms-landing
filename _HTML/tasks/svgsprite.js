'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';

	// NodeJS
	import gulp from 'gulp4';
	import Vinyl from 'vinyl';
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
 * Модуль составление рабочих svg элементов из исходных
 *
 * @param		{Object}		options - передаваемые параметры
 * @return		{Function}
*/
module.exports = function(options) {

	// возврашаем функцию для задачи
	return function(cb) {

		// vars
		// ========
			let taskName = options.taskName;
			// список скомпилированных файлов
			let fileName = options.filename || 'sprite';
			// список скомпилированных файлов
			let compiledFiles = [];
			// разделение символов
			let separator = options.isProduction ? '' : '\n\n\t';
			// контент пользовательских svg
			let svgContents = [];
			let svgGradients = [];
			let svgList = [];
			// контент дефолтных svg
			let svgWrapper = (elementList, hide) => {
				//let xml = hide ? '' : '<?xml version="1.0" encoding="utf-8"?>'
				let xml = '';
				let style = hide ? ' style="height:0; width:0; visibility:hidden; position:absolute; top:0; left:0;"' : '';
				//let link = ' xmlns:xlink="http://www.w3.org/1999/xlink"';
				let link = '';
				return `${xml}<svg xmlns="http://www.w3.org/2000/svg"${link}${style}>${separator}${elementList.join(separator)}${separator}</svg>`;
			}

			// флаг фильтровки
			let isFilter = options.filter !== false;




		// streams
		// ========

			let streamSvgDefault = multipipe(
				$.svgmin({
					js2svg: {
						pretty: true
					}
				}),
				$.cheerio({
					run: function ($) {
						$('[fill]').removeAttr('fill');
						$('[stroke]').removeAttr('stroke');
						$('[style]').removeAttr('style');
					},
					parserOptions: {xmlMode: true}
				}),
				$.replace('&gt;', '>'),
				$.rename((path) => {
					path.dirname = '';
				}),
				throughObj(function(file, enc, callback) {
					svgList.push(file.stem);
					callback(null, file);
				}),
				$.svgSprite({
					mode: {
						symbol: {
							sprite: "../default.svg"
						}
					}
				}),
				$.replace('<?xml version="1.0" encoding="utf-8"?><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">', ''),
				$.replace('</svg>', '')
			).on('error',  Helpers.gulpNotifyOnError(taskName));

			let streamSvgCustom = multipipe(
				$.replace(/<?.*?>/, ''),
				$.replace(' xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"', ' '),
				$.replace(/<svg\s/, '<symbol '),
				$.replace(/<\/svg>/, '</symbol>'),
				$.replace('&gt;', '>'),
				$.replace(/<\/symbol>(\n|\s|\t)*<\/symbol>/, '</symbol>')
			).on('error',  Helpers.gulpNotifyOnError(taskName));





		// task
		// ========

			return gulp.src(options.src)
				.pipe($.if(
					(file) => {
						return file.relative.split('\\').shift() == 'simple-icons';
					},
					streamSvgDefault
				))
				.pipe($.if(
					(file) => {
						return file.relative.split('\\').shift() == 'from-parser-only';
					},
					streamSvgCustom
				))
				.pipe(throughObj(function(file, enc, callback) {
					let content = file.contents.toString();
					if (file.relative.split('\\').shift() === 'from-parser-only') {
						content = content.replace(/<(linear|radial)gradient\s(\S|\s)+<\/(linear|radial)gradient>/i, (gradient) => {
							svgGradients.push(gradient);
							return '';
						});
						content.replace(/\sid=\"(-|\w)+/i, (id) => {
							svgList.push(id.slice(5));
						});
					}

					svgContents.push(content);

					callback();

				}, function(callback) {
					if (svgContents.length) {
						let symbols = svgWrapper(svgContents);
						symbols = symbols.replace(/\n|\r/g, '');
						symbols = symbols.replace(/\s+\"/g, '"');
						let sprite = new Vinyl({
							path: `${fileName}.svg`,
							contents: new Buffer(symbols)
						});
						this.push(sprite);
					}

					let list = `<%\n\tSYSTEM.svgList = ['${svgList.join('\', \'')}'];\n-%>`;
					Helpers.writeFile(`${options.listFile}`, list);

					let gradients = '';
					if (svgGradients.length) {
						gradients = `<!-- svgsprite gradients -->\n${svgWrapper(svgGradients, true)}`;
					}
					Helpers.writeFile(`${options.gradientsFile}`, gradients);

					callback();
				}))

				.pipe(gulp.dest(options.dest))

				.on('data', (file) => {
					compiledFiles.push(file.relative)
				})

				.pipe(Helpers.gulpNotifyOnLast(taskName, compiledFiles, notifyTime));
	};
};
