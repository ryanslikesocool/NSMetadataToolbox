import Foundation

public extension NSMetadataItem {
	/// A key for accessing attribute values in an
	/// [`NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem)
	/// .
	///
	///	An attribute key is declared similarly to a SwiftUI
	///	[`EnvironmentKey`](https://developer.apple.com/documentation/swiftui/environmentkey)
	///	.
	///	In most cases, declaring a new attribute key is as simple as knowing the key string and value type.
	///
	///
	///	For example, the implementation for ``Foundation/NSMetadataItem/DisplayNameAttributeKey`` looks like this:
	///	```swift
	///	enum DisplayNameAttributeKey: NSMetadataItem.AttributeKey {
	///		// The type of value that the key points to.
	///		// In this case, a `String`.
	///		public typealias Value = String
	///
	///		// The underlying string for the attribute key.
	///		public static var attributeKey: String {
	///			// `Foundation` declares this constant for us,
	///			// so we can use that instead of declaring it manually.
	///			NSMetadataItemDisplayNameKey
	///		}
	///	}
	///	```
	///
	///
	///	You can create shorthand attribute keys to greatly simplify accessing attribute values.
	///	The declaration for ``Foundation/NSMetadataItem/AttributeKey/displayName`` looks like this:
	///	```swift
	///	extension NSMetadataItem.AttributeKey where
	///		Self == NSMetadataItem.DisplayNameAttributeKey
	///	{
	///		static var displayName: Self.Type {
	///			Self.self
	///		}
	///	}
	///	```
	///	```swift
	///	func readDisplayName(
	///		from metadataItem: NSMetadataItem
	///	) -> String? {
	///		var result: String?
	///
	///		// With a fully qualified attribute key:
	///		result = metadataItem.value(
	///			forKey: NSMetadataItem.DisplayNameAttributeKey.self
	///		)
	///
	///		// With a shorthand attribute key:
	///		result = metadataItem.value(
	///			forKey: .displayName
	///		)
	///
	///		return result
	///	}
	///	```
	protocol AttributeKey<Value> {
		/// The expected value type returned by ``Foundation/NSMetadataItem/value(forAttribute:)``.
		associatedtype Value

		/// The underlying attribute key.
		///
		/// See the "Item Attribute Keys" section in the [documentation for `NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem) for a list of possible keys.
		static var attributeKey: String { get }
	}
}
