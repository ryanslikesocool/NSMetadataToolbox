extension NSMetadataError {
	enum RawValue {
		case unexpectedNil
		case castFailed(input: Any.Type, output: Any.Type)
		case conversionFailed(input: Any.Type, output: Any.Type)
	}
}

// MARK: - Sendable

extension NSMetadataError.RawValue: Sendable { }
