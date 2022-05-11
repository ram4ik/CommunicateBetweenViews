//
//  CommunicateBetweenViewsUITestsLaunchTests.swift
//  CommunicateBetweenViewsUITests
//
//  Created by Ramill Ibragimov on 11.05.2022.
//

import XCTest

class CommunicateBetweenViewsUITestsLaunchTests: XCTestCase {
    
    var app: XCUIApplication = XCUIApplication()
    
    override func setUp() {
        app.launch()
    }
    
    override func tearDown() {
        app.terminate()
    }

    func testAppStatesWithButtons() throws {
        
        let toggleCollorButton: XCUIElement = app.buttons["Toggle Color"]
        let toggleScaleButton: XCUIElement = app.buttons["Toggle Scale"]
        
        for _ in 0..<2 {
            toggleCollorButton.tap()
            toggleCollorButton.tap()
            
            toggleScaleButton.tap()
        }
    }
}
