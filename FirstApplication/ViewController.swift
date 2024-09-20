//
//  ViewController.swift
//  FirstApplication
//
//  Created by Vishal Jagtap on 18/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    
    //creating UI through code
    var welcomeLabel : UILabel?
    var usernameTextField : UITextField?
    var passwordTextField : UITextField?
    var btnLogin : UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        loginPageUI()
    }
    
    func loginPageUI(){
        let cgRectForLabel = CGRect(x: 100,
                                    y: 100,
                                    width: 200,
                                    height: 40)
        
        welcomeLabel = UILabel(frame: cgRectForLabel)
        welcomeLabel!.backgroundColor = .cyan
        welcomeLabel!.textColor = .red
        welcomeLabel!.textAlignment = .center
        welcomeLabel!.font = .systemFont(ofSize: 20.0, weight: .bold)
        welcomeLabel!.text = "Welcome To Bitcode"
        
        self.view.addSubview(welcomeLabel!)
        
        let cgRectForUsernameTextField = CGRect(x: 100,
                                                y: 160,
                                                width: 200,
                                                height: 40)
        
        usernameTextField = UITextField(frame: cgRectForUsernameTextField)
        usernameTextField!.placeholder = "Enter username"
        usernameTextField!.font = .systemFont(ofSize: 20.0, weight: .semibold)
        usernameTextField!.textColor = .brown
        usernameTextField!.textAlignment = .center
        usernameTextField!.borderStyle = .roundedRect
        
        self.view.addSubview(usernameTextField!)
        
        let cgRectForPasswordTextField = CGRect(x: 100,
                                                y: 220,
                                                width: 200,
                                                height: 40)
        
        passwordTextField = UITextField(frame: cgRectForPasswordTextField)
        passwordTextField!.placeholder = "Enter Password"
        passwordTextField!.font = .systemFont(ofSize: 20.0, weight: .bold)
        passwordTextField!.textColor = .pink
        passwordTextField!.borderStyle = .line
        passwordTextField!.textAlignment = .justified
        
        self.view.addSubview(passwordTextField!)
        
        let cgRectButton = CGRect(x: 100,
                                  y: 280,
                                  width: 200,
                                  height: 40)
    
        btnLogin = UIButton(frame: cgRectButton)
        btnLogin!.setTitle("Login", for: .normal)
        btnLogin!.setTitleColor(.black, for: .normal)
        btnLogin!.backgroundColor = UIColor(named: "PinkColor")
        
        //Way 1 --> of adding action on button click by objective-C syntax
        btnLogin!.addTarget(self,
                           action: #selector(btnLoginClicked),
                           for: .touchUpInside)
        
        self.view.addSubview(btnLogin!)
    }
    
    @objc func btnLoginClicked(){
        self.welcomeLabel!.text = "Welcome To " + (usernameTextField?.text)!
    }
}
