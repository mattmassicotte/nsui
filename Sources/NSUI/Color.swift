#if canImport(AppKit)
import AppKit

public typealias NSUIColor = NSColor

#elseif canImport(UIKit)
import UIKit

public typealias NSUIColor = UIColor
#endif
