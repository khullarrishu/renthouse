//
//  homePageViewController.swift
//  rentHouse
//
//  Created by Lavpreet Kaur on 2017-11-05.
//  Copyright © 2017 RishuKhullar. All rights reserved.
//

import UIKit

class homePageViewController: UIViewController {
    
    
    
    let logIndex = islog.index(of: true)
    @IBOutlet weak var userLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logout(_ sender: UIButton) {
        let index = islog.index(of: true)
        islog[index!] = false
        self.performSegue(withIdentifier: "login_back", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if (!islog.contains(true)) {
            self.performSegue(withIdentifier: "login_back", sender: self)
        }else{
            userLabel.text = usrNames[logIndex!]
        }
    }
    
    

    

}
