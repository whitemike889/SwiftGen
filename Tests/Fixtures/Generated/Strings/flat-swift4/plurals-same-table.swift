// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable function_parameter_count identifier_name line_length type_body_length
internal enum L10n {
  /// Some alert body there
  internal static let alertMessage = L10n.tr("Localizable", "alert__message")
  /// Title of the alert
  internal static let alertTitle = L10n.tr("Localizable", "alert__title")
  /// These are %3$@'s %1$d %2$@.
  internal static func objectOwnership(_ p1: Int, _ p2: Any, _ p3: Any) -> String {
    return L10n.tr("Localizable", "ObjectOwnership", p1, String(describing: p2), String(describing: p3))
  }
  /// This is a %% character.
  internal static let percent = L10n.tr("Localizable", "percent")
  /// Hello, my name is %@ and I'm %d
  internal static func `private`(_ p1: Any, _ p2: Int) -> String {
    return L10n.tr("Localizable", "private", String(describing: p1), p2)
  }
  /// Object: '%@', Character: '%c', Integer: '%d', Float: '%f', CString: '%s', Pointer: '%p'
  internal static func types(_ p1: Any, _ p2: CChar, _ p3: Int, _ p4: Float, _ p5: UnsafePointer<CChar>, _ p6: UnsafeRawPointer) -> String {
    return L10n.tr("Localizable", "types", String(describing: p1), p2, p3, p4, p5, Int(bitPattern: p6))
  }
  /// Plural case 'other': You have %d apples. Wow that is a lot!
  internal static func applesCount(_ p1: Int) -> String {
    return L10n.tr("Localizable", "apples.count", p1)
  }
  /// Those %d bananas belong to %@.
  internal static func bananasOwner(_ p1: Int, _ p2: Any) -> String {
    return L10n.tr("Localizable", "bananas.owner", p1, String(describing: p2))
  }
  /// Plural case 'other': %ld matches
  internal static func competitionEventNumberOfMatches(_ p1: Int) -> String {
    return L10n.tr("Localizable", "competition.event.number-of-matches", p1)
  }
  /// Plural case 'other': %ld subscriptions
  internal static func feedSubscriptionCount(_ p1: Int) -> String {
    return L10n.tr("Localizable", "feed.subscription.count", p1)
  }
  /// Some Reserved Keyword there
  internal static let settingsNavigationBarSelf = L10n.tr("Localizable", "settings.navigation-bar.self")
  /// DeepSettings
  internal static let settingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep = L10n.tr("Localizable", "settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
  /// Settings
  internal static let settingsNavigationBarTitleEvenDeeper = L10n.tr("Localizable", "settings.navigation-bar.title.even.deeper")
  /// Here you can change some user profile settings.
  internal static let settingsUserProfileSectionFooterText = L10n.tr("Localizable", "settings.user__profile_section.footer_text")
  /// User Profile Settings
  internal static let settingsUserProfileSectionHEADERTITLE = L10n.tr("Localizable", "settings.user__profile_section.HEADER_TITLE")
}
// swiftlint:enable function_parameter_count identifier_name line_length type_body_length

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    // swiftlint:disable:next nslocalizedstring_key
    let format = NSLocalizedString(key, tableName: table, bundle: BundleToken.bundle, comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle = Bundle(for: BundleToken.self)
}
// swiftlint:enable convenience_type
