import UIKit

//1 num
class Car{
    var brand: String
    var model: String
    var year: Int
    var horsePower: Int
    
    init(brand: String, model: String, year: Int, horsePower: Int){
        self.brand = brand
        self.model = model
        self.year = year
        self.horsePower = horsePower
    }
    
    func information(){
        print("Марка:" , brand)
        print("Модель:" , model)
        print("Год выпуска:" , year)
        print("Мощность двигателя:", horsePower , "л.с.")
    }
}

var car = Car(brand: "bmw" , model: "m5", year: 2010, horsePower: 530)
car.information()


//2 num
class BMW: Car{
    var price: Int
    var color: String
    
    init(brand: String, model: String, year: Int, horsePower: Int, price: Int, color: String){
        self.price = price
        self.color = color
        super.init(brand: brand, model: model, year: year, horsePower: horsePower)
    }
    
    override func information() {
        print("Марка:" , brand)
        print("Модель:" , model)
        print("Год выпуска:" , year)
        print("Мощность двигателя:", horsePower , "л.с.")
        print("Цена:", price)
        print("Цвет:", color)
    }
}

class Tesla: Car{
    var mileage: Int
    var isAvailableForRent: Bool
    
    init(brand: String, model: String, year: Int, horsePower: Int, mileage: Int, isAvailableForRent: Bool){
        self.mileage = mileage
        self.isAvailableForRent = isAvailableForRent
        super.init(brand: brand, model: model, year: year, horsePower: horsePower)
    }
    
    override func information() {
        print("Марка:" , brand)
        print("Модель:" , model)
        print("Год выпуска:" , year)
        print("Мощность двигателя:", horsePower , "л.с.")
        print("Пробег:", mileage, "км")
        print("Сдается ли в аренду:", isAvailableForRent)
    }
}

class Lada: Car{
    var maxSpeed: Int
    var transmission: String
    
    init(brand: String, model: String, year: Int, horsePower: Int, maxSpeed: Int, transmission: String){
        self.maxSpeed = maxSpeed
        self.transmission = transmission
        super.init(brand: brand, model: model, year: year, horsePower: horsePower)
    }
    
    override func information() {
        print("Марка:" , brand)
        print("Модель:" , model)
        print("Год выпуска:" , year)
        print("Мощность двигателя:", horsePower , "л.с.")
        print("Максимальная скорость:", maxSpeed)
        print("Трансмиссия:", transmission)
    }
}

class Toyota: Car{
    var countOwners: Int
    var bodyType: String
    
    init(brand: String, model: String, year: Int, horsePower: Int, countOwners: Int, bodyType: String){
        self.countOwners = countOwners
        self.bodyType = bodyType
        super.init(brand: brand, model: model, year: year, horsePower: horsePower)
    }
    
    override func information() {
        print("Марка:" , brand)
        print("Модель:" , model)
        print("Год выпуска:" , year)
        print("Мощность двигателя:", horsePower , "л.с.")
        print("Количество владельцев:" , countOwners)
        print("Тип кузова:", bodyType)
    }
}

var bmw = BMW(brand: "bmw", model: "m5", year: 2010, horsePower: 530, price: 10_000_000, color: "black")
var tesla = Tesla(brand: "tesla", model: "model x", year: 2018, horsePower: 800, mileage: 100_000, isAvailableForRent: false)
var lada = Lada(brand: "lada", model: "granta", year: 2000, horsePower: 100, maxSpeed: 184, transmission: "механическая" )
var toyota = Toyota(brand: "toyota", model: "camry", year: 2023, horsePower: 300, countOwners: 2, bodyType: "седан")

bmw.information()
tesla.information()
lada.information()
toyota.information()

//3 num
func creatingCar(brand: String, model: String, year: Int, horsePower: Int) -> Car {
    return Car(brand: brand, model: model, year: year, horsePower: horsePower)
}

//4 num
func race(car1: Car, car2: Car) -> Car{
    if car1.horsePower > car2.horsePower {
        print("Победитель: \(car1.brand) \(car1.model)", "| Проигравший: \(car2.brand) \(car2.model)")
        return car1
    } else if car1.horsePower < car2.horsePower{
        print("Победитель: \(car2.brand) \(car2.model)", "| Проигравший: \(car1.brand) \(car1.model)")
        return car2
    }
    print("Ничья между \(car1.brand) \(car1.model) и \(car2.brand) \(car2.model)")
    return car1
}
race(car1: bmw, car2: tesla)

//5 num
var arrCar: [Car] = []
arrCar.append(creatingCar(brand: "bmw", model: "m5", year: 2010, horsePower: 530))
arrCar.append(creatingCar(brand: "tesla", model: "model x", year: 2018, horsePower: 800))
arrCar.append(creatingCar(brand: "lada", model: "granta", year: 2000, horsePower: 102))
arrCar.append(creatingCar(brand: "toyota", model: "camry", year: 2023, horsePower: 300))
arrCar.append(creatingCar(brand: "audi", model: "a5", year: 2019, horsePower: 250))
arrCar.append(creatingCar(brand: "renault", model: "sandero", year: 2020, horsePower: 102))

func conductingRace(arr: inout [Car]) -> Car {
    while arr.count > 1 {
        var car1 = arr.remove(at: Int.random(in: 0..<arr.count))
        var car2 = arr.remove(at: Int.random(in: 0..<arr.count))
        var win = race(car1: car1, car2: car2)
        arr.append(win)
    }
    print()
    print("Итоговый победитель: \(arr[0].brand) \(arr[0].model)")
    return arr[0]
}
conductingRace(arr: &arrCar)
