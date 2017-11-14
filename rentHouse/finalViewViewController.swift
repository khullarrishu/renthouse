//
//  finalViewViewController.swift
//  rentHouse
//
//  Created by Rishu Khullar on 2017-11-10.
//  Copyright © 2017 RishuKhullar. All rights reserved.
//

import UIKit

class finalViewViewController: UIViewController {
    var FinalAmount = 0.00
    @IBOutlet weak var amount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        amount.text = String(FinalAmount)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
