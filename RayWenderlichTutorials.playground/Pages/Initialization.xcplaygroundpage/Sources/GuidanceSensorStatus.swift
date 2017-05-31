import Foundation

public struct GuidanceSensorStatus {
    public var currentZAngularVelocityRadiansPerMinute: Double
    public let initialZAngularVelocityRadiansPerMinute: Double
    public var needsCorrection: Bool
    
    public init(zAngularVelocityDegreesPerMinute: Double, needsCorrection: Bool = false) {
        let radiansPerMinute = zAngularVelocityDegreesPerMinute * 0.01745329251994
        self.currentZAngularVelocityRadiansPerMinute = radiansPerMinute
        self.initialZAngularVelocityRadiansPerMinute = radiansPerMinute
        self.needsCorrection = needsCorrection
    }
    
    public init(zAngularVelocityDegreesPerMinute: Double, needsCorrection: Int) {
        self.init(zAngularVelocityDegreesPerMinute: zAngularVelocityDegreesPerMinute,
                  needsCorrection: (needsCorrection > 0))
    }
}

