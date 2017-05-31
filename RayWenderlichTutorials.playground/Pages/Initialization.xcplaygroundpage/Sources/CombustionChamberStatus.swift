import Foundation

public struct CombustionChamberStatus {
    public var temperatureKelvin: Double
    public var pressureKiloPascals: Double
    
    public init(temperatureKelvin: Double, pressureKiloPascals: Double) {
        print("Phase 1 init")
        self.temperatureKelvin = temperatureKelvin
        self.pressureKiloPascals = pressureKiloPascals
        print("CombustionChamberStatus fully initialized")
        print("Phase 2 init")
    }
    
    public init(temperatureCelcius: Double, pressureAtmospheric: Double) {
        print("Phase 1 delegaating init")
        let temperatureKelvin = temperatureCelcius + 273.15
        let pressureKiloPascals = pressureAtmospheric * 101.325
        self.init(temperatureKelvin: temperatureKelvin,
                  pressureKiloPascals: pressureKiloPascals)
        print("phase 2 delegating init")
    }
}

