//
//  auth.swift
//  Giv
//
//  Created by Akash Kejriwal on 12/7/16.
//  Copyright © 2016 Akash Kejriwal. All rights reserved.
//

import Foundation
import Alamofire


class Auth {
    
    var jwt = ""
    
    func fetchData() {
        
        let urlString = "http://128.237.162.142:3000/api/auth/login"
        
        let parameters: Parameters = [
            "email": "ranika@kejriwal.com",
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
                                    }
