private import let Foundation.NSMetadataAttributes.NSMetadataItemPathKey
import struct Foundation.URL

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemPathKey`](https://developer.apple.com/documentation/foundation/nsmetadataitempathkey)\.
	enum PathKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemPathKey }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.PathKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/PathKey``.
	static var path: Self {
		Self()
	}
}

// MARK: - Modifiers

public extension NSMetadataAttributeKey<NSMetadataAttribute.PathKey> {
	/// Convert the path to a file URL using
	/// [`init(fileURLWithPath:isDirectory:relativeTo:)`](https://developer.apple.com/documentation/foundation/url/3126802-init)\.
	///
	/// - Note: This function avoids an extra file system access to check if the file URL is a directory. You should use it if you know the answer already.
	///
	/// - Parameters:
	///   - isDirectory: A Boolean value that indicates whether the location is a directory.
	///   - base: A URL that provides a file system location that the path extends.
	@available(iOS, introduced: 8, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(macCatalyst, introduced: 13, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(macOS, introduced: 10.10, deprecated: 13, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(tvOS, introduced: 9, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(visionOS, introduced: 1, deprecated: 1, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(watchOS, introduced: 2, deprecated: 9, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	func asFileURL(
		isDirectory: Bool,
		relativeTo base: URL?
	) -> some NSMetadataAttributeProtocol<Self.Input, URL?> {
		map { (input: Output) -> URL? in
			guard let input else {
				return nil
			}
			return URL(fileURLWithPath: input, isDirectory: isDirectory, relativeTo: base)
		}
	}

	/// Convert the path to a file URL using
	/// [`init(fileURLWithPath:relativeTo:)`](https://developer.apple.com/documentation/foundation/url/3126803-init)\.
	///
	/// - Parameter base: A URL that provides a file system location that the path extends.
	@available(iOS, introduced: 8, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(macCatalyst, introduced: 13, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(macOS, introduced: 10.10, deprecated: 13, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(tvOS, introduced: 9, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(visionOS, introduced: 1, deprecated: 1, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(watchOS, introduced: 2, deprecated: 9, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	func asFileURL(
		relativeTo base: URL?
	) -> some NSMetadataAttributeProtocol<Self.Input, URL?> {
		map { (input: Output) -> URL? in
			guard let input else {
				return nil
			}
			return URL(fileURLWithPath: input, relativeTo: base)
		}
	}

	/// Convert the path to a file URL using
	/// [`init(fileURLWithPath:isDirectory:)`](https://developer.apple.com/documentation/foundation/url/3126801-init)\.
	///
	/// - Note: This function avoids an extra file system access to check if the file URL is a directory. You should use it if you know the answer already.
	///
	/// - Parameter isDirectory: A Boolean value that indicates whether the location is a directory.
	@available(iOS, introduced: 8, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(macCatalyst, introduced: 13, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(macOS, introduced: 10.10, deprecated: 13, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(tvOS, introduced: 9, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(visionOS, introduced: 1, deprecated: 1, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(watchOS, introduced: 2, deprecated: 9, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	func asFileURL(
		isDirectory: Bool
	) -> some NSMetadataAttributeProtocol<Self.Input, URL?> {
		map { (input: Output) -> URL? in
			guard let input else {
				return nil
			}
			return URL(fileURLWithPath: input, isDirectory: isDirectory)
		}
	}

	/// Convert the path to a file URL using
	/// [`init(fileURLWithPath:)`](https://developer.apple.com/documentation/foundation/url/3126800-init)\.
	@available(iOS, introduced: 8, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(macCatalyst, introduced: 13, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(macOS, introduced: 10.10, deprecated: 13, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(tvOS, introduced: 9, deprecated: 16, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(visionOS, introduced: 1, deprecated: 1, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	@available(watchOS, introduced: 2, deprecated: 9, message: "Use asFileURL(directoryHint:relativeTo:) instead")
	func asFileURL() -> some NSMetadataAttributeProtocol<Self.Input, URL?> {
		map { (input: Output) -> URL? in
			guard let input else {
				return nil
			}
			return URL(fileURLWithPath: input)
		}
	}

	/// Convert the path to a file URL using
	/// [`init(filePath:directoryHint:relativeTo:)`](https://developer.apple.com/documentation/foundation/url/3988464-init)\.
	///
	/// - Parameters:
	///   - directoryHint: A hint to the initializer to indicate whether the path is a directory, or to instruct the initializer to make this determination.
	///   - base: A URL that provides a file system location that the path extends.
	@available(iOS 16, macCatalyst 16, macOS 13, tvOS 16, visionOS 1, watchOS 9, *)
	func asFileURL(
		directoryHint: URL.DirectoryHint = .inferFromPath,
		relativeTo base: URL? = nil
	) -> some NSMetadataAttributeProtocol<Self.Input, URL?> {
		map { (input: Output) -> URL? in
			guard let input else {
				return nil
			}
			return URL(filePath: input, directoryHint: directoryHint, relativeTo: base)
		}
	}
}
