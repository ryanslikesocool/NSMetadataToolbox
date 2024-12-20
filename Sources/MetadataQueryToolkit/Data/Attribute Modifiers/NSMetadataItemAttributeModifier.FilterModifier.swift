public extension NSMetadataItemAttributeModifier {
	struct FilterModifier<Input>: NSMetadataItemAttributeProtocol where
		Input: Sequence
	{
		public typealias Output = [Input.Element]

		private let isIncluded: (Input.Element) -> Bool

		public init(_ isIncluded: @escaping (Input.Element) -> Bool) {
			self.isIncluded = isIncluded
		}

		public func process(_ value: Input) -> Output {
			value.filter(isIncluded)
		}
	}
}

// MARK: Convenience

public extension NSMetadataItemAttributeProtocol {
	func filter<Output>(
		_ isIncluded: @escaping (Self.Output.Element) -> Bool
	) -> some NSMetadataItemAttributeProtocol<Self.Input, [Self.Output.Element]> where
		Self.Output: Sequence
	{
		let modifier = NSMetadataItemAttributeModifier.FilterModifier<Self.Output>(isIncluded)
		return self.modifier(modifier)
	}
}
