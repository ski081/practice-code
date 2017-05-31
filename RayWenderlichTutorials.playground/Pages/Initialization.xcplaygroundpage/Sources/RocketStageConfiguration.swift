import Foundation

public struct RocketStageConfiguration {
    public let propellantMass: Double
    public let liquidOxygenMass: Double
    public let nominalBurnTime: Int
    
    public init(propellantMass: Double, liquidOxygenMass: Double, nominalBurnTime: Int) {
        self.propellantMass = propellantMass
        self.liquidOxygenMass = liquidOxygenMass
        self.nominalBurnTime = nominalBurnTime
    }
}

public extension RocketStageConfiguration {
    public init(propellantMass: Double, liquidOxygenMass: Double) {
        self.propellantMass = propellantMass
        self.liquidOxygenMass = liquidOxygenMass
        self.nominalBurnTime = 180
    }
}
