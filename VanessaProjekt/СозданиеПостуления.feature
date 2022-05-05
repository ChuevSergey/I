﻿#language: ru

@tree

Функционал: Создание документа Поступления товаров

Как Менеджер по закупкам я хочу
Создание документа поступления товаров
чтобы поставить товар на учет
Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Создание документа поступления товаров
И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров'
Тогда открылось окно 'Поступления товаров'
И в таблице "Список" я разворачиваю строку:
	| 'Дата'        |
	| 'Мосхлеб ОАО' |
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Поступление товара (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
И из выпадающего списка с именем "Поставщик" я выбираю точное значение 'Магазин "Бытовая техника"'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Торт '
И я перехожу к следующему реквизиту
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '12,00'
И в таблице "Товары" я завершаю редактирование строки
* Проверка заполнения таблицы
	Тогда таблица "Товары" стала равной:
		| 'N' | 'Товар' | 'Цена'   | 'Артикул' | 'Количество' | 'Сумма'    |
		| '1' | 'Торт ' | '150,00' | 'Т78'     | '12,00'      | '1 800,00' |
	
	
И я нажимаю на кнопку "Записать"
* Номер
    И я запоминаю значение поля "Номер" как "$Номер$"

И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Поступление товара (создание) *' в течение 20 секунд
* Проверка создания документа
И таблица "Список" содержит строки:
    | 'Номер' |
    | '$Номер$' |


Сценарий: Проверка наличия в справочнике Номенклатуры Торт
И В командном интерфейсе я выбираю 'Продажи' 'Товары'
Тогда открылось окно 'Товары'
И я нажимаю на кнопку с именем 'ФормаСписок'
И таблица "Список" содержит строки :
    | 'Наименование' |
    | 'Торт' |

