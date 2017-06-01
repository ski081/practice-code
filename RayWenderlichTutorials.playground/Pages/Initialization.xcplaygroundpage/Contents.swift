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

// MARK: - Class Designated Initializer

let payload = RocketComponent(model: "RT-1",
                              serialNumber: "234",
                              reusable: false)

// Mark: - Convenience Class Initializer

let fairing = RocketComponent(model: "Serpent",
                              serialNumber: "o")

// MARK: - Failable Class Initializer

let component = RocketComponent(identifier: "R2-D21",
                                reusable: true)
let nonComponent = RocketComponent(identifier: "",
                                   reusable: true)

// MARK: - Inherited Initializers

let fuelTank = Tank(model: "Athena",
                    serialNumber: "003",
                    reusable: true)
print(fuelTank)

let liquidOxygenTank = Tank(identifier: "LOX-012",
                            reusable: true)
print(liquidOxygenTank)

let rp1Tank = LiquidTank(model: "Hermes",
                         serialNumberInt: 5,
                         reusable: 1,
                         encasingMaterial: "Aluminum",
                         liquidType: "LOX")
print(rp1Tank)

let loxTank = LiquidTank(identifier: "LOX-1",
                         reusable: true)
print(loxTank)

// MARK: - Failable Inherited Initializers

let athenaFuelTank = LiquidTank(identifier: "Athena-9",
                                reusable: true,
                                encasingMaterial: "Aluminum",
                                liquidType: "RP-1")