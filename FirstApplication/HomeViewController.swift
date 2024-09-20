//
//  HomeViewController.swift
//  FirstApplication
//
//  Created by Vishal Jagtap on 18/09/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeMessageLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLogin.setTitle("Login", for: .normal)
        self.imageView1.image = UIImage(named: "bitcode_image")
    }
    
    
    @IBAction func btnLoginClick(_ sender: Any) {
        self.welcomeMessageLabel.text = "Welcome To " + usernameTextField.text!
    }
}
