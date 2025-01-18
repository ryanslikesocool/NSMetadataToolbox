/// The alternative display names of the file.
///
/// A `CFArray` of `CFString`s.
@available(macOS 10.9, *)
public let kMDItemAlternateNames: String = "kMDItemAlternateNames"

/// The display name of the App Store category for an application item.
///
/// A `CFString`.
@available(macOS 10.6.6, *)
public let kMDItemAppStoreCategory: String = "kMDItemAppStoreCategory"

/// The UTI of the App Store category for an application item.
///
/// A `CFString`.
///
/// See
/// [`LSApplicationCategoryType`]( https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/LaunchServicesKeys.html#//apple_ref/doc/uid/TP40009250-SW8 )
/// for a list of possible values.
@available(macOS 10.6.6, *)
public let kMDItemAppStoreCategoryType: String = "kMDItemAppStoreCategoryType"

// A `CFNumber` containing a Boolean value.
@available(macOS 10.0, *)
public let kMDItemFSIsReadable: String = "kMDItemFSIsReadable"

// A `CFNumber` containing a Boolean value.
@available(macOS 10.0, *)
public let kMDItemFSIsWriteable: String = "kMDItemFSIsWriteable"

// A `CFNumber` containing a Boolean value.
@available(macOS 10.0, *)
public let kMDItemIsQuarantined: String = "kMDItemIsQuarantined"

/// The logical size of the item, measured in bytes.
///
/// A `CFNumber`.
@available(macOS 10.9, *)
public let kMDItemLogicalSize: String = "kMDItemLogicalSize"

/// The physical size of the item, measured in bytes.
///
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