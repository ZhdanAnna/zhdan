import UIKit
/*
    1. Write a function named printFullName that takes two strings called firstName and lastName.
 The function should print out the full name defined as firstName + " " + lastName.
 Use it to print out your own full name.
*/
func printFullName(_ firstName: String, _ lastName: String) {
    let result = firstName + " " + lastName
    print(result)
}

printFullName("Anna", "Zhdan")

/*
    2. Создайте функцию, которая принимает параметры и вычисляет площадь круга.
*/
func areaOfCirlce(_ radius: Double, _ pi: Double = Double.pi) {
    let area = radius * radius * pi
    print(area)
}

areaOfCirlce(4)

/*
    3. Создайте функцию, которая принимает параметры и вычисляет расстояние между двумя точками.
*/
func distanceBetweenPoints(_ firstPoint: (Double, Double), _ secondPoint: (Double, Double)) {
    let hypotenuse = sqrt(pow((secondPoint.0 - firstPoint.0), 2) + pow((secondPoint.1 - firstPoint.1), 2))
    print(hypotenuse)
}

distanceBetweenPoints((2,3), (3,4))
/*
    4. Напишите функцию, которое считает факториал числа.
*/
func factorial(for number: Int) {
    var factorial = 1
    for i in 1...number {
        factorial *= i
    }
    print(factorial)
}

factorial(for: 4)
/*
    5. Напишите функцию, которая вычисляет N-ое число Фибоначчи
*/
func fibonacciNumber(for number: Int) {
var firstNumber = 1
var nextValue = 0
    for _ in 0..<number {
    let result = firstNumber + nextValue
    firstNumber = nextValue
    nextValue = result
}
print(nextValue)
}

fibonacciNumber(for: 4)
/*
    6. First, write the following function:

 func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool

 You’ll use this to determine if one number is divisible by another. It should return true when number is divisible by divisor.

 Hint: You can use the modulo (%) operator to help you out here.

 Next, write the main function:

 func isPrime(_ number: Int) -> Bool

 This should return true if number is prime, and false otherwise. A number is prime if it’s only divisible by 1 and itself.
 You should loop through the numbers from 1 to the number and find the number’s divisors.
 If it has any divisors other than 1 and itself, then the number isn’t prime. You’ll need to use the isNumberDivisible(_:by:) function you wrote earlier.
 Use this function to check the following cases:

    isPrime(6) // false
    isPrime(13) // true
    isPrime(8893) // true

 Hint 1: Numbers less than 0 should not be considered prime. Check for this case at the start of the function and return early if the number is less than 0.
 Hint 2: Use a for loop to find divisors. If you start at 2 and end before the number itself, then as soon as you find a divisor, you can return false.
*/

func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    return number % divisor == 0
}
    
isNumberDivisible(4, by: 2)
isNumberDivisible(3, by: 2)
isNumberDivisible(5, by: 1)

func isPrime(_ number: Int) -> Bool {
    var counter = 0
    guard number > 0 else {
        return false
    }
    for num in 1...number {
        if isNumberDivisible(number, by: num) == true {
            counter += 1
        }
        if counter > 2 {
            break
        }
    }
    return counter <= 2
}
isPrime(-1)
isPrime(6)
isPrime(13)
isPrime(8893)

