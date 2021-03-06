#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Заполнение шапки документа Заказ

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

@ТипШага: Шаги для документа Заказ
@Описание: Заполнение шапки документа Заказ
@ПримерИспользования: И заполняю шапку документа Заказ

Сценарий: Заполняю шапку документа Заказ
* Заполнение организации
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
* Заполнение покупателя
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'              |
		| 'Магазин "Мясная лавка"' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заказ (создание) *'
* Заполнение склада
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
* Заполнение вида цен
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Розничная'
* Заполнение валюты взаиморасчетов
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'EUR'
* Заполнение состояния заказа
	И я меняю значение переключателя с именем 'СостояниеЗаказа' на 'Открыт'
		