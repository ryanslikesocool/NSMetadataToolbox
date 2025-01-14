# NSMetadataToolbox

Extensions and conveniences for Apple's metadata APIs.


## NOTICE

**This package is under development and not considered production-ready.**<br/>
Breaking changes are common, documentation is incomplete, and support is limited.  Use at your own risk.


---

## Installation (Swift Package Manager)

Add the following entry to your package dependencies...
```swift
.package(url: "https://github.com/ryanslikesocool/NSMetadataToolbox.git", from: "0.0.6"),
```
...and your target dependencies.
```swift
.target(
	name: "MyTarget",
	dependencies: [
		"NSMetadataToolbox",
	]
),
```

---


## Documentation

[Quick Start Guide](Sources/NSMetadataToolbox/Documentation.docc/Articles/QuickStart.md)

Most of this package is documented with
[DocC](https://www.swift.org/documentation/docc/)\.
<br/>
To view documentation in Xcode, select `Product > Build Documentation` from the menu bar.

---


## Dependencies

| Dependency | Reason |
| - | - |
| [DeclarativeCore](https://github.com/ryanslikesocool/DeclarativeCore) | Shared declarative code. |
