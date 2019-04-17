//
//  ViewController.swift
//  UngMarket2
//
//  Created by MasterUNG on 16/4/2562 BE.
//  Copyright © 2562 MasterUNG. All rights reserved.
//

import UIKit

//Hot to Hide Keyboard by Impliment UITextFieldDelegate
class ViewController: UIViewController, UITextFieldDelegate {
    
    let titleHaveSpace: String = "มีช่องว่าง"
    let messageHaveSpace: String = "กรุณากรอกทุกช่อง คะ"
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userTextField.delegate = self
        self.passwordTextField.delegate = self
        
        
        // Do any additional setup after loading the view.
    }   // Main Method
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        let user = userTextField.text!
        let password = passwordTextField.text!
        
        if ((user.count == 0) || (password.count == 0)) {
            myAlert(title: titleHaveSpace, message: messageHaveSpace)
        }   else {
            checkUserAndPass(user: user, password: password)
        }
        
    }   // loginButton
    
    func checkUserAndPass(user: String, password: String) -> Void {
        
        let urlString: String = "https://www.androidthai.in.th/ssm/getUserWhereUserMaster.php?isAdd=true&User=\(user)"
        
        guard let url = URL(string: urlString) else {
            print("Have Error")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let dataResponse = data, error == nil else {
                return
            }
            
            do {
                
                let jsonResponse = try JSONSerialization.jsonObject(with: dataResponse, options: [])
                print("jsonResponse ==> \(jsonResponse)")
                
                guard let jsonArray = jsonResponse as? [[String: Any]] else {return}
                print("jsonArray ==> \(jsonArray)")
                
                let jsonDictionary: Dictionary = jsonArray[0]
                
                let truePassword: String = jsonDictionary["Password"] as! String
                print("truePassword ==> \(truePassword)")
                
                if password == truePassword {
                    print("Welcome to App")
                    DispatchQueue.main.async {
                        self.myAlert(title: "Authen True", message: "Welcome to my App")
                    }
                } else {
                    DispatchQueue.main.async {
                        self.myAlert(title: "Password False", message: "Please Try Again")
                    }
                }
                
                
            } catch let myError {
                DispatchQueue.main.async {
                    print(myError)
                    self.myAlert(title: "User False", message: "No \(user) in my Database")
                }
            }
            
        }   // end task
        task.resume()
        
        
        
        
    }   // checkUserAndPass
    
    
    
    
    func myAlert(title: String, message: String) -> Void {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
    
    @IBAction func registerButton(_ sender: UIButton) {
        
        print("You Click Register")
        performSegue(withIdentifier: "GoToRegister", sender: nil)
        
    }   // registerButton
    
    
    


}   // Main Class

