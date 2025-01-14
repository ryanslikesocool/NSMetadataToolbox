import class Foundation.NSMetadata.NSMetadataItem

/// A key for accessing attribute values in an
/// [`NSMetadataItem`]( https://developer.apple.com/documentation/foundation/nsmetadataitem ).
public protocol NSMetadataAttributeKey: NSMetadataAttributeObject where
	Input == NSMetadataItem
{
	/// The underlying attribute key.
	///
	/// Attribute key constants can be found in the documentation for
	/// [`NSMetadataItem`]( https://developer.apple.com/documentation/foundation/nsmetadataitem#1681152 ),
	/// [`MDItem`]( https://developer.apple.com/documentation/coreservices/file_metadata/mditem#1658393 ),
	/// and
	/// [File Metadata]( https://developer.apple.com/documentation/coreservices/file_metadata#2934150 ).
	///
	/// The following terminal command can be used to inspect metadata attribute keys and values for a specific file or directory:
	/// ```bash
	/// mdls /path/to/file
	/// ```
	static var attributeKey: String { get }

	/// Retrieve and process the value for the attribute with the ``attributeKey``.
	// Shadows ``NSMetadataAttributeObject.process(_:)``
	func process(_ input: Input) throws -> Output
}

// MARK: - Default Implementation

public extension NSMetadataAttributeKey {
	func process(_ input: Input) throws -> Output {
		guard let attributeValue = input.value(forAttribute: Self.attributeKey) else {
			throw NSMetadataError.missingValue(forKey: Self.attributeKey)
		}
		guard let resultValue = attributeValue as? Output else {
			throw NSMetadataError.castFailed(from: attributeValue, to: Output.self)
		}
		return resultValue
	}
}
