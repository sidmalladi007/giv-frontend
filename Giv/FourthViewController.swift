//
//  ThirdViewController.swift
//  Giv
//
//  Created by Akash Kejriwal on 12/4/16.
//  Copyright © 2016 Akash Kejriwal. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    let auth = Auth()
    let jwt_token = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jwt_token = auth.fetchData()
        
        auth.showUserInfo(jwt_token)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
