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
    let reuseIdentifierForHomeViewController = "HomeViewController"
    let reuseIdentifierForThirdViewController = "ThirdViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad method of ViewController is called")
        loginPageUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear method of ViewController is called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear method of ViewController is called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear method of ViewCOntroller is called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappeaar method of ViewComtroller is called")
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
        let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifierForHomeViewController) as! HomeViewController
        
        homeViewController.container = self.usernameTextField?.text
        
        //you can present a viewController without pushing it on navigation stack
//        let thirdViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifierForThirdViewController) as! ThirdViewController
//        self.navigationController?.present(thirdViewController, animated: true)
        
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
}
