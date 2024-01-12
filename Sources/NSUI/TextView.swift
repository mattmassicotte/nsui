#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

public extension NSTextStorage {
	typealias EditActions = NSTextStorageEditActions
}

public typealias NSUITextStorageEditActions = NSTextStorageEditActions

public extension NSTextView {
	var text: String {
		get { return string }
		set { string = newValue }
	}
}

#elseif canImport(UIKit)
import UIKit

public typealias NSUITextStorageEditActions = NSTextStorage.EditActions

#endif
