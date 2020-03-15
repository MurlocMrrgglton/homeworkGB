// 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
enum Action {
    case startEngine
    case stopEngine
    case closeWindows
    case openWindows
}

protocol Car {
    var brand: String { get }
    var price: Int { get }
    var color: String { get }
    var engine: Action { get set }
    var window: Action { get set }
    
    mutating func changeState(_ action: Action)
}
// 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
extension Car {
    var engine: Action { .stopEngine }
    var window: Action { .closeWindows }
    
    mutating func changeState(_ action: Action) {
        switch action {
        case .stopEngine, .startEngine:
            self.engine = action
        case .closeWindows, .openWindows:
            self.window = action
        }
    }
}
// 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
final class TrunkCar: Car {
    
    enum TrailerState {
        case connectedTrailer
        case disconnectedTrailer
    }
    
    var brand: String
    var price: Int
    var color: String
    var window: Action
    var engine: Action
    var trailer: TrailerState
    
    init(brand: String, price: Int, color: String, window: Action, engine: Action, trailer: TrailerState) {
        self.brand = brand
        self.price = price
        self.color = color
        self.window = window
        self.engine = engine
        self.trailer = trailer
    }
    
    func truckTrailer() {
        if trailer == .disconnectedTrailer {
            trailer = .connectedTrailer
        } else {
            trailer = . disconnectedTrailer
        }
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return ("""
            brand: \(brand)
            price: \(price)
            color: \(color)
            window: \(window)
            engine: \(engine)
            trailer: \(trailer)-
            \n
            """)
    }
}


class SportСar: Car {
    
    enum Fuel {
        case diesel
        case patrol
        case eco
    }
    
    enum TurboMode {
        case on
        case off
    }
    var brand: String
    var price: Int
    var color: String
    var window: Action
    var engine: Action
    var fuelType: Fuel
    var turbo: TurboMode
    
    
    init(brand: String, price: Int, color: String, window: Action, engine: Action, fuelType: Fuel, turbo: TurboMode) {
        self.brand = brand
        self.price = price
        self.color = color
        self.window = window
        self.engine = engine
        self.fuelType = fuelType
        self.turbo = turbo
    }
    
    func changeTurboMode() {
        if turbo == .off {
            turbo = .on
        } else {
            turbo = .off
        }
    }
}

extension SportСar: CustomStringConvertible {
var description: String {
    return ("""
        brand: \(brand)
        price: \(price)
        color: \(color)
        window: \(window)
        engine: \(engine)
        fuelType: \(fuelType)
        turbo: \(turbo)-
        \n
        """)
}
}
    
// 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
var trunkCar = TrunkCar(brand: "VW", price: 1000, color: "Black", window: .openWindows, engine: .startEngine, trailer: .connectedTrailer)
trunkCar.truckTrailer()
trunkCar.changeState(.closeWindows)
var sportCar = SportСar(brand: "BMW", price: 10000, color: "Green", window: .closeWindows, engine: .stopEngine, fuelType: .diesel, turbo: .off)
sportCar.changeTurboMode()
sportCar.changeState(.startEngine)


