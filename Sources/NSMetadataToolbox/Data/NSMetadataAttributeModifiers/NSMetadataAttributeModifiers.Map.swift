public extension NSMetadataAttributeModifiers {
	struct Map<Input, Output>: NSMetadataAttributeProtocol {
		private let transform: (Input) -> Output

		public init(_ transform: @escaping (Input) -> Output) {
			self.transform = transform
		}

		public func process(_ input: Input) -> Output {
			transform(input)
		}
	}
}

// MARK: - Convenience

public extension NSMetadataAttributeProtocol {
	/// Perform a `map` operation on an attribute object.
	func map<Output>(
		_ transform: @escaping (Self.Output) -> Output
	) -> some NSMetadataAttributeProtocol<Self.Input, Output> {
		let modifier = NSMetadataAttributeModifiers.Map<Self.Output, Output>(transform)
		return self.modifier(modifier)
	}

	/// Perform a `map` operation on the attribute object.
	func map<OutputElement>(
		_ transform: @escaping (Self.Output.Element) -> OutputElement
	) -> some NSMetadataAttributeProtocol<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		map { (input: Self.Output) -> [OutputElement] in
			input.map(transform)
		}
	}
}
