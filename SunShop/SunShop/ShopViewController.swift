//
//  ShopViewController.swift
//  SunShop
//
//  Created by sun on 21/4/2562 BE.
//  Copyright © 2562 Sun. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func LogoutButton(_ sender: UIBarButtonItem) {
        print("You Click Logout")
        performSegue(withIdentifier: "ShopToAuthen", sender: nil)
    }
    

}
