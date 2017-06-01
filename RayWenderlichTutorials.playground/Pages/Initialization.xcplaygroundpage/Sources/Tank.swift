import Foundation

public class Tank: RocketComponent {
    public var encasingMaterial: String
    
    public init(model: String, serialNumber: String, reusable: Bool, encasingMaterial: String) {
        self.encasingMaterial = encasingMaterial
        super.init(model: model,
                   serialNumber: serialNumber,
                   reusable: reusable)
    }
    
    public override init(model: String, serialNumber: String, reusable: Bool) {
        self.encasingMaterial = "Aluminum"
        super.init(model: model, serialNumber: serialNumber, reusable: reusable)
    }
}
