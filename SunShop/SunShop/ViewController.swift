//
//  ViewController.swift
//  SunShop
//
//  Created by Chana on 16/4/2562 BE.
//  Copyright © 2562 Sun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }// Main Method
    
    
    
    
    
    @IBAction func registerButton(_ sender: UIButton) {
        
        print("You Click Register")
        performSegue(withIdentifier: "GoToRegister", sender: nil)
        
    }// registerButton
    

}// Main Class

