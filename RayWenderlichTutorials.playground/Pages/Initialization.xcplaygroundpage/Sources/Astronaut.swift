import Foundation

enum InvalidAstronautDataError: Error {
    case EmptyName
    case InvalidAge
}

public struct Astronaut {
    public let name: String
    public let age: Int
    
    public init(name: String, age: Int) throws {
        guard !name.isEmpty else {
            throw InvalidAstronautDataError.EmptyName
        }
        
        guard age > 18 && age < 70 else {
            throw InvalidAstronautDataError.InvalidAge
        }
        
        self.name = name
        self.age = age
    }
}
