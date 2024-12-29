public extension NSMetadataAttributeModifiers {
	struct Map<Input, Output>: NSMetadataAttributeObject {
		private let transform: (Input) throws -> Output

		public init(_ transform: @escaping (Input) throws -> Output) {
			self.transform = transform
		}

		public func process(_ input: Input) throws -> Output {
			try transform(input)
		}
	}
}

// MARK: - Convenience

public extension NSMetadataAttributeObject {
	/// Perform a `map` operation on an attribute object.
	func map<Output>(
		_ transform: @escaping (Self.Output) throws -> Output
	) -> some NSMetadataAttributeObject<Self.Input, Output> {
		let modifier = NSMetadataAttributeModifiers.Map<Self.Output, Output>(transform)
		return self.modifier(modifier)
	}

	/// Perform a `map` operation on the attribute object.
	func map<OutputElement>(
		_ transform: @escaping (Self.Output.Element) throws -> OutputElement
	) -> some NSMetadataAttributeObject<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		map { (input: Self.Output) throws -> [OutputElement] in
			try input.map(transform)
		}
	}
}
