import Foundation

public struct TankStatus {
    public var currentVolume: Double
    public var currentLiquidType: String?
    
    public init?(currentVolume: Double, currentLiquidType: String?) {
        if currentVolume < 0 {
            return nil
        }
        
        if currentVolume > 0 && currentLiquidType == nil {
            return nil
        }
        
        self.currentVolume = currentVolume
        self.currentLiquidType = currentLiquidType
    }
}
