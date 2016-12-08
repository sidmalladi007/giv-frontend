//
//  ThirdViewController.swift
//  Giv
//
//  Created by Akash Kejriwal on 12/4/16.
//  Copyright © 2016 Akash Kejriwal. All rights reserved.
//

import UIKit
import Alamofire

class FourthViewController: UIViewController {
    
    let auth = Auth()
    var jwt = ""
    
    
    override func viewDidLoad() {
        showUserInfo()
    }
    
    func showUserInfo() {
        
        let urlString = "http://128.237.162.142:3000/api/auth/login"
        
        let parameters: Parameters = [
            "email": "ranika@kejriwal.com",
            "password": "test",
            "firstName": "Ranika",
            "lastName" : "Kejriwal"
        ]
        
        Alamofire.request(urlString, method: .post, parameters: parameters, encoding: URLEncoding.default).responseString {
            (AlamofireResponse) in print(AlamofireResponse.result.value!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
