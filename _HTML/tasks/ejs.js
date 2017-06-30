'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';

	// NodeJS
	import fs from 'fs';
	import gulp from 'gulp4';
	import multipipe from 'multipipe';
	import deepExtend from 'deep-extend';
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
	let htmlBeautifyOptions = configJson.gulpOptions.htmlBeautify;
	let notifyTime = configJson.gulpOptions.notify.time;

	// Инкубатор
		let isStamp = configJson.inkubatorConnect.timeStamp;
		let timeStamp = `?v${(new Date()).getTime()}`;

		// регулярки для установки версионирования
		// при загрузке на инкубатор

		let regexLINK = /<link\s.+(\.(css|png|ico|svg)[\'|\"]?)/gi;
		let regexSCRIPT = /<script\s.+(\.(js)[\'|\"]?)><\/script>/gi;
		let regexUSE = /<use\s.+(\.(svg)\#)/gi;
		let regexMETA = /<meta\s.+(\.(png|jpg)[\'|\"]?)/gi;
		let regexIMG = /<img\s.+(\.(jpg|png|gif|svg)[\'|\"]?)/gi;
		let regexURL = /url\(([^\)])+(\.(jpg|png|gif)[\'|\"]?\))/gi;

		// старые паттерны с похватом manifest.json и browserconfig.xml
		// let regexLINK = /<link\s.+(\.(css|png|ico|json|svg)[\'|\"]?)/gi;
		// let regexMETA = /<meta\s.+(\.(xml|png|jpg)[\'|\"]?)/gi;

		let insertStamp = (sample, regex, getGroup3) => {
			return sample.replace(regex, (str, group1, group2, group3) => {
				let entryGroup = getGroup3 ? group2 : group1;
				let extGroup = getGroup3 ? group3 : group2;
				let stamp = entryGroup.replace( extGroup, `${extGroup}${timeStamp}` );
				str = str.replace(entryGroup, stamp);
				return str;
			})
		};

		function insertStampInContent(file, enc, cb) {
			let markup = file.contents.toString();

			markup = insertStamp(markup, regexURL, true);
			markup = insertStamp(markup, regexLINK);
			markup = insertStamp(markup, regexSCRIPT);
			markup = insertStamp(markup, regexUSE);
			markup = insertStamp(markup, regexMETA);
			markup = insertStamp(markup, regexIMG);

			file.contents = new Buffer(markup);
			cb(null, file);
		}



/**
 * Модуль составления задачи для компиляции `ejs` файлов.
 *
 * @param		{Object}		options - передаваемые параметры
 * @return		{Function}
*/
module.exports = function(options) {

	let taskName = options.taskName;
	let compiledFiles = [];

	let newExtension = options.changeExt;
	let needToRename = !!newExtension;

	let ejsLocals = options.ejsLocals;
	let ejsSettings = options.ejsSettings;

	if (undefined === initedTasks[taskName]) {
		initedTasks[taskName] = true;

		let locals = options.locals || {};
			locals._Module_Helpers = Helpers;
			locals._Module_DeepExtend = deepExtend;
			locals.___ = __;

		let settings = options.settings || {};

		options.ejsLocals = locals;
		ejsLocals = options.ejsLocals;

		options.ejsSettings = settings;
		ejsSettings = options.ejsSettings;
	}

	ejsLocals.CONFIG_MTIME = `${fs.statSync(options.configFile).mtime}`;
	ejsLocals.COMPONENTS = !!options.isComponents;
	let nextFlag = !ejsLocals.COMPONENTS;

	// возврашаем функцию для задачи
	return function(cb) {

		return gulp.src(options.src)

			.pipe($.if(options.filterNewer,
				multipipe(
					$.rename((path) => {path.extname = newExtension || '.html';}),
					$.newer(options.dest),
					$.rename((path) => {path.extname = '.ejs';})
				)
			))

			.on('data', function(file) {
				if (nextFlag) {
					ejsLocals.COMPONENTS = false;
				}
				nextFlag = true;
				Helpers.logTaskGetMsg( taskName, file.relative );
			})

			.pipe(multipipe(

					$.ejs801s(ejsLocals, ejsSettings),

					$.if(options.beautify,
						$.htmlBeautify(htmlBeautifyOptions)
					),

					$.if( options.isProduction,
						multipipe(
							$.replace('\n\n<html', '\n<html'),
							$.replace('\n\n<head', '\n<head')
					 	)
					),

					$.if( (options.isTaskForInkubator),
						multipipe(
							$.replace(/<!--[\s|\t]+.*-->/g, ''),
							$.replace(/\n+/g, '\n')
						)
					),

					$.if( (options.isTaskForInkubator && isStamp),
						throughObj(insertStampInContent)
					)


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
