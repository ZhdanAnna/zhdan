import UIKit
//+1 Напишите переменные и константы всех базовых типов данных: int, UInt, float, double, string. У чисел вывести их минимальные и максимальные значения. //
let integer1: Int
var integer2: Int
Int.max
Int.min
Int8.max
Int8.min
Int16.max
Int16.min
Int32.max
Int32.min
Int64.max
Int64.max

let UInt1: UInt
var UInt2: UInt
UInt.min
UInt.max
UInt8.max
UInt8.min
UInt16.max
UInt16.min
UInt32.max
UInt32.min
UInt64.max
UInt64.min

let float1: Float
var float2: Float
let maxFloat = Float.greatestFiniteMagnitude
let minFloat = Float.leastNormalMagnitude

let double1: Double
var double2: Double
let maxDouble = Double.greatestFiniteMagnitude
let minDouble = Double.leastNormalMagnitude

let string1: String
var string2: String

//2) Создайте список товаров с различными характеристиками (количество, название). Используйте typealias.
let good1: (Int, String) = (2, "apple")
let good2: (Int, String) = (3, "kiwi")
let good3: (Int, String) = (4, "pineapple")
let good4: (Int, String) = (5, "banana")

//+3) Напишите различные выражения с приведением типа.
let num1: Int = 3
let num2: Double = 4.34
let num3: Float = 3.45678
let sumABC = num1 + Int(num2) + Int(num3)
let subtractionABC = Double(num1) - num2 - Double(num3)
let multiplicationABC = Float(num1) * Float(num2) * num3


//+4) Вычисления с операторами (умножение, деление, сложение, вычитание). Результат вычислений должен выводиться в консоль в таком виде: «3 + 2 = 5».
let operand1: Int = 3
let operand2: Int = 2
let multiplication = operand1 * operand2
let division = Double(operand1) / Double(operand2)
let addition = operand1 + operand2
let subtraction = operand1 - operand2

print ("\(operand1) * \(operand2) = \(multiplication)")
print ("\(operand1) / \(operand2) = \(division)")
print ("\(operand1) + \(operand2) = \(addition)")
print("\(operand1) - \(operand2) = \(subtraction)")


// +5) Declare two constants a and b of type Double and assign both a value. Calculate the average of a and b and store the result in a constant named average.
let a: Double = 3.67
let b: Double = 7.98
let average = (a + b) / 2

//+6) A temperature expressed in °C can be converted to °F by multiplying by 1.8 then incrementing by 32. In this challenge, do the reverse: convert a temperature from °F to °C. Declare a constant named fahrenheit of type Double and assign it a value. Calculate the corresponding temperature in °C and store the result in a constant named celcius.
let fahrenheit: Double = 45.5
let celcius = (fahrenheit - 32) / 1.8

// +7) A circle is made up of 2𝜋 radians, corresponding with 360 degrees. Declare a constant degrees of type Double and assign it an initial value. Calculate the corresponding angle in radians and store the result in a constant named radians.
// 2 * pi =  360

let degrees: Double = 23
let pi: Double = 3.1415926
let radians: Double = (2 * pi) / 360
print(radians)
/*
+8) Declare four constants named x1, y1, x2 and y2 of type Double. These constants represent the 2-dimensional coordinates of two points. Calculate the distance between these two points and store the result in a constant named distance.
*/
let x1: Double = 1
let y1: Double = 1
let x2: Double = 2
let y2: Double = 3
let distance: Double = sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
/*
2. Строки
+1) Напишите с помощью строк своё резюме: имя, фамилия, возраст, где живете, хобби и т.п.
 */
let name: String = "Anna"
let sername: String = "Zhdan"
let age: String = "25"
let address: String = "Minsk"
let hobby: String = "Wakeboarding"
/*
+2) Соберите из этих строк 1 большую (вспоминаем интерполяцию) и выведите в консоль.
 */
