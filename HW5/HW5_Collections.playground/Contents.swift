import UIKit

/*
+  1.
Define a function with input parameter: [String?] (array). Function should return an array of type [String]
For example:
input array: ["a", nil, "b"]
output array: ["a", "b"]
*/
func noneOptionalArray(_ array: [String?]) -> [String] {
    var newArray : [String] = []
    for element in array {
        if let element = element {
            newArray.append(element)
        }
    }
    return newArray
}

noneOptionalArray(["a", nil, "b"])
/*:
+2.
- Объявите функцию checkMinMax, которая принимает 2 именованых аргумента типа Double min и max и возвращает true если min < max
*/
func checkMinMax(min: Double, max: Double) -> Bool {
    min < max
}
checkMinMax(min: 3, max: 1)
checkMinMax(min: 2, max: 4)
/*
+3.
- Объявите функцию meanValue, которая принимает 2 неименованых аргумента типа Double и возвращает их среднее значение
*/
func meanValue(_ argument1: Double, _ argument2: Double) -> Double {
    return (argument1 + argument2) / 2
}
meanValue(4, 2)
meanValue(2.3, 1.56)
/*
+4.
- Объявите функцию meanValue, которая принимает 1 аргумент типа [Int] и возвращает среднее значение всех элементов массива
*/
func meanValue(_ value: [Int]) -> Double {
    var sumOfElements = 0
    for element in value {
        sumOfElements += element
    }
        return Double(sumOfElements) / Double(value.count)
}

meanValue([1,2,3,4])
meanValue([1,2,3,4,5,6])
/*
+5.
- Объявите функцию validPerson, которая принимает на вход имя, фамилию, возраст человека и возвращает строку "FirstName LastName, возраст N лет"

- При этом имя и фамилия должны быть длинее 1 символа, а возраст от 0 до 200 лет. Иначе выводится nil

- Напечатайте в консоль результат работы функции для. Ю Сянь, которому 20 лет и Иванова Сергея, которому 34 года
*/
func validPerson(_ name: String?, _ surname: String?, _ age: Int?) -> String? {
    var string = ""
    if let name = name,
       let surname = surname,
       let age = age {
        guard name.count > 1 && surname.count > 1 && age >= 0 && age <= 200 else {
            return nil
        }
        string = "\(name) \(surname), возраст \(age) лет"
    }
    return string
}
validPerson("Ю", "Сянь", 20)
validPerson("Сергей", "Иванов", 34)
/*
!!!!!!6. Сделайте сортировку пузырьком (bubble sort).
*/
func bubbleSort (arr: inout [Int]) -> [Int] {
    var swap = false
    for i in 0..<arr.count {
        for j in 0..<arr.count - i - 1 {
            if arr[j] > arr[j + 1] {
                let temp = arr [j]
                arr [j] = arr[j+1]
                arr[j+1] = temp
                swap = true
            }
        }
        if swap == false {
            break
        }
    }
    return arr
}

var myBuble = [4,7,9,3,1]
bubbleSort(arr: &myBuble)

/*
7.
Создайте словарь, где ключ — фамилия солдата, а значение — его приветствие.
В цикле пройдитесь по всем ключам и распечатайте фамилию каждого солдата.
Сделайте тоже самое со значениями и распечатайте приветствие каждого солдата.
Создайте логическую проверку: если ключ словаря — Иванов, то скажите, что это снайпер. Сделайте тоже самое со всеми ключами.
*/
let dictionary = ["Иванов": "Привет, я Иванов",
                  "Cидоров": "Привет, я Сидоров",
                  "Петров": "Привет, я Петров"]

for (key, _) in dictionary {
    print(key)
    if key == "Иванов" {
        print("Это снайпер")
    } else if key == "Cидоров" {
        print("Это связист")
    } else {
        print("Это разведчик")
    }
}

for (_, value) in dictionary {
    print(value)
}





