// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import Foundation
@testable import Client
import UIKit

import XCTest

class DefaultSearchPrefsTests: XCTestCase {
    func testParsing_hasAllInfo_succeeds() {
        // setup the list json
        let searchPrefs = DefaultSearchPrefs(
            with: Bundle.main.resourceURL!.appendingPathComponent("SearchPlugins").appendingPathComponent("list.json")
        )!

        // setup the most popular locales
        let usa = (
            lang: ["en-US", "en"],
            region: "US",
            resultList: ["qwant"],
            resultDefault: "Qwant"
        )
        let england = (
            lang: ["en-GB", "en"],
            region: "GB",
            resultList: ["qwant"],
            resultDefault: "Qwant"
        )
        let france = (
            lang: ["fr-FR", "fr"],
            region: "FR",
            resultList: ["qwant"],
            resultDefault: "Qwant"
        )
        let japan = (
            lang: ["ja-JP", "ja"],
            region: "JP",
            resultList: ["qwant"],
            resultDefault: "Qwant"
        )
        let canada = (
            lang: ["en-CA", "en"],
            region: "CA",
            resultList: ["qwant"],
            resultDefault: "Qwant"
        )
        let russia = (
            lang: ["ru-RU", "ru"],
            region: "RU",
            resultList: ["qwant"],
            resultDefault: "Qwant"
        )
        let taiwan = (
            lang: ["zh-TW", "zh"],
            region: "TW",
            resultList: ["qwant"],
            resultDefault: "Qwant"
        )
        let china = (
            lang: ["zh-hans-CN", "zh-CN", "zh"],
            region: "CN",
            resultList: ["qwant"],
            resultDefault: "Qwant"
        )
        let germany = (
            lang: ["de-DE", "de"],
            region: "DE",
            resultList: ["qwant"],
            resultDefault: "Qwant"
        )
        let southAfrica = (
            lang: ["en-SA", "en"],
            region: "SA",
            resultList: ["qwant"],
            resultDefault: "Qwant"
        )
        let testLocales = [
            usa,
            england,
            france,
            japan,
            canada,
            russia,
            taiwan,
            china,
            germany,
            southAfrica
        ]

        // run tests
        testLocales.forEach { locale in
            XCTAssertEqual(searchPrefs.searchDefault(for: locale.lang, and: locale.region), locale.resultDefault, "incorrect search defaults for \(locale.lang) and \(locale.region)")
            XCTAssertEqual(searchPrefs.visibleDefaultEngines(for: locale.lang, and: locale.region), locale.resultList, "incorrect visible defaults for \(locale.lang) and \(locale.region)")
        }
    }

    func testParsing_hasNoLocalesAndNoRegionOverrides_usesDefault() {
        // setup the defaultOnlyTestList json
        let testBundle = Bundle(for: type(of: self))
        guard let filePath = testBundle.path(
            forResource: "defaultOnlyTestList",
            ofType: "json"
        ) else { fatalError("Couldn't find test file") }
        let searchPrefs = DefaultSearchPrefs(with: URL(fileURLWithPath: filePath))!

        // setup locale
        let us = (
            lang: ["en-US", "en"],
            region: "US",
            resultList: ["qwant"],
            resultDefault: "Qwant"
        )

        // run tests
        let expectedResult = "fakeDefault"
        XCTAssertEqual(
            searchPrefs.searchDefault(
                for: us.lang,
                and: us.region
            ),
            expectedResult,
            "incorrect for \(us.lang) and \(us.region)"
        )
        XCTAssertEqual(searchPrefs.visibleDefaultEngines(for: us.lang, and: us.region), [expectedResult])
    }
}
