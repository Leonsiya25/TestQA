﻿#language: ru

@tree
@Товары

Функционал: Проверка прикрепления картинки к Товару

Как Тестировщик я хочу
проверить возможность прикрепления картинки к Товару 
чтобы убедиться, что картинка прикрепляется и отображается корректно

Контекст:
	Дано я подключаю TestClient "Этот клиент" логин "Администратор" пароль ""
	И я закрываю все окна клиентского приложения

Сценарий: 0101_Проверка прикрепления картинки к Товару
	* Создаем новый товар
		И В командном интерфейсе я выбираю 'Товарные запасы' 'Товары'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
	* Заполняем основные реквизиты
		И в поле с именем 'Наименование' я ввожу текст 'Босоножки'
		И я меняю значение переключателя с именем 'Вид' на 'Товар'
	* Записываем товар
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
	* Добавляем картинку
		И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		И я буду выбирать внешний файл "$КаталогПроекта$\files\Босоножки.jpg"
		И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна '* (Файл)' в течение 20 секунд
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
	* Сделаем скриншот добавленной картинки
		@screenshot
		И я нажимаю на кнопку с именем 'ОбновитьКартинку'
	* Проверяем, что элемент справочника успешно сохранен после добавления картинки
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Босоножки (Товар)' в течение 20 секунд
				


