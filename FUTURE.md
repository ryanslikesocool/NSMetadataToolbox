#  Future

Notes and ideas about the future of this package.

---


## Shorthand Attribute Key Accessor Improvements

### The Past

The original declarations for shorthand attribute key accessors used to look like this:
```swift
extension NSMetadataItemAttributeKey where
	Self == NSMetadataItemAttribute.DisplayNameKey
{
	static var displayName: Self.Type {
		Self.self
	}
}
```
...with the intent of being used like this:
```swift
func readDisplayName(from metadataItem: NSMetadataItem) -> String? {
	metadataItem.value(forAttribute: .displayName)
}
```

This declaration compiles just fine.
Using the `Self` type cuts down on a ton of repetitions of partially- or fully- qualified type names.
The declaration and usage syntax was also very similar to SwiftUI.
<br/>
However, when used as an argument in `NSMetadataItem.value(forAttribute:)` the compiler
can't infer the type of the generic `Key` type argument.
I also have to ensure that availability attributes match
between the attribute key declaration and protocol extension.


### The Present

The current implementation uses keypaths, with shorthand attribute key accessors declared like this:
```swift
extension NSMetadataItemAttribute {
	// The attribute key type only needs to be partially qualified
	// because the attribute key is declared
	// as an extension of `NSMetadataItemAttribute`.
	var displayName: DisplayNameKey.Type {
		DisplayNameKey.self
	}
}
```
...and used like this:
```swift
func readDisplayName(from metadataItem: NSMetadataItem) -> String? {
	metadataItem.value(forAttribute: \.displayName)
}
```
The shorthand attribute key declaration location has the added benefit
of being declared in the same scope as the attribute key itself,
so I don't need to remember to apply any additional availability attributes.
<br/>
But this still isn't terribly ideal due to the shorthand attribute key accessor
being declared as a local computed property
and not a `static` computed property or constant.
The [`KeyPath`](https://developer.apple.com/documentation/swift/keypath) type is also a `class`, which has
some potential performance implications.

The difference in usage from the original to current implementation is
a single `\` (backslash) character prefix, but I'm still not sure
if I prefer the SwiftUI-esque or keypath-based implementation.
| Aspect | Preference |
| - | - |
| Declaration simplicity | Past |
| Performance | Past |
| Availability attributes | Present |
| Usage | Either |


### The Future

As of writing this sentence (Dec 17, 2024), the
[Swift language proposal for metatype keypaths](https://github.com/swiftlang/swift-evolution/blob/main/proposals/0438-metatype-keypath.md)
has been accepted, but not implemented.

Once the language feature is implemented, multiple changes should be made:
1. Shorthand attribute key accessor declarations should become `static`, and potentially be changed into constants.
2. Overloads for `NSMetadataItem.value(forAttribute:)` that accept keypaths with
`NSMetadataItemAttribute` as the base should instead use
`NSMetadataItemAttribute.Type` as the root in the function signature.
<br/>
The function body shouldn't require any changes,
since the argument only provides the concrete type for `Key`
and is never actually used.
```swift
// ----- The Present -----

// 1.
extension NSMetadataItemAttribute {
	var displayName: DisplayNameKey.Type {
		DisplayNameKey.self
	}
}

// 2.
extension NSMetadataItem {
	func value<Key>(
		forAttribute key: KeyPath<NSMetadataItemAttribute, Key.Type>
	) -> Key.Value? where
		Key: NSMetadataItemAttributeKey
	{
		/* ... */
	}
}
```
```swift
// ----- The Future -----

// 1.
extension NSMetadataItemAttribute {
	// Potentially `static let`
	static var displayName: DisplayNameKey.Type {
//	^.....^
		DisplayNameKey.self
	}
}

// 2.
extension NSMetadataItem {
	func value<Key>(
		forAttribute key: KeyPath<NSMetadataItemAttribute.Type, Key.Type>
//														 ^...^
	) -> Key.Value? where
		Key: NSMetadataItemAttributeKey
	{
		/* ... */
	}
}
```

Metatype keypaths would certainly *improve* the current implementation,
but not necessarily to a point that I'm happy with.

---


## Attribute Key Declaration Boilerplate Reduction

### The Present

Declaring attribute keys currently requires a lot of boilerplate.
```swift
extension NSMetadataItemAttribute {
	enum DisplayNameKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String {
			NSMetadataItemDisplayNameKey
		}
	}

	// MARK: Convenience

	// This property is technically optional,
	// but always declared for attribute keys provided by the package.
	var displayName: DisplayNameKey.Type {
		DisplayNameKey.self
	}
}
```
<sup>See
[Shorthand Attribute Key Accessor Improvements](#shorthand-attribute-key-accessor-improvements)
for notes on the `displayName` property.</sup>


### The (Potential) Future

Ideally, this could be simplified with a single `@AttributeKey`<sup>\*</sup> macro,
similar to SwiftUI's
[`@Entry`](https://developer.apple.com/documentation/swiftui/entry())
macro.
<br/>
<sup>\* name not final</sup>
```swift
// ----- Before Macro Expansion -----

