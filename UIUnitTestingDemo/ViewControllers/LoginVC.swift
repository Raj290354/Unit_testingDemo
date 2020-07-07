//
//  LoginVC.swift
//  TestingDemo
//
//  Created by Rakesh Kumar on 8/30/18.
//  Copyright © 2018 Seasia. All rights reserved.
//

import UIKit

class LoginVC: UIViewController
{
    //MARK: -  Outlets
    @IBOutlet var btnLogin: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    lazy var homeVC : HomeVC = {
        let viewController = UIStoryboard.initializeViewController(HomeVC.self)
        return viewController
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
//        usernameTextField.accessibilityIdentifier = "LoginVC_Username"
//        passwordTextField.accessibilityIdentifier = "LoginVC_Password"
//        usernameTextField.accessibilityLabel = "LoginVC_Username"
//        passwordTextField.accessibilityLabel = "LoginVC_Password"
       // btnLogin.accessibilityLabel = "Login"
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - IBActions
    @IBAction func onTapLoginButton(_ sender: AnyObject) {
        guard let username = usernameTextField.text , username.count > 0 else {
            showErrorAlertWithMessage("Username cannot be empty")
            return
        }
        guard let password = passwordTextField.text , password.count > 0 else {
            showErrorAlertWithMessage("Password cannot be empty")
            return
        }
        guard username == "Rakesh" && password == "Seasia@123" else {
            showErrorAlertWithMessage("Username or password is incorrect")
            return
        }
        navigationController?.pushViewController(homeVC, animated: true)
    }
    
}
