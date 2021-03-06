#language: ru

@tree
@ГенерацияДанных

Функционал: Создание элементов справочников

Как Тестировщик я хочу
сгенерировать дополнительные элементы справочников 
чтобы проверить работу системы при больших объемах данных

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: _0101 Подготовительный сценарий (Создание элементов справочников)
	* Загрузка основных данных
		Дано Экспорт основных данных	

Сценарий: _0102 Создание элементов справочника Номенклатура
	* Открываем справочник Номенклатура
		И В командном интерфейсе я выбираю 'Справочники' 'Номенклатура'
	* Инициируем переменные
		И Я запоминаю значение выражения '0' в переменную "Шаг"
	* Создаем в цикле элементы справочника Номенклатура
		И я делаю 10 раз

			И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
			И Я запоминаю значение выражения '"Товар " + $Шаг$' в переменную "Номенклатура"
			И Я запоминаю значение выражения '{"e1cib/data/Catalog.Items?ref="+StrReplace(New UUID, "-", "")}' в переменную "НоменклатураСсылка"
			И Я запоминаю значение выражения '{"e1cib/data/Document.PriceList?ref="+StrReplace(New UUID, "-", "")}' в переменную "ПрайсЛистСсылка"
			
			// Справочник.Items
			И я проверяю или создаю для справочника "Items" объекты:
				| 'Ref'                  | 'DeletionMark' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture' | 'Vendor'                                                           | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
				| '$НоменклатураСсылка$' | 'False'        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | ''             | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '12345'       | ''            | '$Номенклатура$' | ''                 | ''               | ''               |          |          |          |          |         |

		* Проверяем, что созданный элемент появился в списке Номенклатуры	
			И я нажимаю на кнопку с именем 'FormRefresh'
			И таблица "List" содержит строки:
				| 'Наименование'   |
				| '$Номенклатура$' |			