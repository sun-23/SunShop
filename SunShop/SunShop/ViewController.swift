//
//  ViewController.swift
//  SunShop
//
//  Created by Chana on 16/4/2562 BE.
//  Copyright © 2562 Sun. All rights reserved.
//

import UIKit
// How to hide keyboard by impliment UITextFieldDelegate
class ViewController: UIViewController,UITextFieldDelegate {
    
    let titleHaveSpace:String="มีช่องว่าง"
    let messageHaveSpace:String = "กรุณากรอกทุกช่อง ครับ"
    
    
    
    @IBOutlet weak var UserTextField: UITextField!
    
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //hide keyboard
        self.UserTextField.delegate = self as! UITextFieldDelegate
        self.PasswordTextField.delegate = self as! UITextFieldDelegate
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }// Main Method
    
    // hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        let user = UserTextField.text!
        let password = PasswordTextField.text!
        if ((user.count==0) || (password.count==0)) {
            myAlert(title: titleHaveSpace, message: messageHaveSpace)
        } else {
           checkUserAndPass(user: user, password: password)
        }
        
        
        
        
    }// loginButton
    
    func checkUserAndPass(user:String,password:String) -> Void {
      
        let urlString:String = "https://www.androidthai.in.th/ssm/getUserWhereUserSun.php?isAdd=true&User=\(user)"
        
        guard let url = URL(string: urlString) else {
            print("Have Error")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let dataResponse = data,error == nil else{
                return
            }
            
            do {
                
                let jsonResponse = try JSONSerialization.jsonObject(with: dataResponse, options: [])
                
                print("jsonResponse ==>\(jsonResponse)")
                
                guard let jsonArray = jsonResponse as? [[String:Any]] else{return}
                
                print("jsonArray ==> \(jsonArray)")
                
                
                let jsonDictionary:Dictionary = jsonArray[0]
                
                let truePassword:String = jsonDictionary["Password"] as! String
                print("true password ==>>\(truePassword)")
                
                if password == truePassword {
                    print("Welcome to app")
                    
                } else{
                    self.myAlert(title: "Password False", message: "Plese Try Again")
                }
                
                
                
            } catch let myError {
                DispatchQueue.main.async {
                    print(myError)
                    self.myAlert(title: "User False", message: "No \(user)in my Database")
                }
            }
            
        }// end task
        
        task.resume()
        
        
        
        
        
    }// CheckUserAndPass
    
    
    func myAlert(title:String,message:String) -> Void {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        present(alert,animated: true, completion: nil)
        
    }
    
    
    
    
    
    @IBAction func registerButton(_ sender: UIButton) {
        
        print("You Click Register")
        performSegue(withIdentifier: "GoToRegister", sender: nil)
        
    }// registerButton
    

}// Main Class

