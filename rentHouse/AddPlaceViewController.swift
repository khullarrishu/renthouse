//
//  AddPlaceViewController.swift
//  rentHouse
//
//  Created by Lavpreet Kaur on 2017-11-07.
//  Copyright © 2017 RishuKhullar. All rights reserved.
//

import UIKit
var addressMain = ["1 Infinite Loop, Cupertino, CA 95014", "35 Northgate drive North York, ON, M3k1R3"]
var priceMain = [22.22, 32.22]
var contactMain = ["123454342", "123454342"]




class AddPlaceViewController: UIViewController {

    @IBOutlet weak var contact: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var address: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func displayAlert(title:String, Msg: String){
        let alert = UIAlertController(title: title, message:Msg, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func addPlace(_ sender: UIButton) {
        
        let addrs = address.text
        let pric = price.text
        let phone = contact.text
        
        if((addrs?.isEmpty)! && (pric?.isEmpty)! && (phone?.isEmpty)!){
            displayAlert(title:"Error" ,Msg: "Fill all fields")
        }else{

            
            addressMain.append(addrs!)
            priceMain.append(Double(pric!)!)
            contactMain.append(phone!)
            let alert = UIAlertController(title: "Success", message:"House Added successfully", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {_ in self.performSegue(withIdentifier: "backHome", sender: self)}))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}
