import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemExecutableArchitecturesKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutablearchitectureskey)\.
	struct ExecutableArchitecturesKey: NSMetadataItemAttributeKey {
		public typealias Value = [String]

		public static var attributeKey: String { NSMetadataItemExecutableArchitecturesKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ExecutableArchitecturesKey``.
	var executableArchitectures: ExecutableArchitecturesKey.Type {
		ExecutableArchitecturesKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.ExecutableArchitecturesKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ExecutableArchitecturesKey``.
	static var executableArchitectures: Self {
		Self()
	}
}
