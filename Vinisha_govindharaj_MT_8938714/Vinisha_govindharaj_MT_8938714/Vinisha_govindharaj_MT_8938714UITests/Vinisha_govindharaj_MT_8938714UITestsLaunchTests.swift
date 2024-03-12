//
//  Vinisha_govindharaj_MT_8938714UITestsLaunchTests.swift
//  Vinisha_govindharaj_MT_8938714UITests
//
//  Created by user240738 on 3/7/24.
//

import XCTest

final class Vinisha_govindharaj_MT_8938714UITestsLaunchTests: XCTestCase {

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
