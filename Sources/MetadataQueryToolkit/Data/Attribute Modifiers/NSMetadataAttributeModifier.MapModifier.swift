public extension NSMetadataAttributeModifier {
	struct MapModifier<Input, Output>: NSMetadataAttributeProtocol {
		private let transform: (Input) -> Output

		public init(_ transform: @escaping (Input) -> Output) {
			self.transform = transform
		}

		public func process(_ value: Input) -> Output {
			transform(value)
		}
	}
}

// MARK: - Convenience

public extension NSMetadataAttributeProtocol {
	func map<Output>(
		_ transform: @escaping (Self.Output) -> Output
	) -> some NSMetadataAttributeProtocol<Self.Input, Output> {
		let modifier = NSMetadataAttributeModifier.MapModifier(transform)
		return self.modifier(modifier)
	}

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
