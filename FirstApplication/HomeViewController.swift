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
    var container : String?
    
    override func viewDidLoad() {
        print("viewDidLoad method of HomeViewController is called")
        super.viewDidLoad()
        self.welcomeMessageLabel.text = container!
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.backgroundColor = .lightGray
        self.imageView1.image = UIImage(named: "bitcode_image")
        navigationItem.hidesBackButton = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear method of HomeViewController is called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear method of HomeViewController is called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear method of HomeViewController is called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear method of HomeViewController is called")
    }
    
    override func didReceiveMemoryWarning() {
        print("didReceiveMemoryWarning method called")
    }
    
    @IBAction func btnLoginClick(_ sender: Any) {
        
       
        
//        self.welcomeMessageLabel.text = "Welcome To " + usernameTextField.text!
        navigationController?.popViewController(animated: true)
    }
}
