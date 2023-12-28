#if canImport(AppKit)
import AppKit

public extension NSUILabel {
    var text: String {
        get {
            return stringValue
        }
        set {
            stringValue = newValue
        }
    }
    var textAlignment: NSTextAlignment {
        get {
            return alignment
        }
        
        set {
            alignment = newValue
        }
    }
}
#endif
