import Foundation

public class LiquidTank: Tank {
    public let liquidType: String
    
    public init(model: String, serialNumber: String, reusable: Bool, encasingMaterial: String, liquidType: String) {
        self.liquidType = liquidType
        super.init(model: model,
                   serialNumber: serialNumber,
                   reusable: reusable,
                   encasingMaterial: encasingMaterial)
    }
    
    public convenience init(model: String, serialNumberInt: Int, reusable: Bool,
                            encasingMaterial: String, liquidType: String) {
        let serialNumber = String(serialNumberInt)
        self.init(model: model,
                  serialNumber: serialNumber,
                  reusable: reusable,
                  encasingMaterial: encasingMaterial,
                  liquidType: liquidType)
    }
    
    public convenience init(model: String, serialNumberInt: Int, reusable: Int,
                     encasingMaterial: String, liquidType: String) {
        let reusable = reusable > 0
        self.init(model: model,
                  serialNumberInt: serialNumberInt,
                  reusable: reusable,
                  encasingMaterial: encasingMaterial,
                  liquidType: liquidType)
    }
    
    public override init(model: String, serialNumber: String, reusable: Bool) {
        self.liquidType = "LOX"
        super.init(model: model, serialNumber: serialNumber,
                   reusable: reusable, encasingMaterial: "Aluminum")
    }
    
    public override init(model: String, serialNumber: String, reusable: Bool,
                  encasingMaterial: String) {
        self.liquidType = "LOX"
        super.init(model: model, serialNumber: serialNumber, reusable:
            reusable, encasingMaterial: encasingMaterial)
    }
    
    public convenience init?(identifier: String, reusable: Bool, encasingMaterial: String,
                      liquidType: String) {
        guard let (model, serialNumber) = RocketComponent.decompose(identifier: identifier) else {
            return nil
        }
        
        self.init(model: model, serialNumber: serialNumber,
                  reusable: reusable,
                  encasingMaterial: encasingMaterial,
                  liquidType: liquidType)
    }
}
