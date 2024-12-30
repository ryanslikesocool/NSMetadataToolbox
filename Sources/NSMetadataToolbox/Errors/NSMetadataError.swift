public struct NSMetadataError {
	let rawValue: RawValue

	private init(rawValue: RawValue) {
		self.rawValue = rawValue
	}
}

// MARK: - Sendable

extension NSMetadataError: Sendable { }

// MARK: - Error

extension NSMetadataError: Error { }

// MARK: - Convenience

public extension NSMetadataError {
	static let unexpectedNil: Self = Self(rawValue: .unexpectedNil)

	static func castFailed(from inputType: Any.Type, to outputType: Any.Type) -> Self {
		Self(rawValue: .castFailed(input: inputType, output: outputType))
	}

	static func castFailed<Input>(from inputValue: borrowing Input, to outputType: Any.Type) -> Self {
		castFailed(from: Input.self, to: outputType)
	}

	static func conversionFailed(from inputType: Any.Type, to outputType: Any.Type) -> Self {
		Self(rawValue: .conversionFailed(input: inputType, output: outputType))
	}

	static func conversionFailed<Input>(from inputValue: borrowing Input, to outputType: Any.Type) -> Self {
		conversionFailed(from: Input.self, to: outputType)
	}
}
