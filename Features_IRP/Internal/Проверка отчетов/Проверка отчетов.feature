﻿#language: ru

@tree
@Отчеты

Функционал: Тестирование отчетов

Как Тестировщик я хочу
протестировать отчеты 
чтобы проверить, что у пользователя не возникнет проблем

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: _0901 Подготовительный сценарий (тестирование отчетов)
	Когда экспорт основных данных
	Когда экспорт документов закупок
	И я выполняю код встроенного языка на сервере
		|'Документы.PurchaseOrder.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.PurchaseOrder.НайтиПоНомеру(2).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.PurchaseOrder.НайтиПоНомеру(3).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.PurchaseInvoice.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.PurchaseInvoice.НайтиПоНомеру(2).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
	
Сценарий: _0902 Проверка отчета Информация по номенклатуре
	И В командном интерфейсе я выбираю 'Отчеты' 'D0010 Информация по товарам'
	Тогда открылось окно 'D0010 Информация по товарам (Мой вариант)'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'FormGenerate'
	Дано Табличный документ "Result" равен макету "ИнформацияПоТоварам1" по шаблону
	И в табличном документе "Result" ячейка с адресом "R8C3" равна "787889899*" по шаблону

Сценарий: _0903 Проверка отчета по Закупкам
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Отчеты' 'D1001 Закупки'
	Тогда открылось окно 'D1001 Закупки'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'FormGenerate'
	И я жду когда в табличном документе "Result" заполнится ячейка "R21C4" в течение 30 секунд
//	И я жду, что в табличном документе "ИмяРеквизита" ячейка "АдресЯчейки" станет равна "ЗначениеЯчейки" в течение 20 секунд
	Дано Табличный документ "Result" равен макету "Закупки1" по шаблону
		
		
	
	
	

