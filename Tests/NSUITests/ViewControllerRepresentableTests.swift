import XCTest
import NSUI

@MainActor
struct RepresentedViewController: NSUIViewControllerRepresentable {
	func makeNSUIViewController(context: Context) -> NSUIViewController {
		NSUIViewControllerType(nibName: nil, bundle: nil)
	}

	func updateNSUIViewController(_ viewController: NSUIViewController, context: Context) {
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

