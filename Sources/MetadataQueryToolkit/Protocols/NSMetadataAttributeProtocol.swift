public protocol NSMetadataAttributeProtocol<Input, Output> {
	associatedtype Input
	associatedtype Output

	func process(_ value: Input) -> Output
}

// MARK: - Intrinsic

public extension NSMetadataAttributeProtocol {
	func modifier<Modifier>(_ modifier: Modifier) -> ModifiedNSMetadataAttribute<Self, Modifier> where
		Modifier: NSMetadataAttributeProtocol,
		Modifier.Input == Self.Output
	{
		ModifiedNSMetadataAttribute(upstream: self, downstream: modifier)
	}
}
