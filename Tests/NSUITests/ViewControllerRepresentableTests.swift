import XCTest
@testable import NSUI

@MainActor
struct RepresentedViewController: NSUIViewControllerRepresentable {
	typealias NSUIViewControllerType = NSUIViewController

	func makeNSUIViewController(context: Context) -> NSUIViewControllerType {
		NSUIViewControllerType(nibName: nil, bundle: nil)
	}

	func updateNSUIViewController(_ viewController: NSUIViewControllerType, context: Context) {
	}

	final class Coordinator {}

	func makeCoordinator() -> Coordinator {
		Coordinator()
	}
}

final class ViewControllerRepresentableTests: XCTestCase {
	@MainActor
	func testViewStructDefinition() throws {
		let _ = RepresentedViewController()
	}
}

