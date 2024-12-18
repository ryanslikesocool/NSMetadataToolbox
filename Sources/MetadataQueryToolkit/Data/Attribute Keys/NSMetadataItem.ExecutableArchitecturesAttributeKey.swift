import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemExecutableArchitecturesKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutablearchitectureskey)
	/// .
	enum ExecutableArchitecturesAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = [String]

		public static var attributeKey: String { NSMetadataItemExecutableArchitecturesKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.ExecutableArchitecturesAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/ExecutableArchitecturesAttributeKey``.
	static var executableArchitectures: Self.Type {
		Self.self
	}
}
