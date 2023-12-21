import SwiftUI

#if canImport(AppKit)
import AppKit

public typealias NSUIApplication = NSApplication
public typealias NSUIApplicationDelegate = NSApplicationDelegate
@available(macOS 11.0, *)
public typealias NSUIApplicationDelegateAdaptor = NSApplicationDelegateAdaptor
public typealias NSUIColor = NSColor
public typealias NSUIImage = NSImage
public typealias NSUILongPressGestureRecognizer = NSPressGestureRecognizer
public typealias NSUIPasteboard = NSPasteboard
public typealias NSUIResponder = NSResponder
public typealias NSUITapGestureRecognizer = NSClickGestureRecognizer
public typealias NSUITextView = NSTextView
public typealias NSUIView = NSView
public typealias NSUIViewController = NSViewController
public typealias NSUIHostingController = NSHostingController
public typealias NSUIWorkspace = NSWorkspace

#elseif canImport(UIKit)
import UIKit

public typealias NSUIApplication = UIApplication
public typealias NSUIApplicationDelegate = UIApplicationDelegate
@available(iOS 14.0, tvOS 14.0, *)
public typealias NSUIApplicationDelegateAdaptor = UIApplicationDelegateAdaptor
public typealias NSUIColor = UIColor
public typealias NSUIImage = UIImage
public typealias NSUILongPressGestureRecognizer = UILongPressGestureRecognizer
@available(tvOS, unavailable)
public typealias NSUIPasteboard = UIPasteboard
public typealias NSUIResponder = UIResponder
public typealias NSUITapGestureRecognizer = UITapGestureRecognizer
public typealias NSUITextView = UITextView
public typealias NSUIView = UIView
public typealias NSUIViewController = UIViewController
public typealias NSUIHostingController = UIHostingController
public typealias NSUIWorkspace = UIApplication

#endif
