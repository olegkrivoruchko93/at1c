﻿#Область ОбработчикиСобытийФормы

&НаСервере
Процедура иб_ПриСозданииНаСервереПосле(Отказ, СтандартнаяОбработка)
	ДБ_ИспользоватьПодсказкуDadata = ДБ_DaData.ИспользоватьПодсказкуDadata();
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

&НаКлиенте
Процедура ДБ_ФИОАвтоПодборПосле(Элемент, Текст, ДанныеВыбора, ПараметрыПолученияДанных, Ожидание, СтандартнаяОбработка)
	
	Если ДБ_ИспользоватьПодсказкуDadata Тогда
		
		Подсказки = ДБ_DaData.ПодсказкаПоФИО(Текст);
		
		Если Подсказки.suggestions.Количество() > 0 Тогда
			
			СтандартнаяОбработка = Ложь;
			
			ДанныеВыбора = Новый СписокЗначений;
			
			Для Каждого ФИО Из Подсказки.suggestions Цикл 
				ДанныеВыбора.Добавить(ФИО.unrestricted_value, ФИО.unrestricted_value);	
			КонецЦикла;
			
		КонецЕсли
		
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти