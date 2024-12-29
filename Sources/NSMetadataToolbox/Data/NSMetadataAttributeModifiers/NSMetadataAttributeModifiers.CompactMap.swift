public extension NSMetadataAttributeModifiers {
	struct CompactMap<Input, OutputElement>: NSMetadataAttributeObject where
		Input: Sequence
	{
		private let transform: (Input.Element) throws -> OutputElement?

		public init(_ transform: @escaping (Input.Element) throws -> OutputElement?) {
			self.transform = transform
		}

		public func process(_ input: Input) throws -> [OutputElement] {
			try input.compactMap(transform)
		}
	}
}

// MARK: - Convenience

public extension NSMetadataAttributeObject {
	/// Perform a `compactMap` operation on an attribute object.
	func compactMap<OutputElement>(
		_ transform: @escaping (Self.Output.Element) throws -> OutputElement?
	) -> some NSMetadataAttributeObject<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		let modifier = NSMetadataAttributeModifiers.CompactMap<Self.Output, OutputElement>(transform)
		return self.modifier(modifier)
	}

	/// Perform a `compactMap` operation on an attribute object.
	func compactMap<Element>() -> some NSMetadataAttributeObject<Self.Input, [Self.Output.Element]> where
		Self.Output: Sequence,
		Self.Output.Element == Element?
	{
		compactMap { (element: Element?) -> Element? in
			element
		}
	}

	/// Perform a `compactMap` operation on an attribute object, returning only successes.
	func compactMap<Success, Failure>() -> some NSMetadataAttributeObject<Self.Input, [Success]> where
		Self.Output: Sequence,
		Self.Output.Element == Result<Success, Failure>,
		Failure: Error
	{
		compactMap { (element: Result<Success, Failure>) -> Success? in
			guard case let .success(success) = element else {
				return nil
			}
			return success
		}
	}
}
