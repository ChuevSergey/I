﻿#language: ru

@tree
@ExportScenarios

Функционал: Экспорт основных данных для тестирования отчета Остатки на складах

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Я загружаю основные данные для тестирования отчета Остатки на складах и документа Продажи

	// Справочник.Валюты

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |
	
	// Константа.ВалютаУчета

	И я перезаполняю константу "ВалютаУчета" значением "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5"

	// Константа.УчетПоСкладам

	И я перезаполняю константу "УчетПоСкладам" значением "True"

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000001' | 'Розничная'    |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'    | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'        | 'Улица'       | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта' | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000011' | 'ЭлектроБыт ЗАО'  | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | ''       | 'Россия' | 'Екатеринбург' | 'Лесная'      | '12'  | '+7(999)623-568'   | 'mak@jmail.ru'     | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Мякиниа С. Р.'  | 56.869649 | 60.547212 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a8' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000007' | 'Попов Б.В. ИЧП ' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '129345' | 'Россия' | 'Москва'       | 'Менжинского' | '18'  | '+7(999)456-87-68' | 'popov@jmail.ru'   | '+7(999)456-87-68' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Попов Б. В.'    | 55.86864  | 37.67405  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'      | ''                                                                   | ''       | ''       | ''             | ''            | ''    | ''                 | ''                 | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'      | ''                                                                   | ''       | ''       | ''             | ''            | ''    | ''                 | ''                 | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"'       | 'True'         |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | 'False'           | '000000003' | 'Урал'         |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'False'           | '000000003' | 'Средний'      | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'False'           | '000000002' | 'Большой'      | 'False'          |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование'  | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                     | 'Штрихкод'      | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7536' | 'False'     | '000000040' | 'Sony К3456P'   | 'Н657'    | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | ''             | 'Enum.ВидыТоваров.Товар'  | '8593539095330' |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'     | '000000018' | 'Bosch15'       | 'Ч-0002'  | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | ''             | 'Enum.ВидыТоваров.Товар'  | ''              |          |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'     | '000000037' | 'Доставка'      | ''        | ''                                                                       | ''             | 'Enum.ВидыТоваров.Услуга' | ''              |          |
		| 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7536' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000039' | 'Телевизоры'    | ''        | ''                                                                       | ''             | ''                        | ''              | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000013' | 'Чайники'       | ''        | ''                                                                       | ''             | ''                        | ''              | ''       |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'           | ''                                                                  | 'True'      | '000000036' | 'Услуги'        | ''        | ''                                                                       | ''             | ''                        | ''              | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'False'           | ''                                                                  | 'True'      | '000000012' | 'Электротовары' | ''        | ''                                                                       | ''             | ''                        | ''              | ''       |

	И я проверяю или создаю для регистра сведений "ЦеныТоваров" записи:
		| 'Период'             | 'Товар'                                                             | 'ВидЦен'                                                             | 'Цена' |
		| '06.04.2016 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 10000  |

	// Документ.ОперацияПоУчетуТоваров

	И я проверяю или создаю для документа "ОперацияПоУчетуТоваров" объекты:
		| 'Ссылка'                                                                          | 'ПометкаУдаления' | 'Номер'     | 'Дата'               | 'Проведен' | 'СодержаниеОперации'                                                      | 'Организация'                                                            |
		| 'e1cib/data/Документ.ОперацияПоУчетуТоваров?ref=8ca7000d8843cd1b11dc99ca10d37aab' | 'False'           | '000000001' | '05.09.2020 1:11:26' | 'False'    | 'Корректировка количества товара на складе по результатам инвентаризации' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |

	// Создание записей для регистра накоплений ТоварныеЗапасы по документу ОперацияПоУчетуТоваров

	И я проверяю или создаю для регистра накоплений "ТоварныеЗапасы" записи:
		| 'Период'              | 'Регистратор'                                                                     | 'НомерСтроки' | 'Активность' | 'ВидДвижения' | 'Товар'                                                             | 'Склад'                                                             | 'Количество' |
		| '16.03.2020 1:11:26'  | 'e1cib/data/Документ.ОперацияПоУчетуТоваров?ref=8ca7000d8843cd1b11dc99ca10d37aab' | 1             | 'True'       | 'Приход'      | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 4            |
		
	// Документ.ПриходТовара

	И я проверяю или создаю для документа "ПриходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Поставщик'                                                              | 'Склад'                                                             | 'Валюта'                                                            | 'Организация'                                                            |
		| 'e1cib/data/Документ.ПриходТовара?ref=bbf30050ba5c887711e1fe6f82f0356d' | 'False'           | '000000051' | '14.12.2020 20:28:00' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.ПриходТовара?ref=bbf30050ba5c887711e1fe6f82f0356d' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 4500   | 3            | 13500   |

	// Документ.РасходТовара

	И я проверяю или создаю для документа "РасходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта'                                                            | 'ВидЦен'                                                             | 'ОбоснованиеОтгрузки' | 'Организация'                                                            |
		| 'e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fdc' | 'False'           | '000000014' | '13.12.2020 22:14:50' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a8' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' |
		| 'e1cib/data/Документ.РасходТовара?ref=a1aa086266c6d20f11e70b13d9094c69' | 'False'           | '000000102' | '16.12.2020 8:28:01'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a8' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fdc' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 2700   | 3            | 8100    |
		| 'e1cib/data/Документ.РасходТовара?ref=a1aa086266c6d20f11e70b13d9094c69' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 10000  | 1            | 10000   |
		| 'e1cib/data/Документ.РасходТовара?ref=a1aa086266c6d20f11e70b13d9094c69' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 300    | 1            | 300     |

	// проведем загруженные документы

	И я выполняю код встроенного языка на сервере
		| 'Документы.ПриходТовара.НайтиПоНомеру("000000051").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);          '|
		| 'Документы.РасходТовара.НайтиПоНомеру("000000014").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);          '|
		| 'Документы.РасходТовара.НайтиПоНомеру("000000102").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);          '|
	