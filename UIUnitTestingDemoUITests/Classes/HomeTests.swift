//
//  HomeTests.swift
//  UIUnitTestingDemoUITests
//
//  Created by Rakesh Kumar on 11/30/18.
//  Copyright © 2018 Seasia. All rights reserved.
//

import XCTest

class HomeTests: BaseTests {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
      LoginTests.app = XCUIApplication()
      continueAfterFailure = false
      if (!LoginTests.launched) {
        LoginTests.launched = true
        LoginTests.app.launch()
      }
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
  func testCorrectUserNamePaswword()
  {
    FillInTextField(withIdentifier: "LoginVC_Username", text: "Rakesh",app:LoginTests.app )
    FillInTextField(withIdentifier: "LoginVC_Password", text: "Seasia@123",app:LoginTests.app )
    TapButton(withIdentifier: "Login", app: LoginTests.app )
    let textfield = LoginTests.app.textFields["Home_TextField"]
    _ = waiterResultWithExpextation(textfield)
    textfield.tap()
    textfield.typeText("WELCOME TO HOME")
  }
    
}
