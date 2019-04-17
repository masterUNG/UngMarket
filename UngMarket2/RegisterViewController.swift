//
//  RegisterViewController.swift
//  UngMarket2
//
//  Created by MasterUNG on 16/4/2562 BE.
//  Copyright © 2562 MasterUNG. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    
    @IBOutlet weak var userTextFleld: UITextField!
    
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }   // Main Method
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "BackToAuthen", sender: nil)
    }
    
    
    
    
    @IBAction func uploadButton(_ sender: UIBarButtonItem) {
        
        print("You Click Upload")
        
//        Get Value From TextField
        let name = nameTextField.text!
        let user = userTextFleld.text!
        let password = passwordTextField.text!
        
//        Show Message on Console
        print("name ==>> \(name)")
        print("user ==>> \(user)")
        print("password ==> \(password)")
        
//        Check Space
        if ((name.count == 0) || (user.count == 0) || (password.count == 0)) {
            print("Have Space")
        } else {
            print("No Space")
        }
        
        
        
        
        
        
        
    }
    
    


}   // Main Class
