import SwiftUI

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
public protocol NSUIViewControllerRepresentable: NSViewControllerRepresentable {
	associatedtype NSUIViewControllerType: NSUIViewController

	@MainActor
	func makeNSUIViewController(context: Self.Context) -> Self.NSUIViewControllerType

	@MainActor
	func updateNSUIViewController(_ viewController: Self.NSUIViewControllerType, context: Self.Context)
}

public extension NSUIViewControllerRepresentable {
	@MainActor
	func makeNSViewController(context: Self.Context) -> Self.NSUIViewControllerType {
		makeNSUIViewController(context: context)
	}

	@MainActor
	func updateNSViewController(_ viewController: Self.NSUIViewControllerType, context: Self.Context) {
		updateNSUIViewController(viewController, context: context)
	}
}
#elseif canImport(UIKit)
public protocol NSUIViewControllerRepresentable: UIViewControllerRepresentable {
	associatedtype NSUIViewControllerType: NSUIViewController

	@MainActor
	func makeNSUIViewController(context: Self.Context) -> Self.NSUIViewControllerType

	@MainActor
	func updateNSUIViewController(_ viewController: Self.NSUIViewControllerType, context: Self.Context)
}

public extension NSUIViewControllerRepresentable {
	@MainActor
	func makeUIViewController(context: Self.Context) -> Self.NSUIViewControllerType {
		makeNSUIViewController(context: context)
	}

	@MainActor
	func updateUIViewController(_ viewController: Self.NSUIViewControllerType, context: Self.Context) {
		updateNSUIViewController(viewController, context: context)
	}
}
#endif

