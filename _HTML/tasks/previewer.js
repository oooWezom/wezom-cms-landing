'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';

	// NodeJS
	import gulp from 'gulp4';
	import through2 from 'through2';
	const throughObj = through2.obj;
	import gulpLoadPlugins from 'gulp-load-plugins';
	const $ = gulpLoadPlugins();

	// Хелперы
	import helpersClass from '../gulpfile.helpers.js';
	const Helpers = new helpersClass(l10n);
	const __ = Helpers.__;



/**
 * Модуль составления данных для превьювера инкубатора
 *
 * @param		{Object}		options - передаваемые параметры
 * @return		{Function}
*/
module.exports = function(options) {

	let compiledFiles = [];
	let taskName = options.taskName;

	let indexFile = options.home || 'index';
	let previewerSide = (options.side === 'right') ? 'right' : 'left';

	let excludeFiles = options.exclude || [];
	let viewsOrder = options.order || [];
	if (!viewsOrder.length) {
		viewsOrder.push(indexFile);
	}

	// возврашаем функцию для задачи
	return function(cb) {

		// task
		// ========

			return gulp.src(options.src)
				.pipe(throughObj(
					(file, enc, callback) => {
						let fileName = file.stem;
						if (excludeFiles.indexOf(fileName) >= 0) {
							return callback();
						}
						let fileData = {
							alias: fileName
						};
						let markup = file.contents.toString();
						markup.replace(/var\s+inkubatorPreviewerTitle\s*=\s*\'.+\'/, (src) => {
							src.replace(/\'.+\'/, (title) => {
								fileData.title = title.slice(1,-1);
							})
						});
						compiledFiles.push(fileData);
						return callback();
					},
					(callback) => {
						viewsOrder.reverse();
						viewsOrder.forEach((orderAias) => {
							for (var i = 0; i < compiledFiles.length; i++) {
								let view = compiledFiles[i];
								let alias = view.alias;
								if (alias == orderAias) {
									compiledFiles.splice(i, 1);
									compiledFiles.unshift(view);
									break;
								}
							};
						});

						let objData = {
							list: compiledFiles,
							home: indexFile,
							side: previewerSide
						}

						let data = `var inkubatorPreviewerData = ${JSON.stringify(objData, null, '\t')};`;
						Helpers.writeFile(`${options.dest}/inkubator-previewer-data.js`, data);
						return callback();
					}
				)).on('error', Helpers.gulpNotifyOnError(taskName));
	};
};
