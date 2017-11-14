//
//  SignupVCViewController.swift
//  rentHouse
//
//  Created by Lavpreet Kaur on 2017-11-05.
//  Copyright © 2017 RishuKhullar. All rights reserved.
//

import UIKit
var usrNames = ["rishukhullar",""]
var passWords = ["1234",""]
var islog = [false, false]
class SignupVCViewController: UIViewController {
    @IBOutlet weak var firstname: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmpassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var addUser = [User]()

    @IBAction func signup(_ sender: UIButton) {
        let fName = firstname.text
        let lName = lastname.text
        let userName = username.text
        let pass = password.text
        let confirmPass = confirmpassword.text
        let prUser = User()
        if ((fName?.isEmpty)! || (lName?.isEmpty)! || (userName?.isEmpty)! || (pass?.isEmpty)! || (confirmPass?.isEmpty)!){
            displayAlert(Msg: "All Fields must be filed")
        }else if (pass != confirmPass) {
            displayAlert(Msg: "Password did not match")
        }else if(getUsername(usrN: userName!)) {
            displayAlert(Msg: "Username already taken")
        }else{
            prUser.firstname = fName!
            prUser.lastname = lName!
            prUser.password = pass!
            prUser.username = userName!
            prUser.isLogedIn = false
            addUser.append(prUser)
            usrNames.append(userName!)
            passWords.append(pass!)
            islog.append(false)
            
            print("sdfsdfsdf \(addUser.count)")
            let alert = UIAlertController(title: "Success", message:"You have registered successfully", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {_ in self.performSegue(withIdentifier: "show_login", sender: self)}))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
    }
    func getUsername(usrN : String) -> Bool {
        let rep = usrNames.contains( usrN )
        print(usrNames)
        print(usrN)
        print(rep)
        return rep
    }
    
    func displayAlert(Msg: String){
        let alert = UIAlertController(title: "Error", message:Msg, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func goLogin(_ sender: UIButton) {
        self.performSegue(withIdentifier: "show_login", sender: self)
    }
    

}
