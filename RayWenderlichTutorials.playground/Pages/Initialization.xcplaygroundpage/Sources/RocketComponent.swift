import Foundation

public class RocketComponent {
    public let model: String
    public let serialNumber: String
    public let reusable: Bool
    
    public init(model: String, serialNumber: String, reusable: Bool) {
        self.model = model
        self.serialNumber = serialNumber
        self.reusable = reusable
    }
    
    public convenience init(model: String, serialNumber: String) {
        self.init(model: model, serialNumber: serialNumber, reusable: false)
    }
    
    public convenience init?(identifier: String, reusable: Bool) {
        guard let (model, serialNumber) = RocketComponent.decompose(identifier: identifier) else {
            return nil
        }
        
        self.init(model: model,
                  serialNumber: serialNumber,
                  reusable: reusable)
    }
    
    static func decompose(identifier: String) -> (model: String, serialNumber: String)? {
        let identifierComponents = identifier.components(separatedBy: "-")
        guard identifierComponents.count == 2 else {
            return nil
        }
        return (model: identifierComponents[0], serialNumber: identifierComponents[1])
    }
}
