import SwiftUI

extension Color {
	@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
	public init(nsuiColor: NSUIColor) {
#if canImport(AppKit) && !targetEnvironment(macCatalyst)
		self.init(nsColor: nsuiColor)
#elseif canImport(UIKit)
		self.init(uiColor: nsuiColor)
#endif
	}
}
