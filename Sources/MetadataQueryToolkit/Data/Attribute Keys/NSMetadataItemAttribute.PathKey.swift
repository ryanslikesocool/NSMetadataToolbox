import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemPathKey`](https://developer.apple.com/documentation/foundation/nsmetadataitempathkey)\.
	struct PathKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemPathKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/PathKey``.
	var path: PathKey.Type {
		PathKey.self
	}
}

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.PathKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/PathKey``.
	static var path: Self {
		Self()
	}
}

@available(iOS 16, macCatalyst 16, macOS 13, tvOS 16, watchOS 9, *)
public extension NSMetadataItemAttribute.PathKey {
	/// Convert the path to a file URL using
	/// [`init(filePath:directoryHint:relativeTo:)`](https://developer.apple.com/documentation/foundation/url/3988464-init)\.
	///
	/// - Parameters:
	///   - directoryHint: A hint to the initializer to indicate whether the path is a directory, or to instruct the initializer to make this determination.
	///   - base: A URL that provides a file system location that the path extends.
	func asFileURL(
		directoryHint: URL.DirectoryHint = .inferFromPath,
		relativeTo base: URL? = nil
	) -> some NSMetadataItemAttributeProtocol<Self.Input, URL?> {
		map { (input: Output) -> URL? in
			guard let input else {
				return nil
			}
			return URL(filePath: input, directoryHint: directoryHint, relativeTo: base)
		}
	}
}