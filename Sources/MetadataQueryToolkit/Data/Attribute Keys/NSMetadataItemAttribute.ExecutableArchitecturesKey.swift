import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemExecutableArchitecturesKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutablearchitectureskey)\.
	enum ExecutableArchitecturesKey: NSMetadataItemAttributeKey {
		public typealias Value = [String]

		public static var attributeKey: String { NSMetadataItemExecutableArchitecturesKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ExecutableArchitecturesKey``.
	var executableArchitectures: ExecutableArchitecturesKey.Type {
		ExecutableArchitecturesKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.ExecutableArchitecturesKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ExecutableArchitecturesKey``.
	static var executableArchitectures: Self {
		Self()
	}
}
