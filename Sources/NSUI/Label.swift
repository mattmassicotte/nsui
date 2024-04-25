#if canImport(AppKit) && !targetEnvironment(macCatalyst)
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

	var attributedText: NSAttributedString {
		get { attributedStringValue }
		set { attributedStringValue = newValue }
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
