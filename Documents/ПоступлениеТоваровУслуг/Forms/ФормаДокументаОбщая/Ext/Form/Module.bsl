﻿
&НаКлиенте
Процедура ДБ_ПослеЗаписиПосле(ПараметрыЗаписи)
	
	Если НЕ ПустаяСтрока(Объект.НомерВходящегоДокумента) Тогда
		Если ДБ_ПроверкаДублей.ЕстьПохожееПоступление(Объект.Ссылка) Тогда
			ПоказатьОповещениеПользователя("Проверка", 
			НавигационнаяСсылка, 
			"Найдены документы с этим входящим номером по этому контрагенту",
			БиблиотекаКартинок.Информация,
			СтатусОповещенияПользователя.Важное);
		КонецЕсли;
	КонецЕсли;
	
КонецПроцедуры
