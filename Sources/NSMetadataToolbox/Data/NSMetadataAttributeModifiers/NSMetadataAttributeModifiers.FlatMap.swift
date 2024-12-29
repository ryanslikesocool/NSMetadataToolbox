public extension NSMetadataAttributeModifiers {
	struct FlatMap<Input, SegmentOfResult>: NSMetadataAttributeObject where
		Input: Sequence,
		SegmentOfResult: Sequence
	{
		private let transform: (Input.Element) throws -> SegmentOfResult

		public init(_ transform: @escaping (Input.Element) throws -> SegmentOfResult) {
			self.transform = transform
		}

		public func process(_ input: Input) throws -> [SegmentOfResult.Element] {
			try input.flatMap(transform)
		}
	}
}

// MARK: - Convenience

public extension NSMetadataAttributeObject {
	/// Perform a `flatMap` operation on an attribute object.
	func flatMap<SegmentOfResult>(
		_ transform: @escaping (Self.Output.Element) throws -> SegmentOfResult
	) -> some NSMetadataAttributeObject<Self.Input, [SegmentOfResult.Element]> where
		Self.Output: Sequence,
		SegmentOfResult: Sequence
	{
		let modifier = NSMetadataAttributeModifiers.FlatMap<Self.Output, SegmentOfResult>(transform)
		return self.modifier(modifier)
	}
}
