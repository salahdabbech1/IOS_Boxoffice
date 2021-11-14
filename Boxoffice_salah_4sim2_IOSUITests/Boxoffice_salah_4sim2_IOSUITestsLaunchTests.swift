//
//  Boxoffice_salah_4sim2_IOSUITestsLaunchTests.swift
//  Boxoffice_salah_4sim2_IOSUITests
//
//  Created by Salah_4sim2 on 14/11/2021.
//

import XCTest

class Boxoffice_salah_4sim2_IOSUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
