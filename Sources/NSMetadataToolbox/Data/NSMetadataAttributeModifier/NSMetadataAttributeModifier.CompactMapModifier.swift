public extension NSMetadataAttributeModifier {
	struct CompactMapModifier<Input, OutputElement>: NSMetadataAttributeProtocol where
		Input: Sequence
	{
		private let transform: (Input.Element) -> OutputElement?

		public init(_ transform: @escaping (Input.Element) -> OutputElement?) {
			self.transform = transform
		}

		public func process(_ input: Input) -> [OutputElement] {
			input.compactMap(transform)
		}
	}
}

// MARK: - Convenience

public extension NSMetadataAttributeProtocol {
	/// Perform a `compactMap` operation on an attribute value.
	func compactMap<OutputElement>(
		_ transform: @escaping (Self.Output.Element) -> OutputElement?
	) -> some NSMetadataAttributeProtocol<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		let modifier = NSMetadataAttributeModifier.CompactMapModifier<Self.Output, OutputElement>(transform)
		return self.modifier(modifier)
	}
}
