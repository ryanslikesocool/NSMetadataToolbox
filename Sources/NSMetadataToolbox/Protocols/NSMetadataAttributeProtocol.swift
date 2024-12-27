public protocol NSMetadataAttributeProtocol<Input, Output> {
	associatedtype Input
	associatedtype Output

	func process(_ input: Input) throws -> Output
}

// MARK: - Intrinsic

public extension NSMetadataAttributeProtocol {
	/// Apply the given `modifier` to the attribute.
	/// - Parameter modifier: The modifier to apply to the attribute.
	/// - Returns: The attribute with the given `modifier` applied.
	func modifier<Modifier>(
		_ modifier: Modifier
	) -> some NSMetadataAttributeProtocol<Self.Input, Modifier.Output> where
		Modifier: NSMetadataAttributeProtocol,
		Self.Output == Modifier.Input
	{
		ModifiedContent(upstream: self, downstream: modifier)
	}
}
