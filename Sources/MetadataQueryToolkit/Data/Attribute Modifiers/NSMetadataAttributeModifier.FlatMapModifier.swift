public extension NSMetadataAttributeModifier {
	struct FlatMapModifier<Input, SegmentOfResult>: NSMetadataAttributeProtocol where
		Input: Sequence,
		SegmentOfResult: Sequence
	{
		private let transform: (Input.Element) -> SegmentOfResult

		public init(_ transform: @escaping (Input.Element) -> SegmentOfResult) {
			self.transform = transform
		}

		public func process(_ value: Input) -> [SegmentOfResult.Element] {
			value.flatMap(transform)
		}
	}
}

// MARK: - Convenience

public extension NSMetadataAttributeProtocol {
	func flatMap<SegmentOfResult>(
		_ transform: @escaping (Self.Output.Element) -> SegmentOfResult
	) -> some NSMetadataAttributeProtocol<Self.Input, [SegmentOfResult.Element]> where
		Self.Output: Sequence,
		SegmentOfResult: Sequence
	{
		let modifier = NSMetadataAttributeModifier.FlatMapModifier<Self.Output, SegmentOfResult>(transform)
		return self.modifier(modifier)
	}
}
