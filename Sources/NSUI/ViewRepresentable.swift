import SwiftUI

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

public protocol NSUIViewRepresentable: NSViewRepresentable {
	associatedtype NSUIViewType: NSView

	func makeNSUIView(context: Context) -> NSUIViewType
	func updateNSUIView(_ view: NSUIViewType, context: Context)
}

public extension NSUIViewRepresentable {
	func makeNSView(context: Context) -> NSUIViewType {
		makeNSUIView(context: context)
	}

	func updateNSView(_ view: NSUIViewType, context: Context) {
		updateNSUIView(view, context: context)
	}
}

#elseif canImport(UIKit)
import UIKit

public protocol NSUIViewRepresentable: UIViewRepresentable {
	associatedtype NSUIViewType: UIView

	func makeNSUIView(context: Context) -> NSUIViewType
	func updateNSUIView(_ view: NSUIViewType, context: Context)
}

public extension NSUIViewRepresentable {
	func makeUIView(context: Context) -> NSUIViewType {
		makeNSUIView(context: context)
	}

	func updateUIView(_ view: NSUIViewType, context: Context) {
		updateNSUIView(view, context: context)
	}
}

#endif
