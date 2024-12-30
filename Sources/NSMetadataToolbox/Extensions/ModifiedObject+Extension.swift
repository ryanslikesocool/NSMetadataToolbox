import DeclarativeCore

extension ModifiedObject: NSMetadataAttributeObject where
	Upstream: NSMetadataAttributeObject,
	Downstream: NSMetadataAttributeObject,
	Upstream.Output == Downstream.Input
{
	public typealias Input = Upstream.Input
	public typealias Output = Downstream.Output

	public func process(_ input: Input) throws -> Output {
		let intermediate = try upstream.process(input)
		return try downstream.process(intermediate)
	}
}
