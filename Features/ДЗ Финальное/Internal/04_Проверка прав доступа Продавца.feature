#language: ru

@tree
@Продавец

Функционал: Проверка прав доступа Продавца

Как Продавец я хочу
проверить работу с документами Продажа и Заказ 
чтобы убедиться в их корректной работе 

Сценарий: 0401_Подготовительный сценарий
	* Подключаем клиент тестирования под администратором
		Дано я подключаю TestClient "Этот клиент" логин "Администратор" пароль ""
		И я закрываю все окна клиентского приложения
	* Загружаем основные данные
		Дано Загрузка основных данных
	* Проводим загруженные документы
		И я выполняю код встроенного языка на сервере
				|'Документы.ПриходТовара.НайтиПоНомеру("000000054").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
	* Устанавливаем общие настройки
		И В командном интерфейсе я выбираю 'Предприятие' 'Общие настройки'
		И я устанавливаю флаг с именем 'УчетПоСкладам'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Общие настройки *' в течение 20 секунд	

Сценарий: 0402_Создание документа Продажа
	* Подключаем клиент тестирования
		Дано я подключаю TestClient "Продавец" логин "Продавец" пароль ""
	* Обходим ошибку при открытии ИБ под продавцом
		Если появилось окно с заголовком "1С:Предприятие" в течение 10 секунд Тогда
			И я нажимаю на кнопку 'OK'
		И я закрываю все окна клиентского приложения
	* Повторно подключаем клиент тестирования (из-за ошибки при входе он может быть отключен)
		Дано я подключаю TestClient "Продавец" логин "Продавец" пароль ""
	* Создаем документ Продажа
		И В командном интерфейсе я выбираю 'Продажи' 'Продажи'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		* Заполняем шапку документа
			И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
			И я нажимаю кнопку выбора у поля с именем "Покупатель"
			И я нажимаю на кнопку с именем 'ФормаСписок'
			И в таблице "Список" я перехожу к строке:
				| 'Наименование'       |
				| 'Магазин "Продукты"' |
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'				
			И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Мелкооптовая'
			И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
		* Заполняем табличную часть через подбор
			И в таблице "Товары" я нажимаю на кнопку с именем 'КомандаПодбор'
			И в таблице "СписокТоваров" я перехожу к строке:
				| 'Наименование' |
				| 'Продукты'     |
			И в таблице  "СписокТоваров" я перехожу на один уровень вниз
			И в таблице "СписокТоваров" я перехожу к строке:
				| 'Наименование' |
				| 'Колбаса'      |
			И в таблице "СписокТоваров" я выбираю текущую строку
			И в таблице "СписокТоваров" я перехожу к строке:
				| 'Наименование' |
				| 'Хлеб'         |
			И в таблице "СписокТоваров" я выбираю текущую строку
			И в таблице "СписокТоваров" я перехожу к строке:
				| 'Наименование' |
				| 'Торт '         |
			И в таблице "СписокТоваров" я выбираю текущую строку
			И я нажимаю на кнопку с именем 'ОК'
		* Заполняем цены и количество
			И в таблице "Товары" я перехожу к строке:
				| 'Товар'   |
				| 'Колбаса' |
			И в таблице "Товары" я выбираю текущую строку
			И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '330,00'
			И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2,00'
			И в таблице "Товары" я перехожу к следующей ячейке
			И в таблице 'Товары' поле 'Сумма' имеет значение '660,00'
			И в таблице "Товары" я завершаю редактирование строки

			И в таблице "Товары" я перехожу к строке:
				| 'Товар' |
				| 'Хлеб'  |
			И в таблице "Товары" я выбираю текущую строку
			И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '25,00'
			И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '6,00'
			И в таблице "Товары" я перехожу к следующей ячейке
			И в таблице 'Товары' поле 'Сумма' имеет значение '150,00'
			И в таблице "Товары" я завершаю редактирование строки

			И в таблице "Товары" я перехожу к строке:
				| 'Товар' |
				| 'Торт '  |
			И в таблице "Товары" я выбираю текущую строку
			И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '250,00'
			И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '20,00'
			И в таблице "Товары" я перехожу к следующей ячейке
			И в таблице 'Товары' поле 'Сумма' имеет значение '5 000,00'
			И в таблице "Товары" я завершаю редактирование строки
		* Записываем документ
			И я нажимаю на кнопку с именем 'ФормаЗаписать'
			И я запоминаю значение поля "Номер" как "Номер"
		* Проводим документ
			И я нажимаю на кнопку с именем 'ФормаПровести'
		* Проверяем, что документ успешно провелся (появились движения)
			И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр продаж'
			Тогда в таблице "Список" количество строк "больше" 0
		* Закрываем форму документа
			И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
			И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
			И я жду закрытия окна 'Продажа * от *' в течение 20 секунд
		* Проверяем, что документ успешно записался
			И в таблице "Список" я перехожу к строке
				| 'Номер'   | 'Организация'  | 'Покупатель'         | 'Валюта взаиморасчетов' | 'Вид цен'      |
				| '$Номер$' | 'ООО "Товары"' | 'Магазин "Продукты"' | 'Рубли'                 | 'Мелкооптовая' |
		* Отменяем проведение документа, чтобы не искажать остатки для последующих прогонов теста
			И я нажимаю на кнопку с именем 'ФормаОтменаПроведения'
			
