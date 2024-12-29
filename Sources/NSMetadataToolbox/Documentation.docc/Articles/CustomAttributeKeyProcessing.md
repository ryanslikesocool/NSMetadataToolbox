# Custom Attribute Key Processing

Process attribute values.

## Example

In some circumstances, additional processing may be desired for attribute keys.

This example converts the attribute value for the key
[`NSMetadataItemContentTypeKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontenttypekey)
to a
[`UTType`](https://developer.apple.com/documentation/uniformtypeidentifiers/uttype-swift.struct)
by declaring a custom implementation for
``NSMetadataAttributeObject/process(_:)``.
```swift
import Foundation
import UTType

extension NSMetadataAttributeKeys {
	struct UTContentType: NSMetadataAttributeKey {
		static var attributeKey: String { 
			NSMetadataItemContentTypeKey
		}

		// The associated `Value` type is inferred from
		// this function's return type.
		func process(_ input: NSMetadataItem) throws -> UTType {
			// Retrieve the `attributeValue` from `NSMetadataItem`.
			guard 
				let attributeValue: Any = input.value(forAttribute: Self.attributeKey)
			else {
				throw NSMetadataError
					.unexpectedNil
			}

			// Cast the `attributeValue` to the expected type for the `attributeKey` (`String`).
			guard
				let rawValue: String = attributeValue as? String
			else {
				throw NSMetadataError
					.castFailed(from: attributeValue, to: String.self)
			}

			// Convert the `rawValue` to the output `UTType`. 
			guard	
				let resultValue: UTType = UTType(rawValue)
			else {
				throw NSMetadataError
					.conversionFailed(from: rawValue, to: UTType.self)
			}

			return resultValue
		}
	}
}
```

- Remark: The functionality shown in this example is provided by ``NSMetadataAttributeKeys/ContentType/asUTType()``.


## See Also

- ``NSMetadataAttributeKey``
- ``NSMetadataAttributeObject/process(_:)``
- ``NSMetadataAttributeKeys/ContentType/asUTType()``
