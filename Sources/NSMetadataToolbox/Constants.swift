/// A `CFArray` of `CFString`s.
@available(macOS 10.9, *)
public let kMDItemAlternateNames: String = "kMDItemAlternateNames"

/// A `CFString`.
@available(macOS 10.6.6, *)
public let kMDItemAppStoreCategory: String = "kMDItemAppStoreCategory"

/// A `CFString`.
@available(macOS 10.6.6, *)
public let kMDItemAppStoreCategoryType: String = "kMDItemAppStoreCategoryType"

/// A `CFNumber`.
@available(macOS 10.9, *)
public let kMDItemLogicalSize: String = "kMDItemLogicalSize"

/// A `CFNumber`.
@available(macOS 10.9, *)
public let kMDItemPhysicalSize: String = "kMDItemPhysicalSize"

/// A `CFArray` of `CFString`s.
///
/// - Remark: The
/// [`kMDItemSupportFileType`]( https://developer.apple.com/documentation/coreservices/kmditemsupportfiletype )
/// constant declared in the `CoreServices` module is deprecated as of macOS 10.5,
/// but many metadata items still have values for the attribute.
@available(macOS 10.5, *)
public let kMDItemSupportFileType: String = "kMDItemSupportFileType"

/// A `CFNumber`.
@available(macOS 10.9, *)
public let kMDItemUseCount: String = "kMDItemUseCount"

/// A `CFArray` of `CFDate`s.
@available(macOS 10.9, *)
public let kMDItemUsedDates: String = "kMDItemUsedDates"
