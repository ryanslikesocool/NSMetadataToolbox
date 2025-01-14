import DeclarativeCore

/// A type-erased ``NSMetadataAttributeObject`` that preserves only the `Input` type information.
///
/// ## Topics
/// ### Initializers
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-rgs0``
///
/// ### Modifiers
/// - ``NSMetadataAttributeObject/eraseToPartialNSMetadataAttributeObject()``
public typealias PartialNSMetadataAttributeObject<Input> = PartialObjectProcessor<Input>

// MARK: - Convenience

public extension PartialNSMetadataAttributeObject {
	/// - Parameter nsMetadataAttributeObject:
	@_disfavoredOverload
	init<Object>(_ nsMetadataAttributeObject: Object) where
		Object: NSMetadataAttributeObject,
		Object.Input == Self.Input,
		Self.Output == Any
	{
		self.init(nsMetadataAttributeObject)
	}
}

public extension NSMetadataAttributeObject {
	/// Type-erase the object, preserving only the `Input` type information.
	///
	/// ## See Also
	/// - ``PartialNSMetadataAttributeObject``
	///
	/// - Returns: A type-erased version of the object that preserves only the `Input` type information.
	func eraseToPartialNSMetadataAttributeObject() -> PartialNSMetadataAttributeObject<Input> {
		eraseToPartialObjectProcessor()
	}
}
