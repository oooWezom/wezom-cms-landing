'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';

	// NodeJS
	import gulp from 'gulp4';
	import path from 'path';
	import multipipe from 'multipipe';
	import Vinyl from 'vinyl';
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

	// todo
	let todoRegex = /<\!--[\s|\t]*\@todo[\s|\t]+(.)+-->/gi;
	let todoAll = /^\@all(\s|\t)+/gi;
	let todoStart = /<\!--/gi;
	let todoEnd = /-->/gi;
	let todoTag = /(\s|\t)*\@todo(\s|\t)+/gi;

	// vals
	let slashFrom = /\\/g,
		slashTo = '___SLASH___';

	let dotFrom = /\./g,
		dotTo = '___DOT___';


	// mtds

	let setKeyFromRelative = (filename) => {
		filename = path.normalize(filename);
		filename = filename.replace(slashFrom, slashTo);
		filename = filename.replace(dotFrom, dotTo);
		return filename;
	};

	let getLineNo = (content, offset) => {
		let lines = content.slice(0, offset);
		lines = lines.replace(/\n\n/g, '\n \n');
		lines = lines.split('\n');
		return lines.length;
	};

	let getTodoTags = (content, list) => {
		content.replace(todoRegex, (todo, group, offset) => {
			let lineno = getLineNo(content, offset);
			let task = todo.replace(todoStart, '');
			task = task.replace(todoEnd, '');
			task = task.replace(todoTag, '');
			task = task.replace(/\\n/g, '\n');
			task = task.replace(/\\t/g, '\t');
			list.push({
				lineno,
				task
			});
		});
	}


/**
 * Модуль компиляции `js` файлов.
 *
 * @param		{Object}		options - передаваемые параметры
 * @return		{Function}
*/
module.exports = function(options) {

	let taskName = options.taskName;
	let toPHP = '';
	let todoList = {};

	// возврашаем функцию для задачи
	return function(cb) {

		gulp.src(options.src)
			.pipe(throughObj(
				(file, enc, callback) => {
					let extname = file.extname;
					let content = file.contents.toString();
					if (extname === '.md') {
						toPHP = content;
						return callback();
					}

					let filename = file.relative;
					let filekey = setKeyFromRelative(filename);

					todoList[filekey] = {
						title: filename.replace(/\\/g, '/'),
						list: []
					};

					getTodoTags(content, todoList[filekey].list);
					callback();
				},

				(callback) => {
					let content = [];

					let anchors = ['## Пункты по страница:\n'];

					for (let key in todoList) {
						let block = todoList[key];
						if (block.list.length === 0) {
							continue;
						}
						let link = `- [${block.title}](#markdown-header-${block.title.replace(/\.|\//g, '')})`;
						anchors.push(link);
					}

					for (let key in todoList) {
						let block = todoList[key];
						if (block.list.length === 0) {
							continue;
						}
						content.push(`\n### ${block.title}\n`);

						content.push(`*lineno* | *all views* | *task*`);
						content.push(`--- | --- | ---`);

						block.list.forEach( (entry) => {
							let isAll = ' ';
							let task = entry.task.replace(todoAll, (str) => {
								isAll = '*true*';
								return '';
							});
							content.push(`\`${entry.lineno}\` | ${isAll} | ${task}`);
						});
					}

					if (content.length) {
						let result = ['# TODO list\n', '\n---\n', toPHP, '\n'].concat([anchors.join('\n')], content);
						result = result.join('\n');
						Helpers.writeFile(options.dest, result);
					} else {
						Helpers.logMsg( __('htmlToDoNoContent'), 'warn');
					}
				}
			))
			.on('error', Helpers.gulpNotifyOnError(taskName));

		cb();
	};
};
