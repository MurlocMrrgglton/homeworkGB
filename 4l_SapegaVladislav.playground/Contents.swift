// #1
enum EngineState {
    case start
    case stop

}

enum WindowState {
    case open
    case close
}
		
class Car {
    
    var brand: Brand
    var trunkVolume: Double
    var color: Color
    var productionYear: Int
    var engineState: EngineState
    var windowState: WindowState
    
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


    func actionChanges (){
        if self.engineState == .stop {
            self.engineState == .start
        }
        else {
            self.engineState == .stop
        }
    }
    
    init(brand: Brand, trunkVolume: Double, color: Color, windowState: WindowState) {
        self.brand = brand
        self.trunkVolume = trunkVolume
        self.color = color
        self.windowState = windowState
    }
    
}
