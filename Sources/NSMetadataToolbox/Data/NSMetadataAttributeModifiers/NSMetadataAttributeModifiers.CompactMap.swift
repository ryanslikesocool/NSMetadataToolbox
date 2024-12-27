public extension NSMetadataAttributeModifiers {
	struct CompactMap<Input, OutputElement>: NSMetadataAttributeObject where
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

public extension NSMetadataAttributeObject {
	/// Perform a `compactMap` operation on an attribute object.
	func compactMap<OutputElement>(
		_ transform: @escaping (Self.Output.Element) -> OutputElement?
	) -> some NSMetadataAttributeObject<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		let modifier = NSMetadataAttributeModifiers.CompactMap<Self.Output, OutputElement>(transform)
		return self.modifier(modifier)
	}
}
