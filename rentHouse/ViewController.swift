//
//  ViewController.swift
//  rentHouse
//
//  Created by Rishu Khullar on 2017-10-27.
//  Copyright © 2017 RishuKhullar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goTOLogin(_ sender: Any) {
        self.performSegue(withIdentifier: "home_login", sender: self)
    }
    
    @IBAction func goToSignup(_ sender: Any) {
        self.performSegue(withIdentifier: "home_signup", sender: self)
    }
    
    
    
}

