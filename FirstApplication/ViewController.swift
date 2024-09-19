//
//  ViewController.swift
//  FirstApplication
//
//  Created by Vishal Jagtap on 18/09/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loginPageUI()
    }
    
    
    func loginPageUI(){
        
        let cgRectForLabel = CGRect(x: 100,
                                    y: 100,
                                    width: 200,
                                    height: 40)
        
        let welcomeLabel = UILabel(frame: cgRectForLabel)
        welcomeLabel.backgroundColor = .cyan
        welcomeLabel.textColor = .red
        welcomeLabel.textAlignment = .center
        welcomeLabel.font = .systemFont(ofSize: 20.0, weight: .bold)
        welcomeLabel.text = "Welcome To Bitcode"
        
        
        self.view.addSubview(welcomeLabel)
        
        
        let cgRectForUsernameTextField = CGRect(x: 100,
                                                y: 160,
                                                width: 200,
                                                height: 40)
        
        let usernameTextField = UITextField(frame: cgRectForUsernameTextField)
        usernameTextField.placeholder = "Enter username"
        usernameTextField.font = .systemFont(ofSize: 20.0, weight: .semibold)
        usernameTextField.textColor = .brown
        usernameTextField.textAlignment = .center
        usernameTextField.borderStyle = .roundedRect
        
        self.view.addSubview(usernameTextField)
        
        let cgRectForPasswordTextField = CGRect(x: 100,
                                                y: 220,
                                                width: 200,
                                                height: 40)
        
        let passwordTextField = UITextField(frame: cgRectForPasswordTextField)
        passwordTextField.placeholder = "Enter Password"
        passwordTextField.font = .systemFont(ofSize: 20.0, weight: .bold)
        passwordTextField.textColor = .pink
        passwordTextField.borderStyle = .line
        passwordTextField.textAlignment = .justified
        
        self.view.addSubview(passwordTextField)
        
        let cgRectButton = CGRect(x: 100,
                                  y: 280,
                                  width: 200,
                                  height: 40)
        
        let btnLogin = UIButton(frame: cgRectButton)
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.setTitleColor(.black, for: .normal)
        btnLogin.backgroundColor = UIColor(named: "PinkColor")
        
        self.view.addSubview(btnLogin)
    }
}
