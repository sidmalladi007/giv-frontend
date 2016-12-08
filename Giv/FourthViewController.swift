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
    
    
    var jwt_token_key = "jwt_token"
    var dataManager = DataManager()
    
    @IBAction func saveJTW(_ sender: AnyObject) {
//        dataManager.saveJTW()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        dataManager.loadJTW()
        
        
        //        auth.fetchData()
        
        
//        if let plist = Plist(name: "MyData") {
//            //2
//            let dict = plist.getMutablePlistFile()!
//            dict[jwt_token_key] = "akash"
//            //3
//            do {
//                try plist.addValuesToPlistFile(dictionary: dict)
//            } catch {
//                print(error)
//            }
//            //4
//            print(plist.getValuesInPlistFile())
//        } else {
//            print("Unable to get Plist")
//        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
