#language: ru

@tree
@БыстрыеПроверки

Функциональность: Проверка открытия форм справочников и документов

Как Тестировщик я хочу
проверить открытие всех форм справочников и документов 
чтобы убедиться в их работоспособности

Контекст:
	Дано я подключаю TestClient "Этот клиент" логин "Администратор" пароль ""
	И я закрываю все окна клиентского приложения

Сценарий: 0501_Открытие формы списка "Банки" 

	Дано Я открываю основную форму списка справочника "Банки"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Банки"
	И Я закрываю текущее окно

Сценарий: 0502_Открытие формы объекта "Банки"

	Дано Я открываю основную форму справочника "Банки"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Банки"
	И Я закрываю текущее окно

	
Сценарий: 0503_Открытие формы списка "Валюты" 

	Дано Я открываю основную форму списка справочника "Валюты"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Валюты"
	И Я закрываю текущее окно

Сценарий: 0504_Открытие формы объекта "Валюты"

	Дано Я открываю основную форму справочника "Валюты"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Валюты"
	И Я закрываю текущее окно

	
Сценарий: 0505_Открытие формы списка "ВидыЦен" 

	Дано Я открываю основную форму списка справочника "ВидыЦен"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ВидыЦен"
	И Я закрываю текущее окно

Сценарий: 0506_Открытие формы объекта "ВидыЦен"

	Дано Я открываю основную форму справочника "ВидыЦен"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ВидыЦен"
	И Я закрываю текущее окно

	
Сценарий: 0507_Открытие формы списка "Встречи" 

	Дано Я открываю основную форму списка справочника "Встречи"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Встречи"
	И Я закрываю текущее окно

Сценарий: 0508_Открытие формы объекта "Встречи"

	Дано Я открываю основную форму справочника "Встречи"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Встречи"
	И Я закрываю текущее окно

	
Сценарий: 0509_Открытие формы списка "ВходящиеПисьма" 

	Дано Я открываю основную форму списка справочника "ВходящиеПисьма"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ВходящиеПисьма"
	И Я закрываю текущее окно

Сценарий: 0510_Открытие формы объекта "ВходящиеПисьма"

	Дано Я открываю основную форму справочника "ВходящиеПисьма"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ВходящиеПисьма"
	И Я закрываю текущее окно

	
Сценарий: 0511_Открытие формы списка "ЗначенияХарактеристик" 

	Дано Я открываю основную форму списка справочника "ЗначенияХарактеристик"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ЗначенияХарактеристик"
	И Я закрываю текущее окно

Сценарий: 0512_Открытие формы объекта "ЗначенияХарактеристик"

	Дано Я открываю основную форму справочника "ЗначенияХарактеристик"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ЗначенияХарактеристик"
	И Я закрываю текущее окно

	
Сценарий: 0513_Открытие формы списка "ИсходящиеПисьма" 

	Дано Я открываю основную форму списка справочника "ИсходящиеПисьма"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ИсходящиеПисьма"
	И Я закрываю текущее окно

Сценарий: 0514_Открытие формы объекта "ИсходящиеПисьма"

	Дано Я открываю основную форму справочника "ИсходящиеПисьма"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ИсходящиеПисьма"
	И Я закрываю текущее окно

	
Сценарий: 0515_Открытие формы списка "Контрагенты" 

	Дано Я открываю основную форму списка справочника "Контрагенты"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Контрагенты"
	И Я закрываю текущее окно

Сценарий: 0516_Открытие формы объекта "Контрагенты"

	Дано Я открываю основную форму справочника "Контрагенты"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Контрагенты"
	И Я закрываю текущее окно

	
Сценарий: 0517_Открытие формы списка "МобильныеУстройства" 

	Дано Я открываю основную форму списка справочника "МобильныеУстройства"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника МобильныеУстройства"
	И Я закрываю текущее окно

Сценарий: 0518_Открытие формы объекта "МобильныеУстройства"

	Дано Я открываю основную форму справочника "МобильныеУстройства"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника МобильныеУстройства"
	И Я закрываю текущее окно

	
Сценарий: 0519_Открытие формы списка "НастройкиТорговогоОборудования" 

	Дано Я открываю основную форму списка справочника "НастройкиТорговогоОборудования"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника НастройкиТорговогоОборудования"
	И Я закрываю текущее окно

Сценарий: 0520_Открытие формы объекта "НастройкиТорговогоОборудования"

	Дано Я открываю основную форму справочника "НастройкиТорговогоОборудования"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника НастройкиТорговогоОборудования"
	И Я закрываю текущее окно

	
Сценарий: 0521_Открытие формы списка "Организации" 

	Дано Я открываю основную форму списка справочника "Организации"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Организации"
	И Я закрываю текущее окно

Сценарий: 0522_Открытие формы объекта "Организации"

	Дано Я открываю основную форму справочника "Организации"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Организации"
	И Я закрываю текущее окно

	
Сценарий: 0523_Открытие формы списка "Пользователи" 

	Дано Я открываю основную форму списка справочника "Пользователи"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Пользователи"
	И Я закрываю текущее окно

Сценарий: 0524_Открытие формы объекта "Пользователи"

	Дано Я открываю основную форму справочника "Пользователи"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Пользователи"
	И Я закрываю текущее окно

	
Сценарий: 0525_Открытие формы списка "ПочтовыеВложения" 

	Дано Я открываю основную форму списка справочника "ПочтовыеВложения"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ПочтовыеВложения"
	И Я закрываю текущее окно

