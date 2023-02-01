import SwiftUI

#if canImport(AppKit)
import AppKit

public typealias NSUIViewController = NSViewController
public typealias NSUIHostingController = NSHostingController

#elseif canImport(UIKit)
import UIKit

public typealias NSUIViewController = UIViewController
public typealias NSUIHostingController = UIHostingController

#endif
