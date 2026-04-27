import SwiftUI

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
public typealias NSUIActivityIndicatorView = NSProgressIndicator
public typealias NSUIApplication = NSApplication
public typealias NSUIApplicationDelegate = NSApplicationDelegate
@available(macOS 11.0, *)
public typealias NSUIApplicationDelegateAdaptor = NSApplicationDelegateAdaptor
public typealias NSUIBezierPath = NSBezierPath
public typealias NSUIButton = NSButton
public typealias NSUICollectionDataSource = NSCollectionViewDataSource
public typealias NSUICollectionView = NSCollectionView
public typealias NSUICollectionViewDelegate = NSCollectionViewDelegate
public typealias NSUICollectionViewDelegateFlowLayout = NSCollectionViewDelegateFlowLayout
public typealias NSUICollectionViewFlowLayout = NSCollectionViewFlowLayout
public typealias NSUICollectionViewItem = NSCollectionViewItem
public typealias NSUICollectionViewLayout = NSCollectionViewLayout
public typealias NSUICollectionViewLayoutAttributes = NSCollectionViewLayoutAttributes
public typealias NSUIColor = NSColor
public typealias NSUIEdgeInsets = NSEdgeInsets
public typealias NSUIFont = NSFont
public typealias NSUIFontDescriptor = NSFontDescriptor
public typealias NSUIHostingController = NSHostingController
public typealias NSUIImage = NSImage
public typealias NSUIImageView = NSImageView
public typealias NSUILabel = NSTextField
public typealias NSUILongPressGestureRecognizer = NSPressGestureRecognizer
public typealias NSUINib = NSNib
public typealias NSUIPasteboard = NSPasteboard
public typealias NSUIResponder = NSResponder
public typealias NSUIStackView = NSStackView
public typealias NSUIStoryboard = NSStoryboard
public typealias NSUITableView = NSTableView
@available(macOS 11.0, *)
public typealias NSUITableViewDiffableDataSource = NSTableViewDiffableDataSource
public typealias NSUITapGestureRecognizer = NSClickGestureRecognizer
public typealias NSUITextField = NSTextField
public typealias NSUITextFieldDelegate = NSTextFieldDelegate
public typealias NSUITextView = NSTextView
public typealias NSUIView = NSView
public typealias NSUIViewController = NSViewController
public typealias NSUIWorkspace = NSWorkspace
#elseif canImport(UIKit)
#if !os(watchOS)
public typealias NSUIActivityIndicatorView = UIActivityIndicatorView
public typealias NSUIApplication = UIApplication
public typealias NSUIApplicationDelegate = UIApplicationDelegate
@available(iOS 14.0, tvOS 14.0, *)
public typealias NSUIApplicationDelegateAdaptor = UIApplicationDelegateAdaptor
public typealias NSUIButton = UIButton
public typealias NSUICollectionDataSource = UICollectionViewDataSource
public typealias NSUICollectionView = UICollectionView
public typealias NSUICollectionViewDelegate = UICollectionViewDelegate
public typealias NSUICollectionViewDelegateFlowLayout = UICollectionViewDelegateFlowLayout
public typealias NSUICollectionViewFlowLayout = UICollectionViewFlowLayout
public typealias NSUICollectionViewItem = UICollectionViewCell
public typealias NSUICollectionViewLayout = UICollectionViewLayout
public typealias NSUICollectionViewLayoutAttributes = UICollectionViewLayoutAttributes
public typealias NSUIHostingController = UIHostingController
public typealias NSUIImageView = UIImageView
public typealias NSUILabel = UILabel
public typealias NSUILongPressGestureRecognizer = UILongPressGestureRecognizer
@available(visionOS, introduced: 1.0, deprecated)
public typealias NSUINib = UINib
@available(tvOS, unavailable)
public typealias NSUIPasteboard = UIPasteboard
public typealias NSUIResponder = UIResponder
public typealias NSUIScrollView = UIScrollView
public typealias NSUIStackView = UIStackView
@available(visionOS, introduced: 1.0, deprecated)
public typealias NSUIStoryboard = UIStoryboard
public typealias NSUITapGestureRecognizer = UITapGestureRecognizer
public typealias NSUITableViewDiffableDataSource = UITableViewDiffableDataSource
public typealias NSUITableView = UITableView
public typealias NSUITextField = UITextField
public typealias NSUITextFieldDelegate = UITextFieldDelegate
public typealias NSUITextView = UITextView
public typealias NSUIView = UIView
public typealias NSUIViewController = UIViewController
public typealias NSUIWorkspace = UIApplication
#endif

public typealias NSUIBezierPath = UIBezierPath
public typealias NSUIColor = UIColor
public typealias NSUIEdgeInsets = UIEdgeInsets
public typealias NSUIFont = UIFont
public typealias NSUIFontDescriptor = UIFontDescriptor
public typealias NSUIImage = UIImage
#endif
