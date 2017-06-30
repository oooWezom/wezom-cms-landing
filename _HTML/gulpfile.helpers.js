'use strict';


// Подключение
// =========================================

	// Data
		import configJson from './config.json';
		import l10n from './l10n.json';

	// NodeJS
		import fs from 'fs';
		import path from 'path';
		import chalk from 'chalk';
		import fileSave from 'file-save';
		import gulpLoadPlugins from 'gulp-load-plugins';
		const $ = gulpLoadPlugins();


// Определения
// =========================================

	// Константы
		const indent = '\t';
		const symbols = {
			done: chalk.white.bgGreen(' DONE '),
			info: chalk.white.bgBlue(' INFO '),
			get: chalk.white.bgMagenta('  GET '),
			error: chalk.white.bgRed('  ERR '),
			del: chalk.white.bgRed('  DEL '),
			warn: chalk.black.bgYellow(' WARN ')
		};

	// Шаблон вывода ошибки
	const errorMessageForNoty = [
		"plugin: <%= error.plugin %>",
		"message: <%= error.message %>",
		"fileName: <%= (error.fileName || 'не указан') %>",
		"-----------",
		`${ chalk.yellow(' fullErrorData:')}\n <%= ( JSON.stringify( ( error.showStack ? error : Object.assign( {}, error, {stack: 'hidden'}) ), null, '    ') ) %>`,
		"-----------",
		"\n"
	].join('\n');

// Приватные методы
// =========================================

		/**
		 * Составление лог уведомления
		 *
		 * @param 	{string|Array} message - контент уведомления
		 * @param 	{sring} [status] - ключ статуса, по которому будет выбран символ из справочника `symbols` для уведомления
		 * @return 	{sring}
		*/
			let _consoleMessage = (message, status) => {
				status = status in symbols ? `${symbols[status]}${indent}` : `${indent}`;
				let messageIs = typeof message;
				switch(messageIs) {
					case 'string':
						message = message.split('\n');
						if (typeof message === 'string') {
							console.log(9999);
							break;
						}
					case 'object':
						if (message !== null && message.length) {
							message = `${message.join(`\n${indent}`)}`;
							break;
						}
					default:
						message = 'Без описания';
				}
				return `${status}${message}`;
			}


