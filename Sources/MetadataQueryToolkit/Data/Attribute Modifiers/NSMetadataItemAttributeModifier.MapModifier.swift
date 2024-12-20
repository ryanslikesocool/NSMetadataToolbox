public extension NSMetadataItemAttributeModifier {
	struct MapModifier<Input, Output>: NSMetadataItemAttributeProtocol {
		private let transform: (Input) -> Output

		public init(_ transform: @escaping (Input) -> Output) {
			self.transform = transform
		}

		public func process(_ value: Input) -> Output {
			transform(value)
		}
	}
}

// MARK: Convenience

public extension NSMetadataItemAttributeProtocol {
	func map<Output>(
		_ transform: @escaping (Self.Output) -> Output
	) -> some NSMetadataItemAttributeProtocol<Self.Input, Output> {
		let modifier = NSMetadataItemAttributeModifier.MapModifier(transform)
		return self.modifier(modifier)
	}

	func map<OutputElement>(
		_ transform: @escaping (Self.Output.Element) -> OutputElement
	) -> some NSMetadataItemAttributeProtocol<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		map { (input: Self.Output) -> [OutputElement] in
			input.map(transform)
		}
	}
}
