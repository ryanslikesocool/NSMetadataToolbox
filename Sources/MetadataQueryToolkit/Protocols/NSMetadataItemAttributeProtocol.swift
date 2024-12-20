public protocol NSMetadataItemAttributeProtocol<Input, Output> {
	associatedtype Input
	associatedtype Output

	func process(_ value: Input) -> Output
}

// MARK: - Intrinsic

public extension NSMetadataItemAttributeProtocol {
	func modifier<Modifier>(_ modifier: Modifier) -> ModifiedNSMetadataItemAttribute<Self, Modifier> where
		Modifier: NSMetadataItemAttributeProtocol,
		Modifier.Input == Self.Output
	{
		ModifiedNSMetadataItemAttribute(upstream: self, downstream: modifier)
	}
}
