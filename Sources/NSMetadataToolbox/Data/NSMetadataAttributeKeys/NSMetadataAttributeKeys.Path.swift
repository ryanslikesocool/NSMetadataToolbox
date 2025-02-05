import let Foundation.NSMetadataAttributes.NSMetadataItemPathKey
import struct Foundation.URL

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemPathKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitempathkey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/path``
	struct Path: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			NSMetadataItemPathKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Path
{
	/// The attribute key for
	/// [`NSMetadataItemPathKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitempathkey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Path``
	static var path: Self {
		Self()
	}
}

// MARK: - Modifiers

public extension NSMetadataAttributeKeys.Path {
	/// Convert the path to a file URL using
	/// [`init(filePath:directoryHint:relativeTo:)`]( https://developer.apple.com/documentation/foundation/url/3988464-init ).
	///
	/// - Parameters:
	///   - directoryHint: A hint to the initializer to indicate whether the path is a directory, or to instruct the initializer to make this determination.
	///   - base: A URL that provides a file system location that the path extends.
	@available(iOS 16, macCatalyst 16, macOS 13, tvOS 16, visionOS 1, watchOS 9, *)
	func asFileURL(
		directoryHint: URL.DirectoryHint = .inferFromPath,
		relativeTo base: URL? = nil
	) -> some NSMetadataAttributeObject<Self.Input, URL> {
		map { (input: Output) -> URL in
			URL(filePath: input, directoryHint: directoryHint, relativeTo: base)
		}
	}
}
