//
//  XCUIElement+Extension.swift
//  UIUnitTestingDemoUITests
//
//  Created by Rakesh Kumar on 8/31/18.
//  Copyright © 2018 Seasia. All rights reserved.
//

import Foundation
import XCTest

extension XCUIElement {
    func clearText(andReplaceWith newText:String? = nil) {
        tap()
        tap() //When there is some text, its parts can be selected on the first tap, the second tap clears the selection
        press(forDuration: 1.0)
        let selectAll = XCUIApplication().menuItems["Select All"]
        //For empty fields there will be no "Select All", so we need to check
        if selectAll.waitForExistence(timeout: 0.5), selectAll.exists {
            selectAll.tap()
            typeText(String(XCUIKeyboardKey.delete.rawValue))
        }
        //if let newVal = newText { typeText(newVal) }
    }
}
