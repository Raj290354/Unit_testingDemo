//
//  CommonSteps.swift
//  UIUnitTestingDemoUITests
//
//  Created by Rakesh Kumar on 8/31/18.
//  Copyright © 2018 Seasia. All rights reserved.
//

import XCTest

extension BaseTests
    
{
    func TapButton(withIdentifier:String, app:XCUIApplication) {
        let button = app.buttons[withIdentifier]
        //let button = app.buttons[withIdentifier]
        button.tap()
    }
    func FillInTextField(withIdentifier:String,text:String, app:XCUIApplication) {
        let textfield = app.textFields[withIdentifier]
        textfield.tap()
        textfield.typeText(text)
    }
    func ClearOutTextField(withIdentifier:String, app:XCUIApplication) {
        app.textFields[withIdentifier].clearText()
    }
    
    func waiterResultWithExpextation(_ element: XCUIElement) -> XCTWaiter.Result {
        let myPredicate = NSPredicate(format: "exists == true")
        let myExpectation = expectation(for: myPredicate, evaluatedWith: element,
                                        handler: nil)
        let result = XCTWaiter().wait(for: [myExpectation], timeout: 3)
        return result
    }
    func WaitforAlertAndTapOK(text:String,app:XCUIApplication) -> XCTWaiter.Result
    {
        let alert = app.alerts[text]
        _ = waiterResultWithExpextation(alert)
        app.buttons["OK"].tap()
        return  waiterResultWithExpextation(alert)
    }
    
    
}
