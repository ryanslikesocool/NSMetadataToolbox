import DeclarativeCore

/// A type-erased ``NSMetadataAttributeObject`` that preserves both the `Input` and `Output` type information.
///
/// ## Topics
/// ### Initializers
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-4l8n4``
///
/// ### Modifiers
/// - ``NSMetadataAttributeObject/eraseToAnyNSMetadataAttributeObject()``
public typealias AnyNSMetadataAttributeObject<Input, Output> = AnyObjectProcessor<Input, Output>

// MARK: - Convenience

public extension AnyNSMetadataAttributeObject {
	/// - Parameter nsMetadataAttributeObject:
	@_disfavoredOverload
	init<Object>(_ nsMetadataAttributeObject: Object) where
		Object: NSMetadataAttributeObject,
		Object.Input == Self.Input,
		Object.Output == Self.Output
	{
		self.init(nsMetadataAttributeObject)
	}
}

public extension NSMetadataAttributeObject {
	/// Type-erase the object, preserving both the `Input` and `Output` type information.
	/// 
	/// ## See Also
	/// - ``AnyNSMetadataAttributeObject``
	///
	/// - Returns: A type-erased version of the object that preserves both the `Input` and `Output` type information.
	func eraseToAnyNSMetadataAttributeObject() -> AnyNSMetadataAttributeObject<Input, Output> {
		eraseToAnyObjectProcessor()
	}
}
