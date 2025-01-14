/// ## Topics
/// ### Errors
/// - ``missingValue(forKey:)``
/// - ``castFailed(from:to:)-7oyil``
/// - ``castFailed(from:to:)-z28n``
/// - ``conversionFailed(from:to:)-7xul0``
/// - ``conversionFailed(from:to:)-3qv50``
public struct NSMetadataError {
	private let rawValue: RawValue

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
	/// - Parameter attributeKey:
	static func missingValue(
		forKey attributeKey: String
	) -> Self {
		Self(rawValue: .missingAttributeValue(key: attributeKey))
	}

	/// - Parameters:
	///   - inputType: The input type of the cast.
	///   - outputType: The desired output type of the cast.
	static func castFailed(
		from inputType: Any.Type,
		to outputType: Any.Type
	) -> Self {
		Self(rawValue: .castFailed(input: inputType, output: outputType))
	}

	/// - Parameters:
	///   - inputValue: The input value of the cast.
	///   - outputType: The output type of the cast.
	static func castFailed<Input>(
		from inputValue: borrowing Input,
		to outputType: Any.Type
	) -> Self {
		castFailed(from: Input.self, to: outputType)
	}

	/// - Parameters:
	///   - inputType: The input type of the conversion.
	///   - outputType: The output type of the conversion.
	static func conversionFailed(
		from inputType: Any.Type,
		to outputType: Any.Type
	) -> Self {
		Self(rawValue: .conversionFailed(input: inputType, output: outputType))
	}

	/// - Parameters:
	///   - inputValue: The input value of the conversion.
	///   - outputType: The output type of the conversion.
	static func conversionFailed<Input>(
		from inputValue: borrowing Input,
		to outputType: Any.Type
	) -> Self {
		conversionFailed(from: Input.self, to: outputType)
	}
}
