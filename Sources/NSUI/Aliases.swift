import SwiftUI

#if canImport(AppKit)
import AppKit

public typealias NSUIApplication = NSApplication
public typealias NSUIApplicationDelegate = NSApplicationDelegate
@available(macOS 11.0, *)
public typealias NSUIApplicationDelegateAdaptor = NSApplicationDelegateAdaptor
public typealias NSUIColor = NSColor

#elseif canImport(UIKit)
import UIKit

public typealias NSUIApplication = UIApplication
public typealias NSUIApplicationDelegate = UIApplicationDelegate
@available(iOS 14.0, tvOS 14.0, *)
public typealias NSUIApplicationDelegateAdaptor = UIApplicationDelegateAdaptor
public typealias NSUIColor = UIColor

#endif
