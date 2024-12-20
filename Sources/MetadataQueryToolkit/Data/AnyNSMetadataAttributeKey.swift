import Foundation

public struct AnyNSMetadataAttributeKey<Key> where
	Key: NSMetadataItemAttributeKey
{
	public init() { }
}

// MARK: - NSMetadataAttributeProtocol

extension AnyNSMetadataAttributeKey: NSMetadataAttributeProtocol {
	public typealias Input = NSMetadataItem
	public typealias Output = Key.Value?

	public func process(_ value: Input) -> Output {
		value.value(forAttribute: Key.attributeKey) as? Key.Value
	}
}
