class Car {
    
    var brand: Brand
    var trunkVolume: Double
    var color: Color
    var productionYear: Int
    var engineState: EngineState = .stop
    var windowState: WindowState = .close
    
    enum Brand {
        case Audi
        case BMW
        case Bentley
        case Cadillac
        case Chevrolet
    }

    enum Color {
        case red
        case blue
        case green
        case black
        case yellow
    }
    
    enum EngineState {
        case start
        case stop

    }

    enum WindowState {
        case open
        case close
    }
    
    enum Actions {
        case changeEngineState
        case changeWindowsState
    }
    
    init(brand: Brand, trunkVolume: Double, color: Color, productionYear: Int) {
        self.brand = brand
        self.trunkVolume = trunkVolume
        self.color = color
        self.productionYear = productionYear
    }
    
    func action (_ action: Actions){
        switch action {
        case .changeEngineState:
            if engineState == .stop {
                engineState = .start
            } else {
                engineState = .stop
            }
        case .changeWindowsState:
            if windowState == .close {
                windowState = .open
            } else {
                windowState = .close
            }
        }
    }
}

class truckCar: Car {
    
    var typeTruck: Body
    var maxVolume: Double
    var cargo: Double
    
    enum Body {
        case Dump
        case Refrigerator
        case Tank
        case Tractor
    }
    
    enum ActionTruck {
        case loadTruck(Double)
        case unloadTruck(Double)
    }
    
    init(color: Color, yearOfManufacture: Int, maxVolume: Double, maxWeight: Double) {
        self.maxVolume = maxVolume
    }
    
    func action(_ action: ActionTruck) {
        switch action {
        case .loadTruck(let value):
            if maxVolume < value {
                print("Кузов заполнен")
            } else {
                cargo+=value
                print("Кузов заполнен на \(value)")
            }
        case .unloadTruck(let value):
                cargo-=value
                print("Кузов заполнен на \(value)")
        }
    }
}

class sportСar: Car {
    
    enum typeFuel {
        case disel
        case patrol
        case elc
    }
    enum ActionSportCar {
        case turboOn
        case turboOff
    }
    
    var fuel: typeFuel
    var transmissipon: ActionSportCar
    
    init(color: Color, productionYear: Int, price: Double) {
        self.fuel = fuel
        super.init(brand: Brand, trunkVolume: Double, color: Color, productionYear: productionYear)
    }
    
    func action (_ action: ActionSportCar){
        switch action {
        case .turboOff:
            transmissipon = "Комфорт"
            print(transmissipon)
        case .turboOn:
            transmissipon = "Турбо"
            print(transmissipon)
        }
    }
}


