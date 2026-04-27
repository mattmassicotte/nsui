import XCTest
import NSUI

#if !os(watchOS)
@MainActor
struct RepresentedView: NSUIViewRepresentable {
	func makeNSUIView(context: Context) -> NSUIView {
		NSUIView()
	}

	func updateNSUIView(_ uiView: NSUIView, context: Context) {
	}

	final class Coordinator {}

	func makeCoordinator() -> Coordinator {
		Coordinator()
	}
}

final class ViewRepresentableTests: XCTestCase {
	@MainActor
	func testViewStructDefinition() throws {
		let _ = RepresentedView()
	}
}
#endif
