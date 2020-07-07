//
//  LoginTests.swift
//  UIUnitTestingDemoUITests
//
//  Created by Rakesh Kumar on 8/31/18.
//  Copyright © 2018 Seasia. All rights reserved.
//

import XCTest

class LoginTests: BaseTests {
    static var app:XCUIApplication!
    static var launched = false

    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
      LoginTests.app = XCUIApplication()
        continueAfterFailure = false
        if (!LoginTests.launched) {
        LoginTests.launched = true
          LoginTests.app.launch()
 }
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test01BlankUserNamePassword()
    {
        TapLoginButton()
       _ = WaitForAlert(text: "Username cannot be empty")
    }
    func test02BlankPassword()
    {
        FillInUserName()
        TapLoginButton()
        _ = WaitForAlert(text: "Password cannot be empty")
    }
    func test03InCorrectUserName()
    {
        clearOutUsernameAndPasswordFields()
        FillInUserName()
        FillInCorrectPassword()
        TapLoginButton()
        _ = WaitForAlert(text: "Username or password is incorrect")
    }
    func test04InCorrectPassword()
    {
        clearOutUsernameAndPasswordFields()
        FillInCorrectUserName()
        FillInPassword()
        TapLoginButton()
        _ = WaitForAlert(text: "Username or password is incorrect")

    }
//        func test05CorrectUserNamePaswword()
//    {
//        clearOutUsernameAndPasswordFields()
//        FillInCorrectUserName()
//        FillInCorrectPassword()
//              //  DisableKeyboard(withIdentifier: "Next")
//        TapLoginButton()
//      let textfield = LoginTests.app.textFields["Home_TextField"]
//        _ = waiterResultWithExpextation(textfield)
//        textfield.tap()
//        textfield.typeText("WELCOME TO HOME")
//    }
    
}
