import DeclarativeCore

// MARK: - NSMetadataAttributeObject

extension AnyObjectProcessor: NSMetadataAttributeObject { }

// MARK: - Convenience

public typealias AnyNSMetadataAttributeObject<Input, Output> = AnyObjectProcessor<Input, Output>
public typealias PartialNSMetadataAttributeObject<Input> = PartialObjectProcessor<Input>

public extension AnyObjectProcessor {
	@_disfavoredOverload
	init<Object>(_ nsMetadataAttributeObject: Object) where
		Object: NSMetadataAttributeObject,
		Object.Input == Self.Input,
		Object.Output == Self.Output
	{
		self.init(nsMetadataAttributeObject)
	}

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
	func eraseToAnyNSMetadataAttributeObject() -> AnyNSMetadataAttributeObject<Input, Output> {
		eraseToAnyObjectProcessor()
	}

	func eraseToPartialNSMetadataAttributeObject() -> PartialNSMetadataAttributeObject<Input> {
		eraseToPartialObjectProcessor()
	}
}
