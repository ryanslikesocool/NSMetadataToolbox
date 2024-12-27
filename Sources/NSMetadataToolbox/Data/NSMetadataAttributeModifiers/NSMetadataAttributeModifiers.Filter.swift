public extension NSMetadataAttributeModifiers {
	struct Filter<Input>: NSMetadataAttributeObject where
		Input: Sequence
	{
		public typealias Output = [Input.Element]

		private let isIncluded: (Input.Element) -> Bool

		public init(_ isIncluded: @escaping (Input.Element) -> Bool) {
			self.isIncluded = isIncluded
		}

		public func process(_ input: Input) -> Output {
			input.filter(isIncluded)
		}
	}
}

// MARK: - Convenience

public extension NSMetadataAttributeObject {
	/// Perform a `filter` operation on an attribute object.
	func filter<Output>(
		_ isIncluded: @escaping (Self.Output.Element) -> Bool
	) -> some NSMetadataAttributeObject<Self.Input, [Self.Output.Element]> where
		Self.Output: Sequence
	{
		let modifier = NSMetadataAttributeModifiers.Filter<Self.Output>(isIncluded)
		return self.modifier(modifier)
	}
}
