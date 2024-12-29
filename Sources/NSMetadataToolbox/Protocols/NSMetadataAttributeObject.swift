import DeclarativeCore

public protocol NSMetadataAttributeObject<Input, Output>: ObjectProcessor { }

// MARK: - Intrinsic

public extension NSMetadataAttributeObject {
	/// Apply the given `modifier` to the attribute.
	/// - Parameter modifier: The modifier to apply to the attribute.
	/// - Returns: The attribute with the given `modifier` applied.
	func modifier<Modifier>(
		_ modifier: Modifier
	) -> ModifiedObject<Self, Modifier> where
		Modifier: NSMetadataAttributeObject,
		Self.Output == Modifier.Input
	{
		ModifiedObject(upstream: self, downstream: modifier)
	}
}
