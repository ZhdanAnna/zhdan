import UIKit
struct Car {
    let model: String
    let price: Double
    let year: Int
    
    func goForward() -> String {
        "car is going forward"
    }
    
    func description() -> String {
    "This is \(model) which costs \(price). The car was realesed in \(year)"
    }
}

struct CarOwner {
    let name: String
    let phoneNumber: Int
    let location: String
    let car: Car
    
    func describeCar() {
        print("Owner: \(name), phone number: \(phoneNumber), location: \(location), description: \(car.description())")
    }
}

let tesla = Car(model: "Tesla", price: 90000, year: 2020)
tesla.description()

let anna = CarOwner(name: "Anna", phoneNumber: 5762044, location: "Minsk", car: tesla)
anna.describeCar()


