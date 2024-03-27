import SwiftUI

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

public protocol NSUIViewRepresentable: NSViewRepresentable {
	associatedtype NSUIViewType: NSView

	@MainActor
	func makeNSUIView(context: Context) -> NSUIViewType
	@MainActor
	func updateNSUIView(_ view: NSUIViewType, context: Context)
}

public extension NSUIViewRepresentable {
	@MainActor
	func makeNSView(context: Context) -> NSUIViewType {
		makeNSUIView(context: context)
	}

	@MainActor
	func updateNSView(_ view: NSUIViewType, context: Context) {
		updateNSUIView(view, context: context)
	}
}

#elseif canImport(UIKit)
import UIKit

public protocol NSUIViewRepresentable: UIViewRepresentable {
	associatedtype NSUIViewType: UIView

	@MainActor
	func makeNSUIView(context: Context) -> NSUIViewType
	@MainActor
	func updateNSUIView(_ view: NSUIViewType, context: Context)
}

public extension NSUIViewRepresentable {
	@MainActor
	func makeUIView(context: Context) -> NSUIViewType {
		makeNSUIView(context: context)
	}

	@MainActor
	func updateUIView(_ view: NSUIViewType, context: Context) {
		updateNSUIView(view, context: context)
	}
}

#endif
