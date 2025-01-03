import class Foundation.NSMetadata.NSMetadataItem

/// A key for accessing attribute values in an
/// [`NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem)\.
public protocol NSMetadataAttributeKey: NSMetadataAttributeObject where
	Input == NSMetadataItem
{
	/// The underlying attribute key.
	///
	/// Attribute key constants can be found in the documentation for
	/// [`NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem#1681152)\,
	/// [`MDItem`](https://developer.apple.com/documentation/coreservices/file_metadata/mditem#1658393)\,
	/// and
	/// [File Metadata](https://developer.apple.com/documentation/coreservices/file_metadata#2934150)\.
	static var attributeKey: String { get }
}

// MARK: - Default Implementation

public extension NSMetadataAttributeKey {
	/// Retrieve and process the value for the attribute with the ``attributeKey``.
	func process(_ input: Input) throws -> Output {
		let attributeValue = input.value(forAttribute: Self.attributeKey)
		guard let resultValue = attributeValue as? Output else {
			throw NSMetadataError.castFailed(from: attributeValue, to: Output.self)
		}
		return resultValue
	}
}
