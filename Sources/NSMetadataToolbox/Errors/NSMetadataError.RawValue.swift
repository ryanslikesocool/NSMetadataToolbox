extension NSMetadataError {
	enum RawValue {
		/// ## See Also
		/// - ``NSMetadataError/missingValue(forKey:)``
		case missingAttributeValue(key: String)

		/// ## See Also
		/// - ``NSMetadataError/castFailed(from:to:)-7oyil``
		/// - ``NSMetadataError/castFailed(from:to:)-z28n``
		case castFailed(input: Any.Type, output: Any.Type)

		/// ## See Also
		/// - ``NSMetadataError/conversionFailed(from:to:)-7xul0``
		/// - ``NSMetadataError/conversionFailed(from:to:)-3qv50``
		case conversionFailed(input: Any.Type, output: Any.Type)
	}
}

// MARK: - Sendable

extension NSMetadataError.RawValue: Sendable { }
