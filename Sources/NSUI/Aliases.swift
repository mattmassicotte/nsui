import SwiftUI

#if canImport(AppKit)
import AppKit

public typealias NSUIActivityIndicatorView = NSProgressIndicator
public typealias NSUIApplication = NSApplication
public typealias NSUIApplicationDelegate = NSApplicationDelegate
@available(macOS 11.0, *)
public typealias NSUIApplicationDelegateAdaptor = NSApplicationDelegateAdaptor

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
public typealias NSUIImage = NSImage
public typealias NSUILabel = NSTextField
public typealias NSUILongPressGestureRecognizer = NSPressGestureRecognizer
public typealias NSUINib = NSNib
public typealias NSUIPasteboard = NSPasteboard
public typealias NSUIResponder = NSResponder
public typealias NSUITapGestureRecognizer = NSClickGestureRecognizer
public typealias NSUITextField = NSTextField
public typealias NSUITextFieldDelegate = NSTextFieldDelegate
public typealias NSUITextView = NSTextView
public typealias NSUIView = NSView
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
public typealias NSUIImage = UIImage
public typealias NSUILabel = UILabel
public typealias NSUILongPressGestureRecognizer = UILongPressGestureRecognizer
public typealias NSUINib = UINib

@available(tvOS, unavailable)
public typealias NSUIPasteboard = UIPasteboard
public typealias NSUIResponder = UIResponder
public typealias NSUITapGestureRecognizer = UITapGestureRecognizer
public typealias NSUITextField = UITextField
public typealias NSUITextFieldDelegate = UITextFieldDelegate
public typealias NSUITextView = UITextView
public typealias NSUIView = UIView
public typealias NSUIViewController = UIViewController
public typealias NSUIHostingController = UIHostingController
public typealias NSUIWorkspace = UIApplication

#endif
