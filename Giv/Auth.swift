//
//  auth.swift
//  Giv
//
//  Created by Akash Kejriwal on 12/7/16.
//  Copyright © 2016 Akash Kejriwal. All rights reserved.
//

import Foundation
import Alamofire
//import SwiftyJSON

class Auth {
    
    var dataManager = DataManager()
    var jwt_token = ""
    
    func createUser(first_name: String, last_name:String, email:String, password:String, role:String ) {
        let urlString = "http://128.237.165.19:3000/api/auth/register"
        
        let parameters: Parameters = [
            "email": email,
            "password": password,
            "firstName": first_name,
            "lastName" : last_name,
            "role" : role
        ]
        
        Alamofire.request(urlString, method: .post, parameters: parameters, encoding: URLEncoding.default).responseJSON { response in
            if let JSON = response.result.value {
                let JSONResponse = JSON as! NSDictionary
                    let token = JSONResponse["token"]!
                    self.jwt_token = token as! String
                    print(self.jwt_token)
                    print("jwt_token")
                    }
                }
            }

    func getUserTransactions() {
        
        let urlString = ""
        
        let headers: HTTPHeaders = [
            "Authorization": global_jwt,
            "Accept": "application/json"
        ]
        
        Alamofire.request(urlString, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers).responseJSON { response in
            if let JSON = response.result.value {
                let JSONResponse = JSON as! NSDictionary
            }
        }
        
    }

}
