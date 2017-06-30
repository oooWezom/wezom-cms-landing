'use strict';

// Подключение
// =================================
	// Данные
	import configJson from '../config.json';
	import l10n from '../l10n.json';

	// NodeJS
	import del from 'del';
	import path from 'path';

	// Хелперы
	import helpersClass from '../gulpfile.helpers.js';
	const Helpers = new helpersClass(l10n);
	const __ = Helpers.__;



/**
 * Модуль очистки (удаления) указанной директории или файлов.
 * Для экспорта модуля в задачу используеться метод {@link module:gulpfile~lazyRequireTask|lazyRequireTask}.
 * В параметрах задачи ( `src` ) необходимо указать путь к директории или файлам которые нужно удалить.
 * - При успешном выполнении вы получите лог уведомление в терминале (если не выключен флаг `log`). Если указанный источник не будет обнаружен - вы получите сообщение `[URL] - not exist`
 * - При ошибке удаления - в терминале будет уведомление, с описанием ошибки. Такой результат будет считаться критическим поэтому node процесс будет остановлен.
 *
 * @param	{Object} options - передаваемые параметры
 * @return	{Function}
*/
module.exports = function(options) {


	return function(cb) {
		// возвращаем Promise
		return del(options.src)
			// после выполнения
			.then(
				paths => {
					// если log не отключен
					if (options.log !== false) {
						// если источник не найден заменяем текст
						if (paths && paths.length === 0) {
							paths = __('pathNotExistGoNext', [options.src]);
						}
						// выводим уведомление
						Helpers.logMsg(paths, 'del');
					}
				},

				error => {
					// выводим ошибку (критическую)
					Helpers.logError(error, true);
				}
			);
	};
};
