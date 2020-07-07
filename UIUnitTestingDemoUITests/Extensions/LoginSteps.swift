//
//  LoginSteps.swift
//  UIUnitTestingDemoUITests
//
//  Created by Rakesh Kumar on 8/31/18.
//  Copyright © 2018 Seasia. All rights reserved.
//

import Foundation
import XCTest
extension LoginTests
{
    func FillInUserName()
    {
      FillInTextField(withIdentifier: "LoginVC_Username", text: "Raj",app:LoginTests.app)
    }
    func FillInPassword()
    {                                                                                                                        
        FillInTextField(withIdentifier:"LoginVC_Password", text: "seasia",app:LoginTests.app)
    }
    func FillInCorrectUserName()
    {
        FillInTextField(withIdentifier: "LoginVC_Username", text: "Rakesh",app:LoginTests.app)
    }
    func FillInCorrectPassword()
    {
        FillInTextField(withIdentifier: "LoginVC_Password", text: "Seasia@123",app:LoginTests.app)
    }
    func TapLoginButton()
    {
        TapButton(withIdentifier: "Login", app: LoginTests.app)
    }
    func WaitForAlert(text Value: String) -> XCTWaiter.Result
    {
       let result = WaitforAlertAndTapOK(text:Value , app: LoginTests.app)
        return result
    }
   
    
    func DisableKeyboard(withIdentifier:String) {
         LoginTests.app.buttons[withIdentifier].tap()
    }
    func clearOutUsernameAndPasswordFields()
    {
        ClearOutTextField(withIdentifier: "LoginVC_Username",app:LoginTests.app)
        ClearOutTextField(withIdentifier: "LoginVC_Password",app:LoginTests.app)
    }
 
}

