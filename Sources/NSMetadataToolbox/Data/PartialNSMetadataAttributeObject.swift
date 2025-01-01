import DeclarativeCore

/// ## Topics
///
/// ### Initializers
///
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-rgs0``
public typealias PartialNSMetadataAttributeObject<Input> = PartialObjectProcessor<Input>

public extension PartialNSMetadataAttributeObject {
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
	func eraseToPartialNSMetadataAttributeObject() -> PartialNSMetadataAttributeObject<Input> {
		eraseToPartialObjectProcessor()
	}
}
