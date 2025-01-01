import DeclarativeCore

/// ## Topics
///
/// ### Initializers
///
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-4l8n4``
public typealias AnyNSMetadataAttributeObject<Input, Output> = AnyObjectProcessor<Input, Output>

public extension AnyNSMetadataAttributeObject {
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
	func eraseToAnyNSMetadataAttributeObject() -> AnyNSMetadataAttributeObject<Input, Output> {
		eraseToAnyObjectProcessor()
	}
}