Сценарий: 0526_Открытие формы объекта "ПочтовыеВложения"

	Дано Я открываю основную форму справочника "ПочтовыеВложения"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ПочтовыеВложения"
	И Я закрываю текущее окно

	
Сценарий: 0527_Открытие формы списка "РасчетныеСчета" 

	Дано Я открываю основную форму списка справочника "РасчетныеСчета"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника РасчетныеСчета"
	И Я закрываю текущее окно

Сценарий: 0528_Открытие формы объекта "РасчетныеСчета"

	Дано Я открываю основную форму справочника "РасчетныеСчета"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника РасчетныеСчета"
	И Я закрываю текущее окно

	
Сценарий: 0529_Открытие формы списка "РасчетныеСчетаКонтрагентов" 

	Дано Я открываю основную форму списка справочника "РасчетныеСчетаКонтрагентов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника РасчетныеСчетаКонтрагентов"
	И Я закрываю текущее окно

Сценарий: 0530_Открытие формы объекта "РасчетныеСчетаКонтрагентов"

	Дано Я открываю основную форму справочника "РасчетныеСчетаКонтрагентов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника РасчетныеСчетаКонтрагентов"
	И Я закрываю текущее окно

	
Сценарий: 0531_Открытие формы списка "Регионы" 

	Дано Я открываю основную форму списка справочника "Регионы"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Регионы"
	И Я закрываю текущее окно

Сценарий: 0532_Открытие формы объекта "Регионы"

	Дано Я открываю основную форму справочника "Регионы"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Регионы"
	И Я закрываю текущее окно

	
Сценарий: 0533_Открытие формы списка "Склады" 

	Дано Я открываю основную форму списка справочника "Склады"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Склады"
	И Я закрываю текущее окно

Сценарий: 0534_Открытие формы объекта "Склады"

	Дано Я открываю основную форму справочника "Склады"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Склады"
	И Я закрываю текущее окно

	
Сценарий: 0535_Открытие формы списка "Товары" 

	Дано Я открываю основную форму списка справочника "Товары"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Товары"
	И Я закрываю текущее окно

Сценарий: 0536_Открытие формы объекта "Товары"

	Дано Я открываю основную форму справочника "Товары"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Товары"
	И Я закрываю текущее окно

	
Сценарий: 0537_Открытие формы списка "ХранилищеВариантовОтчетов" 

	Дано Я открываю основную форму списка справочника "ХранилищеВариантовОтчетов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ХранилищеВариантовОтчетов"
	И Я закрываю текущее окно

Сценарий: 0538_Открытие формы объекта "ХранилищеВариантовОтчетов"

	Дано Я открываю основную форму справочника "ХранилищеВариантовОтчетов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ХранилищеВариантовОтчетов"
	И Я закрываю текущее окно

	
Сценарий: 0539_Открытие формы списка "ХранимыеФайлы" 

	Дано Я открываю основную форму списка справочника "ХранимыеФайлы"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ХранимыеФайлы"
	И Я закрываю текущее окно

Сценарий: 0540_Открытие формы объекта "ХранимыеФайлы"

	Дано Я открываю основную форму справочника "ХранимыеФайлы"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ХранимыеФайлы"
	И Я закрываю текущее окно

	
Сценарий: 0541_Открытие формы списка "Заказ" 

	Дано Я открываю основную форму списка документа "Заказ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа Заказ"
	И Я закрываю текущее окно

Сценарий: 0542_Открытие формы объекта "Заказ"

	Дано Я открываю основную форму документа "Заказ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа Заказ"
	И Я закрываю текущее окно

	
Сценарий: 0543_Открытие формы списка "ОперацияПоУчетуТоваров" 

	Дано Я открываю основную форму списка документа "ОперацияПоУчетуТоваров"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ОперацияПоУчетуТоваров"
	И Я закрываю текущее окно

Сценарий: 0544_Открытие формы объекта "ОперацияПоУчетуТоваров"

	Дано Я открываю основную форму документа "ОперацияПоУчетуТоваров"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ОперацияПоУчетуТоваров"
	И Я закрываю текущее окно

	
Сценарий: 0545_Открытие формы списка "Оплата" 

	Дано Я открываю основную форму списка документа "Оплата"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа Оплата"
	И Я закрываю текущее окно

Сценарий: 0546_Открытие формы объекта "Оплата"

	Дано Я открываю основную форму документа "Оплата"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа Оплата"
	И Я закрываю текущее окно

	
Сценарий: 0547_Открытие формы списка "ПоступлениеДенег" 

	Дано Я открываю основную форму списка документа "ПоступлениеДенег"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ПоступлениеДенег"
	И Я закрываю текущее окно

Сценарий: 0548_Открытие формы объекта "ПоступлениеДенег"

	Дано Я открываю основную форму документа "ПоступлениеДенег"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ПоступлениеДенег"
	И Я закрываю текущее окно

	
Сценарий: 0549_Открытие формы списка "ПриходТовара" 

	Дано Я открываю основную форму списка документа "ПриходТовара"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ПриходТовара"
	И Я закрываю текущее окно

Сценарий: 0550_Открытие формы объекта "ПриходТовара"

	Дано Я открываю основную форму документа "ПриходТовара"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ПриходТовара"
	И Я закрываю текущее окно

	
Сценарий: 0551_Открытие формы списка "РасходТовара" 

	Дано Я открываю основную форму списка документа "РасходТовара"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа РасходТовара"
	И Я закрываю текущее окно

Сценарий: 0552_Открытие формы объекта "РасходТовара"

	Дано Я открываю основную форму документа "РасходТовара"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа РасходТовара"
	И Я закрываю текущее окно
