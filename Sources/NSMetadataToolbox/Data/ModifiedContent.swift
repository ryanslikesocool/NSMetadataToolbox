internal struct ModifiedContent<Upstream, Downstream> {
	private let upstream: Upstream
	private let downstream: Downstream

	public init(upstream: Upstream, downstream: Downstream) {
		self.upstream = upstream
		self.downstream = downstream
	}
}

// MARK: - NSMetadataAttributeProtocol

extension ModifiedContent: NSMetadataAttributeProtocol where
	Upstream: NSMetadataAttributeProtocol,
	Downstream: NSMetadataAttributeProtocol,
	Upstream.Output == Downstream.Input
{
	typealias Input = Upstream.Input
	typealias Output = Downstream.Output

	func process(_ value: Input) -> Output {
		let intermediate = upstream.process(value)
		return downstream.process(intermediate)
	}
}
