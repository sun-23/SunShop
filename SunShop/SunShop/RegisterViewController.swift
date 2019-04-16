//
//  RegisterViewController.swift
//  SunShop
//
//  Created by Chana on 16/4/2562 BE.
//  Copyright © 2562 Sun. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }//Main Method
    
    
    
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "BackToAuthen", sender: nil)
        
    }
    

    @IBAction func uploadButton(_ sender: UIBarButtonItem) {
    }
    
    

}// Main Class
