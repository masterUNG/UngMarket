//
//  ViewController.swift
//  UngMarket2
//
//  Created by MasterUNG on 16/4/2562 BE.
//  Copyright © 2562 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }   // Main Method
    
    
    
    @IBAction func registerButton(_ sender: UIButton) {
        
        print("You Click Register")
        performSegue(withIdentifier: "GoToRegister", sender: nil)
        
    }   // registerButton
    
    
    


}   // Main Class

