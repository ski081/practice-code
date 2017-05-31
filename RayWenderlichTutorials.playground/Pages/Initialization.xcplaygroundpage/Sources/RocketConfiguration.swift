import Foundation

public struct RocketConfiguration{
    public let name: String
    public let numberOfFirstStageCores: Int
    public let numberOfSecondStageCores: Int
    public let numberOfStageReuseLandingLegs: Int?
    
    public init(name: String = "Athena 9 Heavy",
                numberOfFirstStageCores: Int = 3,
                numberOfSecondStageCores: Int = 1,
                numberOfStageReuseLandingLegs: Int? = nil) {
        self.name = name
        self.numberOfFirstStageCores = numberOfFirstStageCores
        self.numberOfSecondStageCores = numberOfSecondStageCores
        self.numberOfStageReuseLandingLegs = numberOfStageReuseLandingLegs
    }
}
