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
    
    func fetchData() {
        
        print("hit in fetchdata")
        
        
        let urlString = "http://128.237.162.142:3000/api/auth/register"
        let parameters: Parameters = [
            "email": "vasd@kejriwal.com",
            "password": "test",
            "firstName": "Ranika",
            "lastName" : "Kejriwal"
        ]
        
        Alamofire.request(urlString, method: .post, parameters: parameters, encoding: URLEncoding.default).responseJSON { response in
            if let JSON = response.result.value {
                let JSONResponse = JSON as! NSDictionary
                    let token = JSONResponse["token"]!
                    print(token)
                    }
                }
            }

        // return JSON response
    func getUserTransactions() {
        
        let urlString = ""
        
        let headers: HTTPHeaders = [
            "Authorization": jwt_token,
            "Accept": "application/json"
        ]
        
        Alamofire.request(urlString, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers).responseJSON { response in
            if let JSON = response.result.value {
                let JSONResponse = JSON as! NSDictionary
            }
        }
        
    }

}