Сценарий: 0403_Открытие существующего документа Заказ
	* Подключаем клиент тестирования
		Дано я подключаю TestClient "Продавец" логин "Продавец" пароль ""
	* Обходим ошибку при открытии ИБ под продавцом
		Если появилось окно с заголовком "1С:Предприятие" в течение 10 секунд Тогда
			И я нажимаю на кнопку 'OK'
		И я закрываю все окна клиентского приложения
	* Повторно подключаем клиент тестирования (из-за ошибки при входе он может быть отключен)
		Дано я подключаю TestClient "Продавец" логин "Продавец" пароль ""
	* Открываем документ Заказ
		И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
		И в таблице "Список" я перехожу к строке
			| 'Дата'               | 'Автор'         | 'Номер'     | 'Организация'  | 'Покупатель'         | 'Склад'   | 'Валюта взаиморасчетов' | 'Вид цен'      | 'Состояние заказа' |
			| '15.12.2020 2:00:00' | 'Администратор' | '000000021' | 'ООО "Товары"' | 'Магазин "Продукты"' | 'Большой' | 'Рубли'                 | 'Мелкооптовая' | 'Открыт'           |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ * от *'
		И Я закрываю окно 'Заказ * от *'
				
Сценарий: 0404_Невозможность создания нового документа Заказ
	* Подключаем клиент тестирования
		Дано я подключаю TestClient "Продавец" логин "Продавец" пароль ""
	* Обходим ошибку при открытии ИБ под продавцом
		Если появилось окно с заголовком "1С:Предприятие" в течение 10 секунд Тогда
			И я нажимаю на кнопку 'OK'
		И я закрываю все окна клиентского приложения
	* Повторно подключаем клиент тестирования (из-за ошибки при входе он может быть отключен)
		Дано я подключаю TestClient "Продавец" логин "Продавец" пароль ""
	* Создаем новый документ Заказ
		И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
		И Проверяю шаги на Исключение:
				|'И я нажимаю на кнопку с именем "ФормаСоздать"'|

Сценарий: 0405_Невозможность проведения документа Заказ
	* Подключаем клиент тестирования
		Дано я подключаю TestClient "Продавец" логин "Продавец" пароль ""
	* Обходим ошибку при открытии ИБ под продавцом
		Если появилось окно с заголовком "1С:Предприятие" в течение 10 секунд Тогда
			И я нажимаю на кнопку 'OK'
		И я закрываю все окна клиентского приложения
	* Повторно подключаем клиент тестирования (из-за ошибки при входе он может быть отключен)
		Дано я подключаю TestClient "Продавец" логин "Продавец" пароль ""
	* Проводим существующий документ Заказ
		И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
		И в таблице "Список" я перехожу к строке
			| 'Дата'               | 'Автор'         | 'Номер'     | 'Организация'  | 'Покупатель'         | 'Склад'   | 'Валюта взаиморасчетов' | 'Вид цен'      | 'Состояние заказа' |
			| '15.12.2020 2:00:00' | 'Администратор' | '000000021' | 'ООО "Товары"' | 'Магазин "Продукты"' | 'Большой' | 'Рубли'                 | 'Мелкооптовая' | 'Открыт'           |
		И в таблице "Список" я выбираю текущую строку
		И Проверяю шаги на Исключение:
				|'И я нажимаю на кнопку с именем "ФормаПровестиИЗакрыть"'|
		
					