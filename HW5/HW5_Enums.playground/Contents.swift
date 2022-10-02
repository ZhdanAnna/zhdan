import UIKit
/*
 !!!1) Напишите как понимаете enumerations: что это такое, в чем их смысл, зачем нужны. Ваше личное мнение: как и где их можно использовать?
 
 Enumeration - это перечисление, которое имеет собственный тип данных, состоящее из набора кейсов. Enumeration повыщает безопастность кода. Enumeration используется, чтобы сгрупировать взаимосвязанные значения. [enum Gender { case male/case female }, [enum Currency { case dollar/ case euro/ case yen }] и т.д.
 
 +2) Написать по 5 enum разных типов + создать как можно больше своих enumerations. Главное, соблюдайте правила написания: понятность и заглавная буква в начале названия. Пропустите их через switch и выведите в консоль.
 */
enum Gender {
    case famale
    case male
}

let gender: Gender = .male

switch gender {
case .male:
    print("Gender is male")
case .famale:
    print("Gender is female")
}

enum Action {
    case left
    case right
    case straight
    case backward
}

let action: Action = .straight

switch action {
case .left:
    print("Go to the left!")
case .right:
    print("Go to the right!")
case .straight:
    print("Go to the straight!")
case .backward:
    print("Go to the backward!")
}

enum Currency {
    case usd
    case rub
    case eur
}

let currency: Currency = .eur

switch currency {
case .eur:
    print("You have 100 euros")
case .rub:
    print("You have 10 rubles")
case .usd:
    print("You have 0 dollars")
}


/*
 +3) Создайте своё резюме с использованием enum: имя, фамилия, возраст, профессия, навыки, образование, хобби и т.д. - пункты на ваше усмотрение.
 */
enum Resume: String {
    case name = "Anna"
    case surname = "Zhdan"
    case age = "25"
    case profession = "Dispatcher"
    case skills = "Сommunication"
    case education = "Economic engineer"
    case hobby = "Wakeboarding"
}

/*
 +4) Представьте, что вы попали на завод Apple. Вам принесли MacBook, Iphone, Ipad, Apple Watch и сказали: «Раскрась их в разные цвета. Джони Айву нужно вдохновение».
 Вы подвисли и начали раскрашивать. В итоге у вас получился красный MacBook, зеленый Ipad, розовый Iphone и буро-коричневый Apple Watch.
 Инструкция: для цветов задаём через enumeration. Наши девайсы располагаем в теле функции.
 Итог программы: «Айфон — розовый».
 */
enum Color: String {
    case pink
    case red
    case green
    case brown
}

func matchDeviceAndColor( _ device: String) -> String? {
    enum Devices: String {
        case iphone
        case macBook
        case ipad
        case appleWatch
    }
    guard let someDevice = Devices(rawValue: device) else {
        return nil
    }
    switch someDevice {
    case .iphone:
        return "\(someDevice.rawValue) - \(Color.pink.rawValue)"
    case .macBook:
        return "\(someDevice.rawValue) - \(Color.red.rawValue)"
    case .ipad:
        return "\(someDevice.rawValue) - \(Color.green.rawValue)"
    default:
        return "\(someDevice.rawValue) - \(Color.brown.rawValue)"
    }
}
matchDeviceAndColor("iphone")
matchDeviceAndColor("ipad")
matchDeviceAndColor("ha")
/*
 
 !!!!5) Declare a enumerate of type "Colors" and assign the enumerate members related values of type "String"
 declare a function that takes 2 arguments:
 1-st: of type "String"
 2-nd: of type "Colors" where does it have a default value
 if the name of the string matches the color that is in "Colors", then the string is converted to color, otherwise the default value is returned
 */
enum Colors: String {
    case blue
    case green
    case red
    case yellow
    case black
    case defaultColor = "orange"
}
func checkColor(_ firstColor: String, _ defaultColor: Colors) -> Colors {
    guard let color =  Colors(rawValue: firstColor) else {
        return defaultColor
    }
    return color
}

checkColor("blue", .blue)
checkColor("green", .black)
checkColor("black", .green)
checkColor("red", .red)

/*
 +Challenge 1:
 
 You have an enum of coins:
 
 enum Coin: Int {
 case penny = 1
 case nickel = 5
 case dime = 10
 case quarter = 25
 }
 
 and an array:
 
 let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]
 
 Write a function where you can pass in the array of coins, add up the value and then return the number of cents.
 */

enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}

let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]

func returnNumOfCents(coinPurse: [Coin]) -> Int {
    var result = 0
    for coin in coinPurse {
        result += coin.rawValue
    }
    return result
}
returnNumOfCents(coinPurse: coinPurse)
/*
 
 +Challenge 2:
 
 Here is an example of Direction enumeration:
 
 enum Direction {
 case north
 case south
 case east
 case west
 }
 
 Imagine starting a new level in a video game. The character makes a series of movements in the game. Calculate the position of the character on a top-down level map after making a set of movements:
 let movements: [Direction] = [.north, .north, .west, .south,.west, .south, .south, .east, .east, .south, .east]
 Hint: Use a tuple for the location:
 var location = (x: 0, y: 0)
 Hint: start position = (x: 0, y: 0)
 */
enum Direction {
    case north
    case south
    case east
    case west
}
func finalLocation(_ movements: [Direction]) -> (Int, Int) {
    var location = (x: 0, y: 0)
    for movement in movements {
        switch movement {
        case .north:
            location.y += 1
        case .south:
            location.y -= 1
        case .east:
            location.x += 1
        case .west:
            location.x -= 1
        }
    }
    return location
}

finalLocation([.north, .north, .west, .south,.west, .south, .south, .east, .east, .south, .east])

