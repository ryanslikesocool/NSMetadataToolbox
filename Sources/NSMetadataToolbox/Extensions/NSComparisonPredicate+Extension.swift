import Foundation

public extension NSComparisonPredicate {
	/// - Parameters:
	///   - attributeKeyType:
	///   - comparisonValue:
	convenience init<Key>(
		attributeKey attributeKeyType: Key.Type,
		equals comparisonValue: some CVarArg
	) where Key: NSMetadataAttributeKey {
		// NOTE: We use different substitution arguments because we're
		// replacing a key path on the left side and an object value on the right side.
		// See
		// [NSHipster's Article]( https://nshipster.com/nspredicate/#substitutions )
		// for more information.
		let format: String = "%K == %@"
		
		self.init(format: format, attributeKeyType.attributeKey, comparisonValue)

		// An alternative is to use the `init(fromMetadataQueryString:)` initializer,
		// but the overload doesn't format the string for us,
		// so we have to do it ourselves.
		// The format string is a little less straightforward.
		// let format: String = #"%@ == "%@""#
		// NSPredicate(fromMetadataQueryString: String(format: format, contentTypeKey, desiredContentType.identifier))
	}
}