extension NSMetadataItemAttribute {
	@AttributeKey(NSMetadataItemDisplayNameKey, ofType: String.self)
	enum DisplayNameKey { }
}
```
```swift
// ----- After Macro Expansion -----

extension NSMetadataItemAttribute {
	// A `MemberMacro` implementation could validate
	// that the object is an `enum`
	// and doesn't contain any members.
	enum DisplayNameKey { }

	// The shorthand attribute key accessor could be
	// generated from `PeerMacro` implementation.
	// This could cause issues if the attribute key type name
	// doesn't follow a standard convention.
	var displayName: DisplayNameKey.Type {
		DisplayNameKey.self
	}
}

// The standard boilerplate could be generated
// from an `ExtensionMacro` implementation.
extension NSMetadataItemAttribute.DisplayNameKey: NSMetadataItemAttributeKey {
	public typealias Value = String

	public static var attributeKey: String {
		NSMetadataItemDisplayNameKey
	}
}
```
However, to use macros,
[Swift Syntax](https://github.com/swiftlang/swift-syntax)
needs to be added as a dependency.
<br/>
Any consumers would have to depend on
and compile Swift Syntax before using this package.
It can substantially increase compile time
and create issues if another package requires
a different version of Swift Syntax.
<br/>
This is a
<ins>[well](https://forums.swift.org/t/compilation-extremely-slow-since-macros-adoption/67921)</ins>
<ins>[documented](https://forums.swift.org/t/macro-adoption-concerns-around-swiftsyntax/66588)</ins>
headache for other developers.

In the meantime, I could consider using
[Sourcery](https://github.com/krzysztofzablocki/Sourcery)
to do essentially the same thing.
Package consumers would still have to write boilerplate.

All that said, there's a finite number of
[pre-defined attribute keys](https://developer.apple.com/documentation/foundation/nsmetadataitem#1681152),
and it's not like I'm extending a quickly-evolving framework.

---


## `NSMetadataItem` Subscript

### The Present

Attribute keys are currently used as an argument in the `NSMetadataItem.value(forAttribute:)` function.
```swift
func readDisplayName(from metadataItem: MetadataItem) -> String? {
	metadataItem.value(forAttribute: NSMetadataItemAttribute.DisplayNameKey.self)
}
```
This is syntactically similar to the
[original implementation](https://developer.apple.com/documentation/foundation/nsmetadataitem/1411721-value)
in the Foundation module.

### The (Potential<sup>\*</sup>) Future
<sup>\* but unlikely</sup>

I could declare subscripts in an extension for `NSMetadataItem` with the same arguments as the current functions.
```swift
func readDisplayName(from metadataItem: MetadataItem) -> String? {
	metadataItem[NSMetadataItemAttribute.DisplayNameKey.self]
}
```
This would add an API similar to SwiftUI's
[`EnvironmentValues` subscript](https://developer.apple.com/documentation/swiftui/environmentvalues/subscript(_:))\.