print("\(name) \(sername) \(age) \(address) \(hobby)")
/*
+3) Напишите 10 строк, соберите их с помощью интерполяции и поставьте в нужных местах переносы на новую строку и пробелы (см. \n и \t).
*/
print("task3")
print("\n \(name) \t \(sername) \t \(age) \t \(address) \t \(hobby) \t \(name) \t \(sername) \t \(age) \t \(address) \t \(hobby)")
/*
+4) Разбейте собственное имя на символы, перенося каждую букву на новую строку.
*/
print("A\nn\nn\na" )
/*
+5) Создайте переменную типа Int и переменную типа String.
Тип Int преобразуйте в String и с помощью бинарного оператора сложите 2 переменные в одну строку.
*/
let age1: Int = 25
let resultTask5: String = "\(name)\t" + String(age1)
/*
+6) Create a string constant called firstName and initialize it to your first name. Also create a string constant called lastName and initialize it to your last name.
*/
let firstName: String = name
let lastName: String = sername
/*
+7) Create a string constant called fullName by adding the firstName and lastName constants together, separated by a space.
*/
let fullName: String = "\(firstName)" + " " + "\(lastName)"
/*
+8) Using interpolation, create a string constant called myDetails that uses the fullName constant to create a string introducing yourself. For example, my string would read: "Hello, my name is Matt Galloway.".
*/
let myDetails: String = "Hello, my name is \(fullName)."
/*
3. Tuples
 
+1) Создать кортеж с 3-5 значениями. Вывести их в консоль 3 способами.
*/
let infoAboutAnna: (String, String, Int, String, String) = ("Anna", "Zhdan", 25, "Minsk", "Wakeboarding")
let (ElementOne, ElementTwo, ElementThree, ElementFour, ElementFive) = infoAboutAnna

print(infoAboutAnna)
print("Hello, my name is \(infoAboutAnna.0), my sername is \(infoAboutAnna.1). I'm \(infoAboutAnna.2) years old. I live in \(infoAboutAnna.3). My hobby is \(infoAboutAnna.4)")
print("\(infoAboutAnna.0), \(infoAboutAnna.1), \(infoAboutAnna.2), \(infoAboutAnna.3), \(infoAboutAnna.4)")
print(ElementOne, ElementTwo, ElementThree, ElementFour, ElementFive)
/*
+2) Давайте представим, что мы сотрудник ГАИ и у нас есть какое-то количество нарушителей. Задача. Создать кортеж с тремя параметрами:
- первый - превышение скорости: количество пойманных;
- второй - вождение нетрезвым: количество пойманных;
- третий - бесправники: количество пойманных.
Распечатайте наших бедокуров в консоль через print().
*/
let bedoqureOne: (Int, Int, Int) = (overSpeed: 10, drunkDriving: 23, lawless: 56)
let (Element1, Element2, Element3) = bedoqureOne
print("overSpeed: \(bedoqureOne.0), drunkDriving: \(bedoqureOne.1), lawless: \(bedoqureOne.2)")
/*
+3) Выведите каждый параметр в консоль. Тремя способами.
*/
print(bedoqureOne.0)
print(Element2)
print(bedoqureOne.self.2)
/*
+4) Создайте второй кортеж — нашего напарника. Значения задайте другие.
*/
let bedoqureTwo: (Int, Int, Int) = (overSpeed: 34, drunkDriving: 14, lawless: 67)
/*
+5) Пусть напарники соревнуются: создайте третий кортеж, который содержит в себе разницу между первым и вторым.
*/
let differenceBetweenMates: (Int, Int, Int) = (overoverSpeed: bedoqureOne.0 - bedoqureTwo.0, drunkDriving: bedoqureOne.1 - bedoqureTwo.1, lawless: bedoqureOne.2 - bedoqureTwo.2)
/*
+6) Declare a constant tuple that contains three Int values followed by a Double. Use this to represent a date (month, day, year) followed by an average temperature for that date.
*/
let date: (Int, Int, Int) = (11, 08, 2022)
var temprature: Double = 23
/*
   + 7) Change the tuple to name the constituent components. Give them names related to the data that they contain: month, day, year and averageTemperature.
*/
var changedTuple: (Int, Int, Int, Double) = (day: date.0, month: date.1, year: date.2, averageTemperature: temprature)
/*
    +8) In one line, read the day and average temperature values into two constants. You’ll need to employ the underscore to ignore the month and year.
*/
print("Day is \(changedTuple.0), _, _, averageTemperature is \(changedTuple.3)")
/*
    +9) Up until now, you’ve only seen constant tuples. But you can create variable tuples, too. Change the tuple you created in the exercises above to a variable by using var instead of let. Now change the average temperature to a new value.
*/
temprature = 21.5
changedTuple = (day: date.0, month: date.1, year: date.2, averageTemperature: temprature)
print(changedTuple)
