import Foundation

public struct Weather {
    public let temperatureCelcius: Double
    public let windSpeedKilometersPerHour: Double
    
    public init(temperatureFahrenheit: Double = 72, windSpeedMilesPerHour: Double = 5) {
        self.temperatureCelcius = (temperatureFahrenheit - 32) / 1.8
        self.windSpeedKilometersPerHour = windSpeedMilesPerHour * 1.609344
    }
}
