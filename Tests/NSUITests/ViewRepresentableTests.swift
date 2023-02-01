import XCTest
@testable import NSUI

struct RepresentedView: NSUIViewRepresentable {
	typealias NSUIViewType = NSUIView
	
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
