import XCTest
import NSUI

@MainActor
struct RepresentedView: NSUIViewRepresentable {
	func makeNSUIView(context: Context) -> NSUIView {
		NSUIView()
	}

	func updateNSUIView(_ uiView: NSUIView, context: Context) {
	}
}

final class ViewRepresentableTests: XCTestCase {
	func testViewStructDefinition() throws {
		let _ = RepresentedView()
	}
}
