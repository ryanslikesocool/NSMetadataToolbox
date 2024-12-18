import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemExecutableArchitecturesKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutablearchitectureskey)\.
	enum ExecutableArchitecturesKey: NSMetadataItemAttributeKey {
		public typealias Value = [String]

		public static var attributeKey: String { NSMetadataItemExecutableArchitecturesKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ExecutableArchitecturesKey``.
	var executableArchitectures: ExecutableArchitecturesKey.Type {
		ExecutableArchitecturesKey.self
	}
}