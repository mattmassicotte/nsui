import SwiftUI

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

public typealias NSUIActivityIndicatorView = NSProgressIndicator
public typealias NSUIApplication = NSApplication
public typealias NSUIApplicationDelegate = NSApplicationDelegate
@available(macOS 11.0, *)
public typealias NSUIApplicationDelegateAdaptor = NSApplicationDelegateAdaptor

// Storyboard
public typealias NSUIStoryboard = NSStoryboard

// Collection View
public typealias NSUICollectionDataSource = NSCollectionViewDataSource
public typealias NSUICollectionView = NSCollectionView
public typealias NSUICollectionViewItem = NSCollectionViewItem
public typealias NSUICollectionViewDelegate = NSCollectionViewDelegate
public typealias NSUICollectionViewLayout = NSCollectionViewLayout
public typealias NSUICollectionViewFlowLayout = NSCollectionViewFlowLayout
public typealias NSUICollectionViewLayoutAttributes = NSCollectionViewLayoutAttributes
public typealias NSUICollectionViewDelegateFlowLayout = NSCollectionViewDelegateFlowLayout

public typealias NSUIColor = NSColor
public typealias NSUIEdgeInsets = NSEdgeInsets
public typealias NSUIFont = NSFont
public typealias NSUIFontDescriptor = NSFontDescriptor
public typealias NSUIImage = NSImage
public typealias NSUIImageView = NSImageView
public typealias NSUILabel = NSTextField
public typealias NSUILongPressGestureRecognizer = NSPressGestureRecognizer
public typealias NSUINib = NSNib
public typealias NSUIPasteboard = NSPasteboard
public typealias NSUIResponder = NSResponder
public typealias NSUITapGestureRecognizer = NSClickGestureRecognizer

// Views
public typealias NSUIButton = NSButton
public typealias NSUITextField = NSTextField
public typealias NSUITextFieldDelegate = NSTextFieldDelegate
public typealias NSUITextView = NSTextView
public typealias NSUIView = NSView
public typealias NSUIStackView = NSStackView
public typealias NSUIViewController = NSViewController
public typealias NSUIHostingController = NSHostingController
public typealias NSUIWorkspace = NSWorkspace

#elseif canImport(UIKit)
import UIKit

public typealias NSUIActivityIndicatorView = UIActivityIndicatorView
public typealias NSUIApplication = UIApplication
public typealias NSUIApplicationDelegate = UIApplicationDelegate
@available(iOS 14.0, tvOS 14.0, *)
public typealias NSUIApplicationDelegateAdaptor = UIApplicationDelegateAdaptor

// Storyboard
@available(visionOS, introduced: 1.0, deprecated)
public typealias NSUIStoryboard = UIStoryboard

// Collection View
public typealias NSUICollectionDataSource = UICollectionViewDataSource
public typealias NSUICollectionView = UICollectionView
public typealias NSUICollectionViewItem = UICollectionViewCell
public typealias NSUICollectionViewDelegate = UICollectionViewDelegate
public typealias NSUICollectionViewLayout = UICollectionViewLayout
public typealias NSUICollectionViewFlowLayout = UICollectionViewFlowLayout
public typealias NSUICollectionViewLayoutAttributes = UICollectionViewLayoutAttributes
public typealias NSUICollectionViewDelegateFlowLayout = UICollectionViewDelegateFlowLayout

public typealias NSUIColor = UIColor
public typealias NSUIEdgeInsets = UIEdgeInsets
public typealias NSUIFont = UIFont
public typealias NSUIFontDescriptor = UIFontDescriptor
public typealias NSUIImage = UIImage
public typealias NSUIImageView = UIImageView
public typealias NSUILabel = UILabel
public typealias NSUILongPressGestureRecognizer = UILongPressGestureRecognizer
@available(visionOS, introduced: 1.0, deprecated)
public typealias NSUINib = UINib

@available(tvOS, unavailable)
public typealias NSUIPasteboard = UIPasteboard
public typealias NSUIResponder = UIResponder
public typealias NSUITapGestureRecognizer = UITapGestureRecognizer

// Views
public typealias NSUIButton = UIButton
public typealias NSUITextField = UITextField
public typealias NSUITextFieldDelegate = UITextFieldDelegate
public typealias NSUITextView = UITextView
public typealias NSUIView = UIView
public typealias NSUIStackView = UIStackView
public typealias NSUIViewController = UIViewController
public typealias NSUIHostingController = UIHostingController
public typealias NSUIWorkspace = UIApplication

#endif
