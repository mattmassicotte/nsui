#if canImport(AppKit) && !targetEnvironment(macCatalyst)
extension NSBezierPath {
    public func addLine(to point: CGPoint) {
        line(to: point)
    }

    public func addCurve(to endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint) {
        curve(to: endPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
    }
}
#endif
