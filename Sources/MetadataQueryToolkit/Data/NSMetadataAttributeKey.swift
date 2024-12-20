import class Foundation.NSMetadata.NSMetadataItem

public struct NSMetadataAttributeKey<Key> where
	Key: NSMetadataAttributeKeyProtocol
{
	public init() { }
}

// MARK: - NSMetadataAttributeProtocol

extension NSMetadataAttributeKey: NSMetadataAttributeProtocol {
	public typealias Input = NSMetadataItem
	public typealias Output = Key.Value?

	public func process(_ value: Input) -> Output {
		value.value(forAttribute: Key.attributeKey) as? Key.Value
	}
}
