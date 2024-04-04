import SwiftUI

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
public protocol NSUIViewRepresentable: NSViewRepresentable {
	associatedtype NSUIViewType: NSView

	@MainActor
	func makeNSUIView(context: Context) -> NSUIViewType
	@MainActor
	func updateNSUIView(_ view: NSUIViewType, context: Context)
	@MainActor
	static func dismantleNSUIView(_ view: Self.NSUIViewType, coordinator: Self.Coordinator)
	@available(macOS 13.0, *)
	@MainActor func sizeThatFits(_ proposal: ProposedViewSize, nsuiView: Self.NSUIViewType, context: Self.Context) -> CGSize?
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

	@MainActor
	static func dismantleNSView(_ nsView: Self.NSUIViewType, coordinator: Self.Coordinator) {
		Self.dismantleNSUIView(nsView, coordinator: coordinator)
	}

	@available(macOS 13.0, *)
	@MainActor func sizeThatFits(_ proposal: ProposedViewSize, nsView: Self.NSUIViewType, context: Self.Context) -> CGSize? {
		sizeThatFits(proposal, nsuiView: nsView, context: context)
	}
}

#elseif canImport(UIKit)
public protocol NSUIViewRepresentable: UIViewRepresentable {
	associatedtype NSUIViewType: UIView

	@MainActor
	func makeNSUIView(context: Context) -> NSUIViewType
	@MainActor
	func updateNSUIView(_ view: NSUIViewType, context: Context)
	@MainActor
	static func dismantleNSUIView(_ view: Self.NSUIViewType, coordinator: Self.Coordinator)
	@available(iOS 16.0, tvOS 16.0, *)
	@MainActor func sizeThatFits(_ proposal: ProposedViewSize, nsuiView: Self.NSUIViewType, context: Self.Context) -> CGSize?
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

	@MainActor
	static func dismantleUIView(_ uiView: Self.NSUIViewType, coordinator: Self.Coordinator) {
		Self.dismantleNSUIView(uiView, coordinator: coordinator)
	}

	@available(iOS 16.0, tvOS 16.0, *)
	@MainActor func sizeThatFits(_ proposal: ProposedViewSize, uiView: Self.NSUIViewType, context: Self.Context) -> CGSize? {
		sizeThatFits(proposal, nsuiView: uiView, context: context)
	}
}

#endif

extension NSUIViewRepresentable {
	@MainActor
	public static func dismantleNSUIView(_ view: Self.NSUIViewType, coordinator: Self.Coordinator) {
	}

	@available(macOS 13.0, iOS 16.0, tvOS 16.0, *)
	@MainActor
	public func sizeThatFits(_ proposal: ProposedViewSize, nsuiView: Self.NSUIViewType, context: Self.Context) -> CGSize? {
		nil
	}
}
