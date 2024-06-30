//First Task
class Car {
    var brand: String
    var model: String
    var year: Int
    var maxSpeed: Int
    
    init(_ brand: String, _ model: String, _ year: Int, _ maxSpeed: Int) {
        self.brand = brand
        self.model = model
        self.year = year
        self.maxSpeed = maxSpeed
    }
    
    func printInf() {
        print("это \(brand) \(model) \(year) года выпуска с максимальной скоростью \(maxSpeed) км/ч")
    }
}

let carOne = Car("BMW", "m5", 2023, 305)
carOne.printInf()

//Second Task

class BMW: Car {
    var horsePower: Int
    
    init(_ horsePower: Int, _ brand: String, _ model: String, _ year: Int, _ maxSpeed: Int) {
        self.horsePower = horsePower
        super.init(brand, model, year, maxSpeed)
    }
    
    override func printInf() {
        print("это \(brand) \(model) \(year) года выпуска с мощностью \(horsePower) лошадиных сил и максимальной скоростью \(maxSpeed) км/ч")
    }
}

let bmwCar = BMW(500, "BMW", "m5", 2023, 305)
bmwCar.printInf()


class Mercedes: Car {
    var carClass: String
    
    init(_ carClass: String, _ brand: String, _ model: String, _ year: Int, _ maxSpeed: Int) {
        self.carClass = carClass
        super.init(brand, model, year, maxSpeed)
    }
    
    override func printInf() {
        print("это \(brand) \(model) \(year) года выпуска класса \(carClass) с максимальной скоростью \(maxSpeed) км/ч")
    }
}

let mercedesCar = Mercedes("S-Class", "Mercedes", "S-Class", 2023, 250)
mercedesCar.printInf()


class Audi: Car {
    var driveType: String
    
    init(_ driveType: String, _ brand: String, _ model: String, _ year: Int, _ maxSpeed: Int) {
        self.driveType = driveType
        super.init(brand, model, year, maxSpeed)
    }
    
    override func printInf() {
        print("это \(brand) \(model) \(year) года выпуска с \(driveType) приводом и максимальной скоростью \(maxSpeed) км/ч")
    }
}

let audiCar = Audi("полный", "Audi", "A6", 2023, 250)
audiCar.printInf()


class Lada: Car {
    var cabinTemperature: Int
    
    init(_ cabinTemperature: Int, _ brand: String, _ model: String, _ year: Int, _ maxSpeed: Int) {
        self.cabinTemperature = cabinTemperature
        super.init(brand, model, year, maxSpeed)
    }
    
    override func printInf() {
        print("это \(brand) \(model) \(year) года выпуска с температурой в салоне \(cabinTemperature)°C и максимальной скоростью \(maxSpeed) км/ч")
    }
}

let ladaCar = Lada(25, "Lada", "Granta", 2023, 180)
ladaCar.printInf()

//Third Task

func createCar(_ brand: String, _ model: String, _ year: Int, _ maxSpeed: Int) -> Car {
    return Car(brand, model, year, maxSpeed)
}
//4th Task

func Race(_ carOne: Car, _ carTwo: Car) -> Car {
    if carOne.maxSpeed > carTwo.maxSpeed {
        print("Выиграл водитель на \(carOne.brand) \(carOne.model)")
        return carOne
    } else  {
        print("Выиграл водитель на \(carTwo.brand) \(carTwo.model)")
        return carTwo

    }
}
// 5th Task
var cars = [
    createCar("Toyota", "Camry", 2022, 200),
    createCar("Honda", "Civic", 2023, 180),
    createCar("BMW", "X5", 2021, 240),
    createCar("Mercedes-Benz", "E-Class", 2020, 220),
    createCar("Ford", "Mustang", 2024, 250),
    createCar("Chevrolet", "Corvette", 2023, 260),
    createCar("Audi", "A4", 2022, 210),
    createCar("Tesla", "Model S", 2023, 260)
    
]
func carRace(_ cars: inout [Car]) -> Car{
    guard cars.count > 1 else {
        return cars.first!
        }
    let car1 = cars.remove(at: Int.random(in: 0...cars.count-1))
    let car2 = cars.remove(at: Int.random(in: 0...cars.count-1))
        
    print("\nГонка: \(car1.brand) \(car1.model) против \(car2.brand) \(car2.model)")
    
    
    let winner = Race(car1, car2)
    
    cars.append(winner)
    
    return carRace(&cars)
    
}

let winner = carRace(&cars)


print("Итоговый победитель гонок: \(winner.brand) \(winner.model)")