/**
 * Набор параметров для конфигурации nodejs модулей
 * @class
 */
	class Helpers {

		/**
		 * Получение уведомления из справочника l10n
		 *
		 * @sourcecode	Helpers:__
		 * @param	{string} key - свойство l10n
		 * @param	{Array} replaceFromArray
		 * @return	{string}
		 */
			__(key, replaceFromArray) {
				if (typeof key === 'string') {
					if ( l10n.hasOwnProperty(key) ) {
						let msg = l10n[key];
						let split = false;

						if ( Array.isArray(msg) ) {
							msg = msg.join('~~~+~~~');
							split = true;
						}

						if (replaceFromArray) {
							replaceFromArray.forEach((entry) => {
								msg = msg.replace('%s', entry);
							})
						}
						if (split) {
							return msg.split('~~~+~~~')
						}
						return msg;
					}
					return _consoleMessage(chalk.yellow(l10n.selfHasNoProperty.replace(/%s/, key)), 'warn');
				}
				return _consoleMessage(chalk.yellow(`${l10n.isNotString}\n\t${l10n.whenCallingMethod.replace(/%s/, '__(key)')} - ${l10n.setCorrectDataType.toLowerCase()}`), 'warn');
			}

		/**
		 * Тест типа данных "string"
		 *
		 * @sourcecode	Helpers:isString
		 * @param	{string} sample - образец теста
		 * @return	{boolean}
		 */
			isString(sample) {
				return typeof sample === 'string';
			}

		/**
		 * Тест нужной длинны строки
		 *
		 * @sourcecode	Helpers:isString
		 * @param	{string} sample - образец строки
		 * @param	{number} [length=1] - длина, которой должна соответствовать или превыщать тестируемая строка
		 * @return	{boolean}
		 */
			isStringLength(sample, length=1) {
				if (this.isString(sample)) {
					return sample.length >= length;
				}
				return false;
			}

		/**
		 * Создание нового свойства, если не было определенно ранее
		 *
		 * @sourcecode	Helpers:setNewPropToObject
		 * @param	{Object} sampleObject
		 * @param	{string} propertyKey
		 * @param	{*} dataType
		*/
			setNewPropToObject(sampleObject, propertyKey, dataType) {
				if (!sampleObject.hasOwnProperty(propertyKey)) {
					sampleObject[propertyKey] = dataType;
				}
			}

		/**
		 * Запись файла
		 *
		 * @sourcecode	Helpers:writeFile
		 * @param	{string} filePath - путь к файлу
		 * @param	{string} fileContent - собержание файла
		*/
			writeFile(filePath, fileContent) {
				fileSave(filePath)
					.write(fileContent, 'utf-8', () => {
						this.logMsg(`writed file ${path.resolve(filePath)}`, 'done');
					})
					.error(() => {
						this.logError(`on write file ${path.resolve(filePath)}`)
					});
			}

		/**
		 * Вывод уведомления в консоль терминала
		 *
		 * @sourcecode	Helpers:logMsg
		 * @param	{string|Array} message - уведомление
		 * @param	{string} [messageStatus='info'] - статус уведомления
		*/
			logMsg(message, messageStatus='info') {
				if (configJson.gulp.log === false && messageStatus !== 'error') {
					return 'log disabled';
				}
				if (configJson.gulp.logGet === false && messageStatus == 'get') {
					return 'logGet disabled';
				}
				let chalkColor = 'blue';
				switch(messageStatus) {
					case 'done':
						chalkColor = 'green';
						break;
					case 'warn':
						chalkColor = 'yellow';
						break;
					case 'get':
						chalkColor = 'magenta';
						break;
					case 'del':
						chalkColor = 'red';
						break;
					case 'error':
						let useLogErrorMethod = this.__('useLogErrorMethod');
						console.log(chalk.yellow(_consoleMessage(useLogErrorMethod, 'warn')))
						chalkColor = 'red';
						break;
					default:
						messageStatus = 'info';
				}
				message = _consoleMessage(message, messageStatus);
				console.log(chalk[chalkColor](message));
			}

		/**
		 * Вывод уведомления при получении файла в пайпах
		 *
		 * @sourcecode	Helpers:logTaskGetMsg
		 * @param	{string}  taskName - уведомление
		 * @param	{string}  fileRelativePath - уведомление
		*/
			logTaskGetMsg( taskName, fileRelativePath ) {
				this.logMsg(`[${chalk.cyan(taskName)}] ${fileRelativePath}`, 'get');
			}

		/**
		 * Вывод уведомления в консоль терминала при ошибке. Если ошибка критическая - процесс будет остановлен
		 *
		 * @sourcecode	Helpers:logError
		 * @param	{string} message - уведомление
		 * @param	{boolean} [stopProcess=] - флаг остановки процесса
		*/
			logError(message, stopProcess) {
				message = _consoleMessage(message, 'error');
				console.log(chalk.red(message));
				if (stopProcess === true) {
					console.log(chalk.red(`${indent}Exit !!!`));
					process.exit(0);
				}
			}



		/**
		 * Настройка параметров для модуля `gulp-notify` для метода `onError`.
		 *
		 * @sourcecode	Helpers:gulpNotifyOnError
		 * @param	{string} taskName - имя задачи
		 * @return	{function} вызов модуля.
		 */
			gulpNotifyOnError(taskName) {
				return $.notify.onError({
					title: `Error ${taskName}`,
					message: errorMessageForNoty
				});
			}

			gulpFilterChanged(dest) {
				return $.changed(options.dest, {
					hasChanged: $.changed.compareSha1Digest
				});
			}

			gulpRenameExt(ext, rgx) {
				return $.if(
					(!!ext && rgx),
					$.rename((path) => {
						path.extname = ext;
					})
				)
			}

			gulpNotifyOnLast(taskName, receivedFilesList=[], time=2000) {
				return $.notify({
					onLast: true,
					time: time,
					title: () => {
						return `${taskName} (${receivedFilesList.length})`;
					},
					message: () => {
						return `\n\t${receivedFilesList.join('\n\t')}`;
					}
				});
			}

		/**
		 * Расширение системной конфигурация модуля `gulp-jsdoc` на основе пользовательских параметров.
		 *
		 * @sourcecode	Helpers:jsdoc3Config
		 * @param	{Object} options - Параметры задачи, из которой идет вызов данного метода
		 * @param	{Object} configObject - Параметры системной конфигурации модуля `gulp-jsdoc`
		*/
			jsdoc3Config(options, configObject) {
				configObject.opts = configObject.opts || {};
				configObject.opts.destination = options.dest;
				configObject.opts.tutorials = options.tutorials;
				configObject.templates.systemName = options.systemName || 'jsDoc Documentation';
			}
	}

module.exports = Helpers;
