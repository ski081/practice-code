import Foundation

let athena9Heavy = RocketConfiguration()
let currentWeather = Weather(temperatureFahrenheit: 87,
                             windSpeedMilesPerHour: 2)
currentWeather.temperatureCelcius
currentWeather.windSpeedKilometersPerHour

let stageOneConfiguration = RocketStageConfiguration(propellantMass: 119.1,
                                                     liquidOxygenMass: 276.0,
                                                     nominalBurnTime: 180)

// MARK: - Delegating Initializer
let guidanceStatus = GuidanceSensorStatus(zAngularVelocityDegreesPerMinute: 2.2)
guidanceStatus.currentZAngularVelocityRadiansPerMinute // 0.038
guidanceStatus.needsCorrection // false

// MARK: - Two Phase Initialization
CombustionChamberStatus(temperatureCelcius: 32, pressureAtmospheric: 0.96)

// MARK: - Failable Initializer

if let tankStatus = TankStatus(currentVolume: 0.0,
                               currentLiquidType: nil) {
    print("Tank created")
} else {
    print("Error when creating tank")
}

if let tankStatus = TankStatus(currentVolume: -10.0,
                               currentLiquidType: nil) {
    print("Tank created")
} else {
    print("Error when creating tank")
}

// MARK: - Throwing Initializer

let johnny = try? Astronaut(name: "Johnny Cosmos", age: 42)
let timmy = try? Astronaut(name: "Timmy Galaxy", age: 17)

