//
//  RegisterViewController.swift
//  UngMarket2
//
//  Created by MasterUNG on 16/4/2562 BE.
//  Copyright © 2562 MasterUNG. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }   // Main Method
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "BackToAuthen", sender: nil)
        
    }
    
    
    
    
    @IBAction func uploadButton(_ sender: UIBarButtonItem) {
    }
    
    


}   // Main Class
