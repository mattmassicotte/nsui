import SwiftUI

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
public typealias NSUIControlActiveState = ControlActiveState

extension EnvironmentValues {
	public var nsuiControlActiveState: NSUIControlActiveState {
		controlActiveState
	}
}
#elseif canImport(UIKit)
public enum NSUIControlActiveState : Hashable, CaseIterable, Sendable {
	case key
	case active
	case inactive
}

public struct NSUIControlActiveStateKey: EnvironmentKey {
	public static let defaultValue: NSUIControlActiveState = NSUIControlActiveState.active
}

extension EnvironmentValues {
	/// This value will always be `.active` on non-macOS platforms.
	public var nsuiControlActiveState: NSUIControlActiveState {
		get { self[NSUIControlActiveStateKey.self] }
		set { self[NSUIControlActiveStateKey.self] = newValue }
	}
}
#endif
