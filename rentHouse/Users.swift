//
//  Users.swift
//  rentHouse
//
//  Created by Lavpreet Kaur on 2017-11-04.
//  Copyright © 2017 RishuKhullar. All rights reserved.
//

import Foundation

class User : NSObject{
    var firstname:String
    var lastname:String
    var password:String
    var username:String
    var isLogedIn:Bool
    
    override init() {
        firstname = ""
        lastname = ""
        password = ""
        username = ""
        isLogedIn = false
    }
    func getUsername(usrN : String) -> Bool {
        let rep = username.contains(usrN)
        return rep
    }
    func getPassword() -> String{
        return password
    }
}
