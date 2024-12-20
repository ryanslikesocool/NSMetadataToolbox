public struct ModifiedNSMetadataItemAttribute<Upstream, Downstream> where
	Upstream: NSMetadataItemAttributeProtocol,
	Downstream: NSMetadataItemAttributeProtocol,
	Upstream.Output == Downstream.Input
{
	private let upstream: Upstream
	private let downstream: Downstream

	public init(upstream: Upstream, downstream: Downstream) {
		self.upstream = upstream
		self.downstream = downstream
	}
}

// MARK: - NSMetadataItemAttributeProtocol

extension ModifiedNSMetadataItemAttribute: NSMetadataItemAttributeProtocol {
	public typealias Input = Upstream.Input
	public typealias Output = Downstream.Output

	public func process(_ value: Input) -> Output {
		let intermediate = upstream.process(value)
		return downstream.process(intermediate)
	}
}
