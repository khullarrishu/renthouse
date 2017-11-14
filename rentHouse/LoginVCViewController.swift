//
//  LoginVCViewController.swift
//  rentHouse
//
//  Created by Lavpreet Kaur on 2017-11-05.
//  Copyright © 2017 RishuKhullar. All rights reserved.
//

import UIKit

class LoginVCViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func alertError(){
        let alert = UIAlertController(title: "Error", message:"Username Or Password is incorrect", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func signin(_ sender: UIButton) {
        let usrname = username.text
        let usrpass = password.text
        if(usrNames.contains(usrname!)){
            let index = usrNames.index(of: usrname!)
            
            if(passWords[index!] == usrpass!){
                islog[index!] = true
                self.performSegue(withIdentifier: "gotoMain", sender: self)
            }else{
                alertError()
            }
        }else{
            alertError()
        }
        
        /*
        let userNameStored = UserDefaults.standard.string(forKey: "userName")
        let userPassStored = UserDefaults.standard.string(forKey: "Password")
        
        if (usrname == userNameStored) {
            if(usrpass == userPassStored){
                UserDefaults.standard.set(true, forKey: "IsLoggedin")
                UserDefaults.standard.synchronize()
                self.performSegue(withIdentifier: "gotoMain", sender: self)
            }
        }else{
            let alert = UIAlertController(title: "Error", message:"Username Or Password is incorrect", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }*/
    }
    
    @IBAction func goSignup(_ sender: UIButton) {
        self.performSegue(withIdentifier: "show_signup", sender: self)
    }

}
