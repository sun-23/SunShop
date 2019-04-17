//
//  RegisterViewController.swift
//  SunShop
//
//  Created by Chana on 16/4/2562 BE.
//  Copyright © 2562 Sun. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }//Main Method
    
    
    
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "BackToAuthen", sender: nil)
        
    }
    

    @IBAction func uploadButton(_ sender: UIBarButtonItem) {
        
        print("You Click Upload")
        
        //Get Value From TextField
        let name = nameTextField.text!
        let user = userTextField.text!
        let password = passwordTextField.text!
        
        //Show Message on Console
        print("name ==>> \(name)")
        print("user ==>> \(user)")
        print("password ==>> \(password)")
        
        //Check Space
        
        if ((name.count == 0) || (user.count == 0) || (password.count == 0)) {
            print("Have Space")
            myAlert(titleString: "คุนไม่ได้ใส่ข้อความให้ครบ", messageString: "ช่วยใส่ให้ครบด้วยครับ")
        } else {
            print("No Space")
            
        }
        

        
        
    } // uploadButton
    
    
    // myAlert is Void type Function คือเมธอด ที่ทำงานแล้วไม่คืนค่ากลับมา
    func myAlert(titleString:String, messageString:String) -> Void
    {
        //Create Alert Object
        let objAlert = UIAlertController(title: titleString, message: messageString
            , preferredStyle: UIAlertController.Style.alert)
        
        //Create Button on Alert
        objAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            objAlert.dismiss(animated: true
                , completion: nil)
        }))
        
        present(objAlert,animated: true,completion: nil)
        
        
    }
    
    

}// Main Class
