/*:
 ## Задание 3
 3.1 Объявите свойство dayOfBirth и присвойте ему дату вашего рождения
 
 3.2 Объявите свойство monthOfBirth и присвойте ему месяц вашего рождения
 
 3.3 Объявите свойство yearOfBirth и присвойте ему год вашего рождения
 
 3.4 Необходимо рассчитать прожитое время с момента вашего рождения по текущую дату в разных единицах измерения 
 (в годах, в месяцах, в днях и в секундах). За текущее время возьмите сегодняшнюю дату и 0 часов 0 минут. Високосные года 
 учитывать не надо. Пусть среднее количество дней в месяце будет 30, а количество дней в году 360. Создайте все необходимые 
 свойства, которые вам понадобятся для решения данной задачи. Для расчета всех необходимых величин используйте только 
 арифметические операторы. Ни каких функций и условных операторов if-else использовать не нужно.
 
 3.5 Выведите результат вычислений на консоль в виде текста (n years, n months, n days and n seconds have passed since my birth). 
 Пример: если я родился 9 ноября 1980 года, а текущая дата 29.01.20, то результат будет следующим: 39 years, 470 months, 
 14120 days and 1219968000 seconds have passed since my birth.
 
 *3.6 Выведите на консоль сообщение о том в каком квартале вы родились. Для этого используйте операторы сравнения, что бы сравнить 
 номер месяца вашего рождения с одним из четырех кварталов. Например если номер месяца больше 0 и меньше или равно 3, то это будет 
 первый квартал. Для получения результата используйте условный оператор if
*/


var dayOfBirth = 22
var monthOfBirth = 3
var yearOfBirth = 2004

var nowDay = 14
var nowMonth = 3
var nowYear = 2026

var lifeSeconds = ((nowYear - yearOfBirth) * 360 - abs(nowMonth - monthOfBirth) * 30 - abs(nowDay - dayOfBirth)) * 24 * 3600
var lifeDays = lifeSeconds / (24 * 3600)
var lifeMonth = lifeDays / 30
var lifeYears = lifeMonth / 12


print("\(lifeYears) years, \(lifeMonth) months, \(lifeDays) days and \(lifeSeconds) seconds have passed since my birth")

var quarter = 0 
if(monthOfBirth > 0 && monthOfBirth <= 3) { quarter = 1 }
else if (monthOfBirth > 3 && monthOfBirth <= 6) { quarter = 2 }
else if (monthOfBirth > 6 && monthOfBirth <= 9) { quarter = 3 }
else { quarter = 4 }

print("I was born in \(quarter) quarter")