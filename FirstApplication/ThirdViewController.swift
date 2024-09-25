//
//  ThirdViewController.swift
//  FirstApplication
//
//  Created by Vishal Jagtap on 23/09/24.
//

import UIKit

class ThirdViewController: UIViewController, MathematicalOperations{
    
    //conforming to MathematicalOperations Protocol
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLogin.setTitle("Login", for: .normal)
    }
    
    @IBAction func btnLoginClick(_ sender: Any) {
        if ((usernameTextField.text == "bitcode") && (passwordTextField.text == "bitcode@1234")){
            self.welcomeLabel.text = "Welcome  " + usernameTextField.text!
            print("Login Success!")
        } else {
            print("Login Failed!")
        }
    }
    
    func addition(n1: Int, n2: Int) {
        print(n1 + n2)
    }
    
    func subtraction(n1: Int, n2: Int) {
        print(n1 - n2)
    }
    
    func multiplication() {
        var n : Int = 10
        var m : Int = 14
        print(n * m)
    }
    
    func division() {
        var x : Int = 9
        var y : Int = 10
        print(x / y)
    }
}
