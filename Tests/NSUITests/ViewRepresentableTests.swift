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
	@MainActor
	func testViewStructDefinition() throws {
		let _ = RepresentedView()
	}
}
