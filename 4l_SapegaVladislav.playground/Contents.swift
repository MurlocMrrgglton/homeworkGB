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

class TruckCar: Car {
    
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
    
    init(brand: Brand, trunkVolume: Double, color: Color, productionYear: Int, typeTruck: Body, maxVolume: Double, cargo: Double) {
        self.typeTruck = typeTruck
        self.maxVolume = maxVolume
        self.cargo = cargo
        super.init(brand: brand, trunkVolume: trunkVolume, color: color, productionYear: productionYear)
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
var truckCar1 = TruckCar(brand: .Chevrolet, trunkVolume: 100, color: .black, productionYear: 1999, typeTruck: .Dump, maxVolume: 200, cargo: 100)
truckCar1.action(.changeEngineState)
truckCar1.action(.loadTruck(10))
truckCar1.action(.unloadTruck(20))

class SportСar: Car {
    
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
    var transmission: ActionSportCar
    
    init(brand: Brand, trunkVolume: Double, color: Color, productionYear: Int, fuel: typeFuel, transmission: ActionSportCar) {
        self.fuel = fuel
        self.transmission = transmission
        super.init(brand: brand, trunkVolume: trunkVolume, color: color, productionYear: productionYear)
    }
    
    func action (_ action: ActionSportCar){
        switch action {
        case .turboOff:
            print(transmission)
        case .turboOn:
            print(transmission)
        }
    }
}

var sportCar1 = SportСar(brand: .BMW, trunkVolume: 0, color: .green, productionYear: 2019, fuel: .disel, transmission: .turboOn)
sportCar1.action(.turboOff)
sportCar1.action(.changeEngineState)
sportCar1.action(.changeWindowsState)



