// 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
enum Action {
    case startEngine
    case stopEngine
    case closeWindows
    case openWindows
}

enum TrailerState {
    case connectedTrailer
    case disconnectedTrailer
}
protocol Car {
    var brand: String { get }
    var price: Int { get }
    var color: String { get }
    var engine: Action { get set }
    var window: Action { get set }
    
    func changeState()
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

    var brand: String
    var price: Int
    var color: String
    var window: Action
    var engine: Action
    var trailer: TrailerState
    
    init(brand: String, price: Int, color: String, engine: Action, window: Action, trailer: TrailerState) {
        self.brand = brand
        self.price = price
        self.color = color
        self.engine = engine
        self.window = window
    }
    
    func truckTrailer() {
        if trailer == .disconnectedTrailer {
            trailer = .connectedTrailer
        } else {
            trailer = . disconnectedTrailer
        }
    }
}

// 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
var trunkCar = TrunkCar(brand: "VW", price: 1000, color: "Black", engine: .startEngine, window: .openWindows, trailer: .connectedTrailer)
trunkCar.truckTrailer()
trunkCar.changeState(.closeWindows)


class sportСar: Car {
    var brand: String
    var price: Int
    var color: String
    var window: Action
    var engine: Action
    
    init(brand: String, price: Int, color: String) {
        self.brand = brand
        self.price = price
        self.color = color
    }
}


