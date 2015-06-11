//
//  Continuous_Integration_Test_UI_Tests.swift
//  Continuous Integration Test UI Tests
//
//  Created by Groom, Stephen on 10/06/2015.
//  Copyright © 2015 Sage. All rights reserved.
//

import Foundation
import XCTest

class Continuous_Integration_Test_UI_Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        let backButton = app.buttons.elementAtIndex(0)
        app.tables.staticTexts["First"].tap()
        XCTAssertTrue(app.staticTexts["First"].exists)
        XCTAssertTrue(app.staticTexts.elementMatchingPredicate(NSPredicate(format: "label CONTAINS 'tenderloin ball tip capicola, kielbasa sirloin sausage turkey'")).exists)
        backButton.tap()
        app.tables.staticTexts["Second"].tap()
        XCTAssertTrue(app.staticTexts["Second"].exists)
        XCTAssertTrue(app.staticTexts.elementMatchingPredicate(NSPredicate(format: "label CONTAINS 'capicola pig pastrami short loin pancetta frankfurter'")).exists)
        backButton.tap()
        app.tables.staticTexts["Third"].tap()
        XCTAssertTrue(app.staticTexts["Third"].exists)
        XCTAssertTrue(app.staticTexts.elementMatchingPredicate(NSPredicate(format: "label CONTAINS 'sirloin boudin exercitation mollit deserunt'")).exists)
        backButton.tap()
        
    }
    
    
}
