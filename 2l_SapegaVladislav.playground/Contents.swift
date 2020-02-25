enum machineAction {
    case changeStateEngine
    case changeStateWindow
}
enum Brand {
    case Mercedes
    case BMW
}
enum Color {
    case red
    case black
    case green
}
enum EngineState {
    case on
    case off
}
enum WindowState {
    case close
    case open
}

struct Car {
    
    var carBrand: Brand
    var productionYear: Int
    var carColor: Color
    var engine: EngineState
    var window: WindowState
    var trunkVolume: Double = 300 {
        willSet {
        if (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
        let space = trunkVolume - newValue
        print ("Багажник \(carBrand) свободен на \(space) единиц")
        } else { print("Багажник полон")}
        }
    }
    
    init(carBrand: Brand, productionYear: Int, carColor: Color) {
        self.carBrand = carBrand
        self.productionYear = productionYear
        self.carColor = carColor
        engine = .off
        window = .close
        
    }
    
    mutating func actionChanges (_ action: machineAction){
        switch action {
        case .changeStateEngine:
            if engine == .off {
                engine = .on
                print("Двигатель заведен")
            } else {
                engine = .off
                print("Двигатель заглушен")
            }
        case .changeStateWindow:
            if window == .close {
                window = .open
                print("Окно открыто")
            } else {
                window = .close
                print("Окно закрыто")
            }
        }
    }
    
    func carInformatiom() {
        print("Brand: \(carBrand), Production year: \(productionYear), Color: \(carColor), Engine state: \(engine), Window: \(window)")
    }
}

var car = Car(carBrand: .BMW, productionYear: 1990, carColor: .black)
car.actionChanges(.changeStateEngine)
car.actionChanges(.changeStateWindow)
car.actionChanges(.changeStateEngine)
car.actionChanges(.changeStateWindow)


struct Truck {

    var carBrand: Brand
    var productionYear: Int
    var carColor: Color
    var engine: EngineState
    var window: WindowState
    var trunkVolume: Double = 3000 {
        willSet {
            if (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("Багажник \(carBrand) свободен на \(space) единиц")
            } else { print("Багажник полон")}
        }
    }

    init(carBrand: Brand, productionYear: Int, carColor: Color) {
        self.carBrand = carBrand
        self.productionYear = productionYear
        self.carColor = carColor
        engine = .off
        window = .close
    }
    
    mutating func actionChanges (_ action: machineAction){
        switch action {
        case .changeStateEngine:
            if engine == .off {
                engine = .on
                print("Двигатель заведен")
            } else {
                engine = .off
                print("Двигатель заглушен")
            }
        case .changeStateWindow:
            if window == .close {
                window = .open
                print("Окно открыто")
            } else {
                window = .close
                print("Окно закрыто")
            }
        }
    }
    
    func truckInformatiom() {
        print("Brand: \(carBrand), Production year: \(productionYear), Color: \(carColor), Engine state: \(engine), Window: \(window)")
    }
}

var truck = Car(carBrand: .Mercedes, productionYear: 2010, carColor: .red)
truck.actionChanges(.changeStateEngine)
truck.actionChanges(.changeStateWindow)
truck.actionChanges(.changeStateEngine)
truck.actionChanges(.changeStateWindow)

