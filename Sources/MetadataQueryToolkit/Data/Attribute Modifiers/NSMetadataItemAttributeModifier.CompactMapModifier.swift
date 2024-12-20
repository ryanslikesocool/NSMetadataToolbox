public extension NSMetadataItemAttributeModifier {
	struct CompactMapModifier<Input, OutputElement>: NSMetadataItemAttributeProtocol where
		Input: Sequence
	{
		private let transform: (Input.Element) -> OutputElement?

		public init(_ transform: @escaping (Input.Element) -> OutputElement?) {
			self.transform = transform
		}

		public func process(_ value: Input) -> [OutputElement] {
			value.compactMap(transform)
		}
	}
}

// MARK: Convenience

public extension NSMetadataItemAttributeProtocol {
	func compactMap<OutputElement>(
		_ transform: @escaping (Self.Output.Element) -> OutputElement?
	) -> some NSMetadataItemAttributeProtocol<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		let modifier = NSMetadataItemAttributeModifier.CompactMapModifier<Self.Output, OutputElement>(transform)
		return self.modifier(modifier)
	}
}
