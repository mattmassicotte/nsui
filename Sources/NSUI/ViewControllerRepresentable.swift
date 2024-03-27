import SwiftUI

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
public protocol NSUIViewControllerRepresentable: NSViewControllerRepresentable where NSViewControllerType == NSUIViewControllerType {
	associatedtype NSUIViewControllerType: NSUIViewController

	@MainActor
	func makeNSUIViewController(context: Self.Context) -> Self.NSUIViewControllerType

	@MainActor
	func updateNSUIViewController(_ viewController: Self.NSUIViewControllerType, context: Self.Context)

	@MainActor
	static func dismantleNSUIViewController(_ viewController: Self.NSUIViewControllerType, coordinator: Self.Coordinator)

	@available(macOS 13.0, *)
	@MainActor
	func sizeThatFits(_ proposal: ProposedViewSize, nsUIViewController: Self.NSUIViewControllerType, context: Self.Context) -> CGSize?
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

	@MainActor
	static func dismantleNSViewController(_ viewController: Self.NSUIViewControllerType, coordinator: Self.Coordinator) {
		Self.dismantleNSUIViewController(viewController, coordinator: coordinator)
	}

	@available(macOS 13.0, *)
	@MainActor
	func sizeThatFits(_ proposal: ProposedViewSize, nsViewController: Self.NSUIViewControllerType, context: Self.Context) -> CGSize? {
		sizeThatFits(proposal, nsUIViewController: nsViewController, context: context)
	}
}

#elseif canImport(UIKit)
public protocol NSUIViewControllerRepresentable: UIViewControllerRepresentable where UIViewControllerType == NSUIViewControllerType {
	associatedtype NSUIViewControllerType: NSUIViewController

	@MainActor
	func makeNSUIViewController(context: Self.Context) -> Self.NSUIViewControllerType

	@MainActor
	func updateNSUIViewController(_ viewController: Self.NSUIViewControllerType, context: Self.Context)

	@MainActor
	static func dismantleNSUIViewController(_ viewController: Self.NSUIViewControllerType, coordinator: Self.Coordinator)

	@available(iOS 16.0, tvOS 16.0, *)
	@MainActor
	func sizeThatFits(_ proposal: ProposedViewSize, nsUIViewController: Self.NSUIViewControllerType, context: Self.Context) -> CGSize?
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

	@MainActor
	static func dismantleUIViewController(_ viewController: Self.NSUIViewControllerType, coordinator: Self.Coordinator) {
		Self.dismantleNSUIViewController(viewController, coordinator: coordinator)
	}

	@available(iOS 16.0, tvOS 16.0, *)
	@MainActor
	func sizeThatFits(
		_ proposal: ProposedViewSize,
		uiViewController: Self.NSUIViewControllerType,
		context: Self.Context
	) -> CGSize? {
		sizeThatFits(proposal, nsUIViewController: uiViewController, context: context)
	}
}
#endif

extension NSUIViewControllerRepresentable {
	@MainActor
	public static func dismantleNSUIViewController(_ viewController: Self.NSUIViewControllerType, coordinator: Self.Coordinator) {
	}

	@available(iOS 16.0, tvOS 16.0, macOS 13.0, *)
	@MainActor
	public func sizeThatFits(_ proposal: ProposedViewSize, nsUIViewController: Self.NSUIViewControllerType, context: Self.Context) -> CGSize? {
		nil
	}
}
