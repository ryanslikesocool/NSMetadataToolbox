import let CoreServices.Metadata.MDItem.kMDItemPath
import struct Foundation.URL

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemPath`]( https://developer.apple.com/documentation/coreservices/kmditempath ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/path``
	struct Path: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemPath as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Path
{
	/// The attribute key for
	/// [`kMDItemPath`]( https://developer.apple.com/documentation/coreservices/kmditempath ).
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
