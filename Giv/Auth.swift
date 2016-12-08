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
    
    func fetchData() -> Any {
        
        let urlString = "http://128.237.162.142:3000/api/auth/login"
        
        let parameters: Parameters = [
            "email": "vikas@kejriwal.com",
            "password": "test",
            ]
        
        Alamofire.request(urlString, method: .post, parameters: parameters, encoding: URLEncoding.default).response { response in
            if let error = response.error {
                print("Error fetching repositories: \(error)")
                completion(response.data)
                return
            }
            completion(response.data)
        }

        Alamofire.request(.POST, "http://myserver.com", parameters: parameters, encoding: .JSON)
.responseJSON { request, response, JSON, error in
                        print(response)
                        print(JSON)
                        print(error)
                    }
    
        
        
//        responseJSON { response in
//            print(response.request)  // original URL request
//            print(response.response) // HTTP URL response
//            print(response.data)     // server data
//            print(response.result)   // result of response serialization
//            print("response jwt token")
            
//           let JSON = response.result
//           return JSON
//            
//
//        }
        
//        func showUserInfo(jwt_token: String) {
//            
//            let urlString = "http://128.237.162.142:3000/api/showuserinfo"
//            
//            let headers: HTTPHeaders = [
//                "Authorization": jwt_token,
//                "Accept": "application/json"
//            ]
//
//            let parameters: Parameters = [
//                "email": "vikas@kejriwal.com",
//                "password": "test"
//                ]
//            
//            Alamofire.request(urlString, parameters: parameters, headers: headers, encoding: URLEncoding.default).responseJSON { response in
//                print(response.request)  // original URL request
//                print(response.response) // HTTP URL response
//                print(response.data)     // server data
//                print(response.result)   // result of response serialization
//           
//                if let JSON = response.result.value {
//                    print("JSON: \(JSON)")
//                }
//                
//                print(JSON)
//                
//                
//            }
        
    
        
//        let urlString = "http://128.237.162.142:3000/api/auth/register"
//        
//        let parameters: Parameters = [
//            "email": "vikas@kejriwal.com",
//            "password": "test",
//            "firstName": "Akash",
//            "lastName" : "Kejriwal"
//        ]
//
//        Alamofire.request(urlString, method: .post, parameters: parameters, encoding: URLEncoding.default).responseJSON { response in
//            print(response.request)  // original URL request
//            print(response.response) // HTTP URL response
//            print(response.data)     // server data
//            print(response.result)   // result of response serialization
//            print("response jwt token")
////            print(response.result.token)
//            
//            if let JSON = response.result.value {
//                print("JSON: \(JSON)")
//            }
//        }
    
    }
