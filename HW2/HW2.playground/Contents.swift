import UIKit

/*
+ Task 1
 
Create a variable named counter and set it equal to 0.
Create a while loop with the condition counter < 10 which prints out counter is X (where X is replaced with counter value) and then increments counter by 1.
*/
var counter = 0
while counter < 10 {
    print("Counter is \(counter)")
    counter += 1
}
/*
+Task 2

Create a variable named counter and set it equal to 0. Create another variable named roll and set it equal to 0.
Create a repeat-while loop. Inside the loop, set roll equal to Int.random(in: 0...5) which means to pick a random number between 0 and 5.
Then increment counter by 1. Finally, print After X rolls, roll is Y where X is the value of counter and Y is the value of roll.
Set the loop condition such that the loop finishes when the first 0 is rolled.

*/
var counter1 = 0
var roll = 0
repeat {
    roll = Int.random(in: 0...5)
    print("\(counter1) is the value of counter and \(roll) is the value of roll")
    counter1 += 1
} while roll != 0

/*
+Task 3

Create a constant named range, and set it equal to a range starting at 1 and ending with 10 inclusive.
Write a for loop that iterates over this range and prints the square of each number.
*/
let range = 1...10
for number in range {
    print(number * number)
}
/*
+Task 4

Below you can see an example of for loop that iterates over only the even rows like so:
*/
var sum = 0
for row in 0..<8 {
   if row % 2 == 0 {
       continue
   }
   
   for column in 0..<8 {
       sum += row * column
   }
}
print(sum)

/*
Change this to use a where clause on the first for loop to skip even rows instead of using continue. Check that the sum is 448 as in the initial example.
*/
var sum1 = 0
for row in 0..<8 where row % 2 != 0 {
   for column in 0..<8 {
       sum1 += row * column
   }
}
print(sum1)

/*
Task 5

Print a table of the first 10 powers of 2
*/
let number = 2
var power = 0
var resultTask5 = 1
for _ in 0...10 {
    print("Число \(number) в степени \(power) = \(resultTask5)")
    resultTask5 *= number
    power += 1
}

/*
+Task 6

Given a number n, calculate the factorial of n.
Example: 4 factorial is equal to 1 * 2 * 3 * 4
*/
let n = 6
var factorial = 1
for i in 1...n {
    factorial *= i
}
print(factorial)

/*
+Task 7

Given a number n, calculate the n-th Fibonacci number. (Recall Fibonacci is 1, 1, 2, 3, 5, 8, 13, ... Start with 1 and 1 and add these values together to get the next value. The next value is the sum of the previous two. So the next value in this case is 8+13 = 21.)
*/
var firstValue = 1
var nextValue = 0
let count = 8
for _ in 0..<count {
    let result = firstValue + nextValue
    firstValue = nextValue
    nextValue = result
}
print(nextValue)

/*
+Task 8

Write a switch statement that takes an age as an integer and prints out the life stage related to that age. You can make up the life stages, or use my categorization as follows: 0-2 years, Infant; 3-12 years, Child; 13-19 years, Teenager; 20-39, Adult; 40-60, Middle aged; 61+, Elderly.
*/
switch age {
case 0...2:
    print("Infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle aged")
default:
    print("Elderly")
}
let age = 78

/*
+Task 9

Write a switch statement that takes a tuple containing a string and an integer. The string is a name, and the integer is an age. Use the same cases that you used in the previous exercise and let syntax to print out the name followed by the life stage. For example, for myself it would print out "Slava is an adult."
*/
let name = "Anna"
let ageOfPerson = 34
switch (name, ageOfPerson) {
case  (name, 0...2):
    print("\(name) is an infant")
case (name, 3...12):
    print("\(name) is a child")
case (name, 13...19):
    print("\(name) is a teenager")
case (name, 20...39):
    print("\(name) is an adult")
case (name, 40...60):
    print("\(name) is a middle aged")
default:
    print("\(name) is an elderly")
}

/*
+Task 10

Create a constant called myAge and set it to your age. Then, create a constant named isTeenager that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.
*/
let myAge = 13
let isTeenager = myAge >= 13 && myAge <= 19 ? true : false
print(isTeenager)

/*
+Task 11
Create another constant named theirAge and set it to my age, which is 30. Then, create a constant named bothTeenagers that uses Boolean logic to determine if both you and I are teenagers.
*/
let theirAge = 30
let bothTeenagers = isTeenager && theirAge >= 13 && theirAge <= 19 ? true : false
print(bothTeenagers)
/*
Task 12
Create a constant named reader and set it to your name as a string. Create a constant named author and set it to my name, Matt Galloway. Create a constant named authorIsReader that uses string equality to determine if reader and author are equal.
*/
let reader = "Anna"
let author = "Matt Galloway"
let authorIsReader = reader == author
/*
Task 13

Создайте массив "дни в месяцах":
Распечатайте элементы, содержащие количество дней в соответствующем месяце, используя цикл for и этот массив.
*/

let daysInMonth = ["January 31", "February 28", "March 31", "April 30", "May 31", "June 30", "July 31", "August 31", "September 30", "October 31", "November 30", "December 31"]
for month in daysInMonth {
    print(month)
}

/*
Task 14
Создать в if и отдельно в switch программу которая будет смотреть на возраст человека и говорить куда ему идти в школу, в садик, в универ, на работу или на пенсию и тд.
*/
let ageTask14If = 7

if ageTask14If > 3 && ageTask14If <= 6 {
    print("Go to kindergarten")
}
else if ageTask14If >= 7 && ageTask14If <= 17 {
    print("Go to school")
}
else if ageTask14If >= 18 && ageTask14If <= 22 {
    print("Go to university")
}
else if ageTask14If >= 23 && ageTask14If <= 58 {
    print("Go to work")
}
else {
    print("Go to retirement")
}

let ageTask14Switch = 78

switch ageTask14Switch {
case 3...6:
    print("Go to kindergarten")
case 7...17:
    print("Go to school")
case 18...22:
    print("Go to university")
case 23...58:
    print("Go to work")
default:
    print("Go to retirement")
}
/*
Task 15
В switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и высказывать через print мнение.
*/
let markIf  = 3

if markIf == 1 {
    print("Двоечник")
}
else if markIf == 2 {
    print("Двоечник")
}
else if markIf == 3 {
    print("Двоечник")
}
else if markIf == 4 {
    print("Двоечник")
}
else if markIf == 5 {
    print("Двоечник")
}
else if markIf == 6 {
    print("Хорошист")
}
else if markIf == 7 {
    print("Хорошист")
}
else if markIf == 8 {
    print("Хорошист")
}
else if markIf == 9 {
    print("Хорошист")
}
else if markIf == 10 {
    print("Отличник")
}
else if markIf == 11 {
    print("Отличник")
}
else {
    print("Отличник")
}

let markSwitch: Int = 12

switch markSwitch {
case 1, 2, 3, 4, 5:
    print("Двоечник")
case 6, 7, 8, 9:
    print("Хорошист")
default:
    print("Отличник")
}
