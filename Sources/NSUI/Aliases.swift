import SwiftUI

#if canImport(AppKit)
import AppKit

public typealias NSUIApplication = NSApplication
public typealias NSUIApplicationDelegate = NSApplicationDelegate
@available(macOS 11.0, *)
public typealias NSUIApplicationDelegateAdaptor = NSApplicationDelegateAdaptor
public typealias NSUIColor = NSColor
public typealias NSUILongPressGestureRecognizer = NSPressGestureRecognizer
public typealias NSUITapGestureRecognizer = NSClickGestureRecognizer
public typealias NSUIWorkspace = NSWorkspace

#elseif canImport(UIKit)
import UIKit

public typealias NSUIApplication = UIApplication
public typealias NSUIApplicationDelegate = UIApplicationDelegate
@available(iOS 14.0, tvOS 14.0, *)
public typealias NSUIApplicationDelegateAdaptor = UIApplicationDelegateAdaptor
public typealias NSUIColor = UIColor
public typealias NSUILongPressGestureRecognizer = UILongPressGestureRecognizer
public typealias NSUITapGestureRecognizer = UITapGestureRecognizer
public typealias NSUIWorkspace = UIWorkspace

#endif
