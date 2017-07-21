//: #### Other pages
//:
//: * [Demo for `swiftgen colors`](Colors-Demo)
//: * [Demo for `swiftgen fonts`](Fonts-Demo)
//: * [Demo for `swiftgen storyboards`](Storyboards-Demo)
//: * Demo for `swiftgen strings`
//: * [Demo for `swiftgen xcassets`](XCAssets-Demo)

//: #### Example of code generated by swiftgen-strings

// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

enum L10n {
	static let alertMessage = L10n.tr("Localizable", "alert_message")
	static let alertTitle = L10n.tr("Localizable", "alert_title")
	static func applesCount(_ p1: Int) -> String {
		return L10n.tr("Localizable", "apples.count", p1)
	}
	static func bananasOwner(_ p1: Int, _ p2: String) -> String {
		return L10n.tr("Localizable", "bananas.owner", p1, p2)
	}
	static func `private`(_ p1: String, _ p2: Int) -> String {
		return L10n.tr("Localizable", "private", p1, p2)
	}
	static func objectOwnership(_ p1: Int, _ p2: String, _ p3: String) -> String {
		return L10n.tr("Localizable", "ObjectOwnership", p1, p2, p3)
	}
}

extension L10n {
	fileprivate static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
		let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
		return String(format: format, locale: Locale.current, arguments: args)
	}
}

private final class BundleToken {}
//: #### Usage example

let alertTitle = L10n.alertTitle
let hello1 = L10n.private("David", 29)
let hello2 = L10n.private("Olivier", 32) // Prints as a string in the console because it's CustomStringConvertible

// note the inversion of parameters' order due to usage of %1$d, %2$@ and %1$@ in Localizable.strings
L10n.objectOwnership(3, "Apples", "John")
