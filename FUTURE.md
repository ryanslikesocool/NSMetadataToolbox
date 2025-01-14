#  Future

Notes and ideas about the future of this package.

---


## Attribute Key Declaration Boilerplate Reduction

### The Present

Declaring attribute keys currently requires a lot of boilerplate.
With documentation and availability attributes, these declarations can become even longer.
```swift
@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemDisplayNameKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemdisplaynamekey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/displayName``
	struct DisplayName: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			NSMetadataItemDisplayNameKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.DisplayName
{
	/// The attribute key for
	/// [`NSMetadataItemDisplayNameKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemdisplaynamekey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/DisplayName``
	static var displayName: Self {
		Self()
	}
}
```


### The (Potential) Future

Ideally, this could be simplified with a single `@AttributeKey`<sup>\*</sup> macro,
similar to SwiftUI's
[`@Entry`]( https://developer.apple.com/documentation/swiftui/entry() )
macro.
<br/>
<sup>\* name not final</sup>
```swift
// ----- Before Macro Expansion -----

extension NSMetadataAttributeKeys {
	@AttributeKey(
		named: NSMetadataItemDisplayNameKey,
		ofType: String.self,
		link: "[`NSMetadataItemDisplayNameKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemdisplaynamekey )" // optional
	)
	@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
	struct DisplayName { }
}
```
```swift
// ----- After Macro Expansion -----

public extension NSMetadataAttributeKeys {
	// A `MemberMacro` implementation could validate
	// that the object is a `struct`
	// and doesn't contain any members.

	// If the macro's `link` argument is not `nil`:	
	/// The attribute key for
	/// [`NSMetadataItemDisplayNameKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemdisplaynamekey ).

	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/displayName``
	@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
	struct DisplayName { }
}

// The standard boilerplate could be generated
// from an `ExtensionMacro` implementation.

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
extension NSMetadataAttributeKeys.DisplayName: NSMetadataAttributeKey {
	public typealias Output = String

	public static var attributeKey: String {
		NSMetadataItemDisplayNameKey
	}
	
	public init() { }
}

// The shorthand attribute key accessor might be an issue
// if I'm not able to extend `NSMetadataAttributeObject` from a macro.
// This could also cause issues if the attribute key type name
// doesn't follow a standard convention.
// Shorthand attribute key accessors may need to be declared manually.

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.DisplayName
{ 
	// If the macro's `link` argument is not `nil`:	
	/// The attribute key for
	/// [`NSMetadataItemDisplayNameKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemdisplaynamekey ).
	
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/DisplayName``
	static var displayName: Self {
		Self()
	}
}
```

However, to use macros,
[Swift Syntax]( https://github.com/swiftlang/swift-syntax )
needs to be added as a dependency.
<br/>
Any consumers would have to depend on
and compile Swift Syntax before using this package.
It can substantially increase compile time
and create issues if another package requires
a different version of Swift Syntax.
<br/>
This is a
<ins>[well]( https://forums.swift.org/t/compilation-extremely-slow-since-macros-adoption/67921 )</ins>
<ins>[documented]( https://forums.swift.org/t/macro-adoption-concerns-around-swiftsyntax/66588 )</ins>
headache for other developers.

In the meantime, I could consider using
[Sourcery]( https://github.com/krzysztofzablocki/Sourcery )
to do essentially the same thing.
Package consumers would still have to write boilerplate.

All that said, there's a finite number of
<ins>[pre-defined]( https://developer.apple.com/documentation/foundation/nsmetadataitem#1681152 )</ins>
<ins>[attribute]( https://developer.apple.com/documentation/coreservices/file_metadata/mditem#1658393 )</ins>
<ins>[keys]( https://developer.apple.com/documentation/coreservices/file_metadata#2934150 )</ins>,
and it's not like I'm extending a quickly-evolving framework.
